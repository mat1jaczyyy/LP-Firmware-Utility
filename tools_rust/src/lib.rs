use std::path::Path;

pub const fn ceil_div(a: usize, b: usize) -> usize {
    a / b + (a % b != 0) as usize
}

pub const SYSEX_START: u8 = 0xF0;
pub const SYSEX_END: u8 = 0xF7;

pub const NOVATION_HEADER: [u8; 4] = [0x00, 0x20, 0x29, 0x00];
pub const RGB_FIRMWARE_FOOTER: [u8; 8] = [b'F', b'i', b'r', b'm', b'w', b'a', b'r', b'e'];

pub const UPDATE_INIT: u8 = 0x71;
pub const UPDATE_HEADER: u8 = 0x7C;
pub const UPDATE_WRITE: u8 = 0x72;
pub const UPDATE_FINISH: u8 = 0x73;
pub const UPDATE_FOOTER: u8 = 0x76;

pub const LPX_FAMILY_ID: u8 = 0x02;
pub const LPX_PRODUCT_ID: u8 = 0x0C;
pub const LPMINIMK3_PRODUCT_ID: u8 = 0x0D;
pub const LPPROMK3_PRODUCT_ID: u8 = 0x0E;
pub const PRODUCTS_LPX: [u8; 3] = [LPX_PRODUCT_ID, LPMINIMK3_PRODUCT_ID, LPPROMK3_PRODUCT_ID];

pub const LPRGB_FAMILY_ID: u8 = 0x00;
pub const LPMK2_PRODUCT_ID: u8 = 0x69;
pub const LPPRO_PRODUCT_ID: u8 = 0x51;
pub const PRODUCTS_LPRGB: [u8; 2] = [LPMK2_PRODUCT_ID, LPPRO_PRODUCT_ID];

pub const FAMILIES: [u8; 2] = [LPX_FAMILY_ID, LPRGB_FAMILY_ID];
pub const PRODUCTS_ALL: [u8; 5] = [LPX_PRODUCT_ID, LPMINIMK3_PRODUCT_ID, LPPRO_PRODUCT_ID, LPMK2_PRODUCT_ID, LPPRO_PRODUCT_ID];

pub const BLOCK_SIZE_BITS: usize = 0x100;
pub const BLOCK_SIZE_BYTES: usize = ceil_div(BLOCK_SIZE_BITS, 8);
pub const BLOCK_SIZE_7BITS: usize = ceil_div(BLOCK_SIZE_BITS, 7);

pub fn crc32(buffer: &Vec<u8>) -> u32 {
    let mut crc: u32 = 0xFFFFFFFF;
    
    for &byte in buffer {
        crc ^= (byte as u32) << 0x18;
        
        for _ in 0..8 {
            crc = (if crc & 0x80000000 > 0 
                { 0x04C11DB7 } else   
                { 0x00000000 }
            ) ^ (crc << 1);
        }
    };
    
    crc
}


pub fn get_products(family_id: u8) -> Vec<u8> {
    match family_id {
        LPX_FAMILY_ID => return PRODUCTS_LPX.to_vec(),
        LPRGB_FAMILY_ID => return PRODUCTS_LPRGB.to_vec(),
        _ => panic!("Attempted to get products for invalid family id")
    }
}

pub fn uint_to_nibbles(mut n: u32) -> [u8; 8] {
    let mut ret: [u8; 8] = [0; 8];
    
    for i in 0..8 {
        ret[i] = ((n & 0xF0000000) >> 0x1C) as u8;
        n <<= 0x04;
    }
    
    ret
}

pub fn input_validate(path: String) -> Result<(), String> {
    match Path::new(&path).exists() {
        true => Ok(()),
        false => Err("Input file not found!".to_string())
    }
}

pub fn print_vector_error(i: usize, error: &str, v: &Vec<u8>) {
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

pub fn verify_uints(i: usize, a: u32, b: u32, error: &str) {
    if a != b {
        panic!("Syntax error at position {:#08x}: mismatching {}.", i, error);
    }
}
