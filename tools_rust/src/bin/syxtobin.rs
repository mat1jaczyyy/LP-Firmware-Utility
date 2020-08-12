use structopt::StructOpt;
use tools_rust::*;
use std::option::Option;

fn print_vector_error(i: usize, error: &str, v: &Vec<u8>) {
    if v.len() == 0 {
        println!("Runtime error at position {:#08x}: can't expect empty vector {}", i, error);
    } else {
        print!("Parse error at position {:#08x}: expected {} ({:#02x}", i, error, v[0]);
        
        for j in 1..v.len() {
            print!(", {:#02x}", v[j]);
        }
        println!(").");
    }
}

fn verify_uints(i: usize, a: u32, b: u32, error: &str) {
    if a != b {
        panic!("Syntax error at position {:#08x}: mismatching {}.", i, error);
    }
}

struct Converter {
    input: Vec<u8>,
    output: Vec<u8>,
    expected_types: Vec<u8>,
    family: u8,
    target: u8,
    version: u32,
    checksum: u32,
    block: usize
}

impl Converter {
    fn new(input: Vec<u8>) -> Converter {
        Converter {
            input,
            output: vec![],
            expected_types: vec![UPDATE_INIT],
            family: LPX_FAMILY_ID,
            target: LPX_PRODUCT_ID,
            version: 0,
            checksum: 0,
            block: 0,
        }
    }
    
    fn convert(&mut self) -> &Vec<u8> {
        let mut i: usize = 0;
        self.output = Vec::new();
        
        while i < self.input.len() {
            i += self.verify_byte(i, SYSEX_START, "SYSEX_START");
            i += self.verify_byte_array(i, &NOVATION_HEADER.to_vec(), "NOVATION_HEADER");
            i += self.verify_byte_in_array(i, &self.expected_types, "EXPECTED_TYPES");
            
            match self.input[i - 1] {
                UPDATE_INIT => {
                    i += self.verify_byte_in_array(i, &FAMILIES.to_vec(), "LP_FAMILY_ID");
                    self.family = self.input[i - 1];
                    
                    i += self.verify_byte_in_array(i, &get_products(self.family), "LP_PRODUCT_ID");
                    self.target = self.input[i - 1];
                    
                    self.version = self.nibbles_to_u32(&mut i, 6);
                    
                    if self.family == LPX_FAMILY_ID {
                        self.expected_types = vec![UPDATE_HEADER];
                    }
                    else if self.family == LPRGB_FAMILY_ID {
                        self.output.append(&mut vec![0; BLOCK_SIZE_BYTES]);
                        
                        self.block = 1;
                        self.expected_types = vec![UPDATE_WRITE, UPDATE_FINISH];
                    }
                },
                UPDATE_HEADER => {
                    i += 1;
                    
                    verify_uints(i, self.version, self.nibbles_to_u32(&mut i, 6), "VERSION");
                    
                    self.output.append(&mut vec![0; self.nibbles_to_u32(&mut i, 8) as usize]);
                    self.checksum = self.nibbles_to_u32(&mut i, 8);
                    
                    self.block = 1;
                    self.expected_types = vec![UPDATE_WRITE, UPDATE_FINISH];
                },
                UPDATE_FINISH => {
                    self.block = 0;
                    
                    if self.family == LPX_FAMILY_ID { self.expected_types = vec![] }
                    else if self.family == LPRGB_FAMILY_ID { self.expected_types = vec![UPDATE_FOOTER] }
                    
                    self.update_write(&mut i);
                },
                UPDATE_WRITE => self.update_write(&mut i),
                UPDATE_FOOTER => {
                    i += 1;
                    self.verify_byte_array(i, &RGB_FIRMWARE_FOOTER.to_vec(), "RGB_FIRMWARE_FOOTER");
                    
                    self.expected_types = vec![];
                }
                _ => {}
            }
            
            i += self.verify_byte(i, SYSEX_END, "SYSEX_END");
        }
        if self.family == LPX_FAMILY_ID {
            verify_uints(self.input.len(), self.checksum, crc32(&self.output), "CHECKSUM");
        }
        
        &self.output
    }
    
    fn update_write(&mut self, i: &mut usize) {
        if self.family == LPRGB_FAMILY_ID && self.block > 0 {
            self.output.append(&mut vec! [0; BLOCK_SIZE_BYTES]);
        }
        
        for j in 0..BLOCK_SIZE_BITS {
            let shift = 6 - j % 7;
            let target = self.block * BLOCK_SIZE_BYTES + j / 8;
            
            if self.family == LPX_FAMILY_ID && target >= self.output.len() {
                self.expected_types = vec![UPDATE_FINISH];
                break;
            }
            
            if j % 8 == 0 {
                self.output[target] = 0;
            }
            
            self.output[target] |= (self.input[*i + j / 7] & (1 << shift)) >> shift << (7 - j % 8);
        }
        
        self.block += 1;
        *i += BLOCK_SIZE_7BITS;
    }
    
    fn verify_byte(&self, i: usize, value: u8, error: &str) -> usize {
        if self.input[i] != value {
            panic!("Parse error at position {:#08x}: expected {} {:#02x}", i, error, value);
        } 
        1
    }
    
    fn verify_byte_array(&self, i: usize, values: &Vec<u8>, error: &str) -> usize {
        for j in 0..values.len() {
            if self.input[i + j] != values[j] {
                panic!("Parse error at position {:#010x}: expected {}", i, error);
            }
        }
        
        values.len()
    }
    
    fn verify_byte_in_array(&self, i: usize, values: &Vec<u8>, error: &str) -> usize {
        if !values.contains(&self.input[i]) {
            panic!(print_vector_error(i, error, values));
        }
        1
    }
    
    fn nibbles_to_u32(&self, i: &mut usize, length: usize) -> u32 {
        let mut result: u32 = 0;
        
        for _ in 0..length {
            result <<= 0x04;
            result |= (self.input[*i] & 0x0F) as u32;
            *i += 1;
        }
        result
    }
}

#[derive(StructOpt)]
struct Cli {
    path: std::path::PathBuf,
    out: Option<String> 
}

fn main() {
    let args = Cli::from_args();
    
    let mut path = args.path;
    
    let input_syx = match std::fs::read(&path) {
        Ok(vec) => vec,
        Err(_) => panic!("File not found!")
    };
    
    path.set_extension("bin");
    
    let out_path = match args.out {
        Some(s) => s,
        None => path.file_name().unwrap().to_str().unwrap().to_string()
    };
    
    let out_str = out_path.as_str();
    
    let mut converter = Converter::new(input_syx);
    let converted_bin = converter.convert();
    
    match std::fs::write(out_str, converted_bin) {
        Ok(_) =>  println!("Success! Saved to {}", out_str),
        Err(err) => panic!(err)
    }
}