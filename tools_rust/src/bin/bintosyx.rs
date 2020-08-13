use std::path::PathBuf;
use std::convert::TryInto;
use structopt::StructOpt;
use tools_rust::*;

const PRODUCT_FLAGS: [&str; 5] = ["/x", "/minimk3", "/promk3", "/mk2", "/pro"];
const LP_TARGET_ERROR: &str = "Valid flags: /x, /minimk3, /promk3, /mk2, /pro";

pub struct BinToSyx {
    input: Vec<u8>,
    output: Vec<u8>,
    target: u8,
    family: u8,
    version: [u8; 3]
}

impl BinToSyx {
    pub fn new(input: Vec<u8>, target: u8, version: [u8; 3]) -> Self {
        BinToSyx {
            input,
            output: Vec::new(),
            target,
            family: match PRODUCTS_LPRGB.iter().find(|&&t| t == target) {
                Some(_) => LPRGB_FAMILY_ID,
                None => LPX_FAMILY_ID
            },
            version
        }
    }
    
    pub fn convert(&mut self) -> &Vec<u8> {
        let blocks = ceil_div(self.input.len(), BLOCK_SIZE_BYTES);
        
        let mut i: usize = 0;
        
        i += self.create_sysex_start(UPDATE_INIT);
        
        self.output.push(self.family);
        self.output.push(self.target);
        
        self.output.append(&mut vec![0; 3]);
        
        for j in 0..3 {
            self.output.push(self.version[j] & 0xF);
        }
        
        self.output.push(SYSEX_END);
        
        i += 9;

        if self.family == LPX_FAMILY_ID {
            i += self.create_sysex_start(UPDATE_HEADER);
            
            self.output.push((self.target == LPPROMK3_PRODUCT_ID) as u8);
            
            self.output.append(&mut vec![0x30; 3]);
            
            for j in 0..3 {
                self.output.push(0x30 | (self.version[j] & 0xF));
            }
            
            self.output.append(
                &mut uint_to_nibbles(self.input.len() as u32).to_vec()
            );
            self.output.append(
                &mut uint_to_nibbles(crc32(&self.input)).to_vec()
            );
            
            self.output.push(SYSEX_END);
            
            i += 24
        }
        

        for j in 1..blocks {
            self.write_block(&mut i, j, UPDATE_WRITE);
        }
        
        self.write_block(&mut i, 0, UPDATE_FINISH);
        
        if self.family == LPRGB_FAMILY_ID {
            self.create_sysex_start(UPDATE_FOOTER);
            
            self.output.push(0);
            
            self.output.append(&mut RGB_FIRMWARE_FOOTER.to_vec());
            self.output.append(&mut [0; 8].to_vec());
            
            self.output.push(SYSEX_END);
        }
        
        &self.output
    }
    
    fn create_sysex_start(&mut self, t: u8) -> usize {
        self.output.push(SYSEX_START);
        self.output.append(&mut NOVATION_HEADER.to_vec());
        self.output.push(t);
        6
    }
    
    fn write_block(&mut self, i: &mut usize, j: usize, update_type: u8) {
        *i += self.create_sysex_start(update_type);
        
        for k in 0..BLOCK_SIZE_BITS {
            let shift = 7 - k % 8;
            let target = *i + k / 7;
            
            let read = j * BLOCK_SIZE_BYTES + k / 8;

            let bit = match read >= self.input.len() {
                true => 1,
                false => (self.input[read] & (1 << shift)) >> shift,
            };
            
            if k % 7 == 0 {
                self.output.push(0);
            }
            
            self.output[target] |= bit << (6 - k % 7);
        }
    
        self.output.push(SYSEX_END);
        
        *i += BLOCK_SIZE_7BITS + 1;
    }
}

fn version_validate(version: String) -> Result<(), String> {
    let mut bytes = version.as_bytes().to_owned();
    
    if bytes.len() == 3 {
        for i in 0..3 {
            if 0x30 <= bytes[i] && bytes[i] <= 0x39 {
                bytes[i] -= 0x30;
            } else {
                bytes[i] &= 0xDF;
                if 0x41 <= bytes[i] && bytes[i] <= 0x46 {
                    bytes[i] -= 0x37;
                } else {
                    return Err(String::from("Invalid version specified"))
                }
            }
        };
        Ok(())
    } else {
        Err(String::from("Version should be 3 characters long."))
    }
}

fn target_validate(target: String) -> Result<(), String> {
    match PRODUCT_FLAGS.iter().find(|&&f| f == target.as_str()) {
        Some(_) => Ok(()),
        None => Err(LP_TARGET_ERROR.to_string())
    }
}

#[derive(StructOpt)]
struct Cli {
    #[structopt(validator(target_validate), help("Launchpad model to compile for. Valid flags are: /x, /minimk3, /promk3, /mk2, /pro"))]
    target: String,
    
    #[structopt(validator(version_validate), help("Firmware version"))]
    version: String,
    
    #[structopt(validator(input_validate), help("Path to input .bin file"))]
    input: PathBuf,
    
    #[structopt(help("Optional output file name. If none is present, output name will be the same as the input but with .syx extension."))]
    output: Option<String>
}

fn main() {
   let args: Cli = Cli::from_args();
 
   let target = PRODUCTS_ALL[PRODUCT_FLAGS.iter().position(|&f| f == args.target.as_str()).unwrap()];
   
   let mut input = args.input;
   
   let input_bin = std::fs::read(&input).unwrap();
   
   let out_path = match args.output {
       Some(s) => s,
       None => {
           input.set_extension("syx");
           input.file_name().unwrap().to_str().unwrap().to_string()
       }
   };
      
   let mut converter = BinToSyx::new(input_bin, target, 
                                      args.version.as_bytes().try_into().unwrap());
   
   match std::fs::write(&out_path, converter.convert()) {
       Ok(_) => println!("Success! Saved to {}", &out_path),
       Err(err) => panic!(err)
   };
}