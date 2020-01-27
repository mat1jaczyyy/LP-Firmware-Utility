(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_i32_=>_i64 (func (param i32 i64 i32) (result i64)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_f64_i32_i32_i32_i32_=>_i32 (func (param i32 f64 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_f64_i32_i32_i32_i32_=>_i32 (func (param i32 i32 f64 i32 i32 i32 i32) (result i32)))
 (type $i64_i32_i32_=>_i32 (func (param i64 i32 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $f64_i32_=>_f64 (func (param f64 i32) (result f64)))
 (import "env" "memory" (memory $memory 256 256))
 (data (i32.const 1024) "\11\00\n\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\t\00\00\00\00\0b")
 (data (i32.const 1056) "\11\00\0f\n\11\11\11\03\n\07\00\01\13\t\0b\0b\00\00\t\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
 (data (i32.const 1105) "\0b")
 (data (i32.const 1114) "\11\00\n\n\11\11\11\00\n\00\00\02\00\t\0b\00\00\00\t\00\0b\00\00\0b")
 (data (i32.const 1163) "\0c")
 (data (i32.const 1175) "\0c\00\00\00\00\0c\00\00\00\00\t\0c\00\00\00\00\00\0c\00\00\0c")
 (data (i32.const 1221) "\0e")
 (data (i32.const 1233) "\0d\00\00\00\04\0d\00\00\00\00\t\0e\00\00\00\00\00\0e\00\00\0e")
 (data (i32.const 1279) "\10")
 (data (i32.const 1291) "\0f\00\00\00\00\0f\00\00\00\00\t\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
 (data (i32.const 1346) "\12\00\00\00\12\12\12\00\00\00\00\00\00\t")
 (data (i32.const 1395) "\0b")
 (data (i32.const 1407) "\n\00\00\00\00\n\00\00\00\00\t\0b\00\00\00\00\00\0b\00\00\0b")
 (data (i32.const 1453) "\0c")
 (data (i32.const 1465) "\0c\00\00\00\00\0c\00\00\00\00\t\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF\05")
 (data (i32.const 1516) "\01")
 (data (i32.const 1540) "\01\00\00\00\01\00\00\00\0c\11")
 (data (i32.const 1564) "\02")
 (data (i32.const 1579) "\ff\ff\ff\ff\ff")
 (data (i32.const 1648) "\05")
 (data (i32.const 1660) "\02")
 (data (i32.const 1684) "\01\00\00\00\02\00\00\00X\n\00\00\00\04")
 (data (i32.const 1708) "\01")
 (data (i32.const 1723) "\n\ff\ff\ff\ff")
 (data (i32.const 1792) "\88\08\00\00\d9\t\00\00\10\07\00\00\00\00\00\00\88\08\00\00\86\t\00\00 \07\00\00\00\00\00\00`\08\00\00\a7\t\00\00\88\08\00\00\b4\t\00\00\00\07\00\00\00\00\00\00\88\08\00\00\fb\t\00\00\10\07\00\00\00\00\00\00\88\08\00\00\1d\n\00\008\07\00\00\00\00\00\00 \t\00\00\e0\05\00\00p\06")
 (data (i32.const 2080) "\ec\0e")
 (data (i32.const 2141) "\07\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\02\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00(\07\00\00\01\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\02\00\00\00\02\00\00\00\02\00\00\00\02\00\00\00Failed to allocate memory for %s file.\n\00rb\00Failed to open input file.\n\00INPUT\00wb\00Failed to open output file.\n\00999\00OUTPUT\00firmware/LPX-289.bin\00firmware/output.syx\00\0c\0d\0erwa\00-+   0X0x\00(null)\00-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.\00N10__cxxabiv116__shim_type_infoE\00St9type_info\00N10__cxxabiv120__si_class_type_infoE\00N10__cxxabiv117__class_type_infoE\00N10__cxxabiv117__pbase_type_infoE\00N10__cxxabiv119__pointer_type_infoE")
 (import "env" "table" (table $table 37 37 funcref))
 (elem (global.get $__table_base) $b0 $___stdio_close $___emscripten_stdout_close $b0 $b1 $_fmt_fp $b2 $___stdio_write $__ZNK10__cxxabiv117__class_type_info9can_catchEPKNS_16__shim_type_infoERPv $___stdio_read $b3 $___stdio_seek $___emscripten_stdout_seek $b3 $b4 $b5 $__ZN10__cxxabiv116__shim_type_infoD2Ev $__ZN10__cxxabiv117__class_type_infoD0Ev $__ZN10__cxxabiv116__shim_type_infoD2Ev $__ZN10__cxxabiv116__shim_type_infoD2Ev $__ZN10__cxxabiv117__class_type_infoD0Ev $b5 $b5 $b6 $_pop_arg_long_double $b7 $__ZNK10__cxxabiv117__class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi $__ZNK10__cxxabiv120__si_class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi $b7 $b8 $__ZNK10__cxxabiv117__class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib $__ZNK10__cxxabiv120__si_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib $b8 $b9 $__ZNK10__cxxabiv117__class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib $__ZNK10__cxxabiv120__si_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib $b9)
 (import "env" "__table_base" (global $__table_base i32))
 (import "env" "DYNAMICTOP_PTR" (global $DYNAMICTOP_PTR$asm2wasm$import i32))
 (import "env" "abort" (func $abort (param i32)))
 (import "env" "___cxa_uncaught_exceptions" (func $___cxa_uncaught_exceptions (result i32)))
 (import "env" "___lock" (func $___lock (param i32)))
 (import "env" "___setErrNo" (func $___setErrNo (param i32)))
 (import "env" "___syscall10" (func $___syscall10 (param i32 i32) (result i32)))
 (import "env" "___syscall140" (func $___syscall140 (param i32 i32) (result i32)))
 (import "env" "___syscall145" (func $___syscall145 (param i32 i32) (result i32)))
 (import "env" "___syscall221" (func $___syscall221 (param i32 i32) (result i32)))
 (import "env" "___syscall40" (func $___syscall40 (param i32 i32) (result i32)))
 (import "env" "___syscall5" (func $___syscall5 (param i32 i32) (result i32)))
 (import "env" "___syscall54" (func $___syscall54 (param i32 i32) (result i32)))
 (import "env" "___syscall6" (func $___syscall6 (param i32 i32) (result i32)))
 (import "env" "___unlock" (func $___unlock (param i32)))
 (import "env" "___wasi_fd_write" (func $___wasi_fd_write (param i32 i32 i32 i32) (result i32)))
 (import "env" "_abort" (func $_abort))
 (import "env" "_emscripten_get_heap_size" (func $_emscripten_get_heap_size (result i32)))
 (import "env" "_emscripten_memcpy_big" (func $_emscripten_memcpy_big (param i32 i32 i32) (result i32)))
 (import "env" "_emscripten_resize_heap" (func $_emscripten_resize_heap (param i32) (result i32)))
 (import "env" "_exit" (func $_exit (param i32)))
 (import "env" "abortOnCannotGrowMemory" (func $abortOnCannotGrowMemory (param i32) (result i32)))
 (import "env" "setTempRet0" (func $setTempRet0 (param i32)))
 (global $STACKTOP (mut i32) (i32.const 5600))
 (global $STACK_MAX (mut i32) (i32.const 5248480))
 (export "__ZSt18uncaught_exceptionv" (func $__ZSt18uncaught_exceptionv))
 (export "___cxa_can_catch" (func $___cxa_can_catch))
 (export "___cxa_is_pointer_type" (func $___cxa_is_pointer_type))
 (export "___errno_location" (func $___errno_location))
 (export "_free" (func $_free))
 (export "_malloc" (func $_malloc))
 (export "_memcpy" (func $_memcpy))
 (export "_memset" (func $_memset))
 (export "_patch_firmware" (func $_patch_firmware))
 (export "_sbrk" (func $_sbrk))
 (export "dynCall_ii" (func $dynCall_ii))
 (export "dynCall_iidiiii" (func $dynCall_iidiiii))
 (export "dynCall_iiii" (func $dynCall_iiii))
 (export "dynCall_jiji" (func $legalstub$dynCall_jiji))
 (export "dynCall_v" (func $dynCall_v))
 (export "dynCall_vi" (func $dynCall_vi))
 (export "dynCall_vii" (func $dynCall_vii))
 (export "dynCall_viiii" (func $dynCall_viiii))
 (export "dynCall_viiiii" (func $dynCall_viiiii))
 (export "dynCall_viiiiii" (func $dynCall_viiiiii))
 (export "establishStackSpace" (func $establishStackSpace))
 (export "globalCtors" (func $globalCtors))
 (export "stackAlloc" (func $stackAlloc))
 (export "stackRestore" (func $stackRestore))
 (export "stackSave" (func $stackSave))
 (func $globalCtors (; 21 ;) (; has Stack IR ;)
  (call $__GLOBAL__sub_I_common_cpp)
  (call $__GLOBAL__sub_I_bintosyx_cpp)
  (call $__GLOBAL__sub_I_main_cpp)
 )
 (func $stackAlloc (; 22 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (local.get $0)
    (global.get $STACKTOP)
   )
  )
  (global.set $STACKTOP
   (i32.and
    (i32.add
     (global.get $STACKTOP)
     (i32.const 15)
    )
    (i32.const -16)
   )
  )
  (local.get $1)
 )
 (func $stackSave (; 23 ;) (; has Stack IR ;) (result i32)
  (global.get $STACKTOP)
 )
 (func $stackRestore (; 24 ;) (; has Stack IR ;) (param $0 i32)
  (global.set $STACKTOP
   (local.get $0)
  )
 )
 (func $establishStackSpace (; 25 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (global.set $STACKTOP
   (local.get $0)
  )
  (global.set $STACK_MAX
   (local.get $1)
  )
 )
 (func $__Z15allocate_bufferP5bin_tiPKc (; 26 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  ;;@ common/common.cpp:8:0
  (local.set $2
   (local.get $1)
  )
  ;;@ common/common.cpp:9:0
  (i32.store
   (i32.const 3716)
   (local.get $0)
  )
  ;;@ common/common.cpp:10:0
  (i32.store
   (i32.const 3712)
   (local.tee $0
    (call $_malloc
     (local.get $0)
    )
   )
  )
  (if
   ;;@ common/common.cpp:12:0
   (local.get $0)
   (block
    (global.set $STACKTOP
     (local.get $1)
    )
    ;;@ common/common.cpp:19:0
    (return
     (i32.const 1)
    )
   )
  )
  ;;@ common/common.cpp:13:0
  (local.set $0
   (i32.load
    (i32.const 1884)
   )
  )
  (i32.store
   (local.get $2)
   (i32.const 2329)
  )
  (call $_fprintf
   (local.get $0)
   (local.get $2)
  )
  (global.set $STACKTOP
   (local.get $1)
  )
  ;;@ common/common.cpp:19:0
  (i32.const 0)
 )
 (func $__Z5crc32P5bin_t (; 27 ;) (; has Stack IR ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   ;;@ common/common.cpp:24:0
   (i32.eqz
    (local.tee $3
     (i32.load
      (i32.const 3708)
     )
    )
   )
   ;;@ common/common.cpp:34:0
   (return
    (i32.const -1)
   )
  )
  (local.set $4
   (i32.load
    (i32.const 3704)
   )
  )
  (local.set $0
   (i32.const -1)
  )
  (loop $while-in
   ;;@ common/common.cpp:31:0
   (local.set $1
    (i32.xor
     (i32.and
      (i32.shr_s
       ;;@ common/common.cpp:25:0
       (local.tee $0
        (i32.xor
         (local.get $0)
         (i32.shl
          (i32.load8_u
           (i32.add
            (local.get $2)
            (local.get $4)
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.const 31)
      )
      (i32.const 79764919)
     )
     ;;@ common/common.cpp:31:0
     (local.tee $0
      (i32.shl
       (local.get $0)
       (i32.const 1)
      )
     )
    )
   )
   (local.set $1
    (i32.xor
     (i32.and
      (i32.shr_s
       (local.get $0)
       (i32.const 31)
      )
      (i32.const 79764919)
     )
     (local.tee $0
      (i32.shl
       (local.get $1)
       (i32.const 1)
      )
     )
    )
   )
   (local.set $1
    (i32.xor
     (i32.and
      (i32.shr_s
       (local.get $0)
       (i32.const 31)
      )
      (i32.const 79764919)
     )
     (local.tee $0
      (i32.shl
       (local.get $1)
       (i32.const 1)
      )
     )
    )
   )
   (local.set $1
    (i32.xor
     (i32.and
      (i32.shr_s
       (local.get $0)
       (i32.const 31)
      )
      (i32.const 79764919)
     )
     (local.tee $0
      (i32.shl
       (local.get $1)
       (i32.const 1)
      )
     )
    )
   )
   (local.set $1
    (i32.xor
     (i32.and
      (i32.shr_s
       (local.get $0)
       (i32.const 31)
      )
      (i32.const 79764919)
     )
     (local.tee $0
      (i32.shl
       (local.get $1)
       (i32.const 1)
      )
     )
    )
   )
   (local.set $1
    (i32.xor
     (i32.and
      (i32.shr_s
       (local.get $0)
       (i32.const 31)
      )
      (i32.const 79764919)
     )
     (local.tee $0
      (i32.shl
       (local.get $1)
       (i32.const 1)
      )
     )
    )
   )
   (local.set $0
    (i32.xor
     (i32.shl
      (i32.xor
       (i32.and
        (i32.shr_s
         (local.get $0)
         (i32.const 31)
        )
        (i32.const 79764919)
       )
       (local.tee $0
        (i32.shl
         (local.get $1)
         (i32.const 1)
        )
       )
      )
      (i32.const 1)
     )
     (i32.and
      (i32.shr_s
       (local.get $0)
       (i32.const 31)
      )
      (i32.const 79764919)
     )
    )
   )
   ;;@ common/common.cpp:24:0
   (br_if $while-in
    (i32.lt_u
     (local.tee $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (local.get $3)
    )
   )
  )
  ;;@ common/common.cpp:34:0
  (local.get $0)
 )
 (func $__Z10read_inputv (; 28 ;) (; has Stack IR ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local.set $1
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   ;;@ common/common.cpp:39:0
   (i32.eqz
    ;;@ common/common.cpp:38:0
    (local.tee $0
     (call $_fopen
      (i32.load
       (i32.const 3720)
      )
      (i32.const 2256)
     )
    )
   )
   (block
    (call $_fwrite
     (i32.const 2259)
     (i32.const 27)
     (i32.const 1)
     (i32.load
      (i32.const 1884)
     )
    )
    ;;@ common/common.cpp:41:0
    (call $_exit
     (i32.const 1)
    )
   )
  )
  ;;@ common/common.cpp:38:0
  (local.set $3
   (local.get $1)
  )
  (call $_fseek
   (local.get $0)
   (i32.const 2)
  )
  ;;@ common/common.cpp:9:0
  (i32.store
   (i32.const 3708)
   ;;@ common/common.cpp:46:0
   (local.tee $2
    (if (result i32)
     (block (result i32)
      (drop
       (i32.load offset=76
        (local.get $0)
       )
      )
      (i64.gt_s
       (local.tee $4
        (call $___ftello_unlocked
         (local.get $0)
        )
       )
       (i64.const 2147483647)
      )
     )
     (block (result i32)
      (i32.store
       (i32.const 3844)
       (i32.const 75)
      )
      (i32.const -1)
     )
     (i32.wrap_i64
      (local.get $4)
     )
    )
   )
  )
  ;;@ common/common.cpp:10:0
  (i32.store
   (i32.const 3704)
   (local.tee $2
    (call $_malloc
     (local.get $2)
    )
   )
  )
  (if
   ;;@ common/common.cpp:12:0
   (local.get $2)
   ;;@ common/common.cpp:54:0
   (block
    (call $_fseek
     (local.get $0)
     (i32.const 0)
    )
    (call $_fread
     (i32.load
      (i32.const 3704)
     )
     (i32.load
      (i32.const 3708)
     )
     (local.get $0)
    )
    (call $_fclose
     (local.get $0)
    )
    (global.set $STACKTOP
     (local.get $1)
    )
   )
   (block
    ;;@ common/common.cpp:13:0
    (local.set $1
     (i32.load
      (i32.const 1884)
     )
    )
    (i32.store
     (local.get $3)
     (i32.const 2287)
    )
    (call $_fprintf
     (local.get $1)
     (local.get $3)
    )
    (call $_fclose
     (local.get $0)
    )
    ;;@ common/common.cpp:48:0
    (call $_exit
     (i32.const 2)
    )
   )
  )
 )
 (func $__Z12write_outputv (; 29 ;) (; has Stack IR ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ common/common.cpp:57:0
  (local.set $0
   (i32.load
    (i32.const 3724)
   )
  )
  (local.set $0
   (call $_fopen
    (local.get $0)
    (i32.const 2293)
   )
  )
  (if
   ;;@ common/common.cpp:58:0
   (local.get $0)
   ;;@ common/common.cpp:65:0
   (block
    ;;@ common/common.cpp:63:0
    (local.set $1
     (i32.load
      (i32.const 3712)
     )
    )
    (local.set $2
     (i32.load
      (i32.const 3716)
     )
    )
    (call $_fwrite
     (local.get $1)
     (i32.const 1)
     (local.get $2)
     (local.get $0)
    )
    (call $_fclose
     (local.get $0)
    )
   )
   (block
    ;;@ common/common.cpp:59:0
    (local.set $0
     (i32.load
      (i32.const 1884)
     )
    )
    (call $_fwrite
     (i32.const 2296)
     (i32.const 28)
     (i32.const 1)
     (local.get $0)
    )
    ;;@ common/common.cpp:60:0
    (call $_exit
     (i32.const 3)
    )
   )
  )
 )
 (func $__GLOBAL__sub_I_common_cpp (; 30 ;) (; has Stack IR ;)
  (local $0 i32)
  (local $1 i32)
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:435:0
  (i32.store
   (i32.const 3680)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:436:0
  (i32.store
   (i32.const 3684)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:2148:0
  (i32.store
   (i32.const 3688)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/new:239:0
  (local.set $0
   (call $__Znwm
    (i32.const 4)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:977:0
  (i32.store
   (i32.const 3680)
   (local.get $0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:978:0
  (local.set $1
   (i32.add
    (local.get $0)
    (i32.const 4)
   )
  )
  (i32.store
   (i32.const 3688)
   (local.get $1)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1667:0
  (i32.store align=1
   (local.get $0)
   (i32.const 2695168)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1668:0
  (i32.store
   (i32.const 3684)
   (local.get $1)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:435:0
  (i32.store
   (i32.const 3692)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:436:0
  (i32.store
   (i32.const 3696)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:2148:0
  (i32.store
   (i32.const 3700)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/new:239:0
  (local.set $0
   (call $__Znwm
    (i32.const 3)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:977:0
  (i32.store
   (i32.const 3692)
   (local.get $0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:978:0
  (local.set $1
   (i32.add
    (local.get $0)
    (i32.const 3)
   )
  )
  (i32.store
   (i32.const 3700)
   (local.get $1)
  )
  (i32.store16 align=1
   (local.get $0)
   (i32.load16_s align=1
    (i32.const 2377)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1667:0
  (i32.store8 offset=2
   (local.get $0)
   (i32.load8_s
    (i32.const 2379)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1668:0
  (i32.store
   (i32.const 3696)
   (local.get $1)
  )
 )
 (func $__GLOBAL__sub_I_bintosyx_cpp (; 31 ;) (; has Stack IR ;)
  (local $0 i32)
  (local $1 i32)
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:435:0
  (i32.store
   (i32.const 3732)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:436:0
  (i32.store
   (i32.const 3736)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:2148:0
  (i32.store
   (i32.const 3740)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/new:239:0
  (local.set $0
   (call $__Znwm
    (i32.const 4)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:977:0
  (i32.store
   (i32.const 3732)
   (local.get $0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:978:0
  (local.set $1
   (i32.add
    (local.get $0)
    (i32.const 4)
   )
  )
  (i32.store
   (i32.const 3740)
   (local.get $1)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1667:0
  (i32.store align=1
   (local.get $0)
   (i32.const 2695168)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1668:0
  (i32.store
   (i32.const 3736)
   (local.get $1)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:435:0
  (i32.store
   (i32.const 3744)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:436:0
  (i32.store
   (i32.const 3748)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:2148:0
  (i32.store
   (i32.const 3752)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/new:239:0
  (local.set $0
   (call $__Znwm
    (i32.const 3)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:977:0
  (i32.store
   (i32.const 3744)
   (local.get $0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:978:0
  (local.set $1
   (i32.add
    (local.get $0)
    (i32.const 3)
   )
  )
  (i32.store
   (i32.const 3752)
   (local.get $1)
  )
  (i32.store16 align=1
   (local.get $0)
   (i32.load16_s align=1
    (i32.const 2377)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1667:0
  (i32.store8 offset=2
   (local.get $0)
   (i32.load8_s
    (i32.const 2379)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1668:0
  (i32.store
   (i32.const 3748)
   (local.get $1)
  )
 )
 (func $__Z15uint_to_nibblesj (; 32 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:435:0
  (i32.store
   (local.get $0)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:436:0
  (i32.store
   (local.tee $6
    (i32.add
     (local.get $0)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:2148:0
  (i32.store
   (local.tee $9
    (i32.add
     (local.get $0)
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:33:0
  (block $__rjto$1
   (loop $while-in
    (block $__rjti$0
     ;;@ lpx-bintosyx/bintosyx.cpp:28:0
     (local.set $7
      (i32.shr_u
       (local.get $1)
       (i32.const 28)
      )
     )
     (if
      (i32.lt_u
       (local.get $2)
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:1649:0
       (local.tee $3
        (local.get $5)
       )
      )
      (block
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1826:0
       (i32.store8
        (local.get $2)
        (local.get $7)
       )
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:1656:0
       (i32.store
        (local.get $6)
        (i32.add
         (i32.load
          (local.get $6)
         )
         (i32.const 1)
        )
       )
      )
      (block
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:1009:0
       (br_if $__rjti$0
        (i32.lt_s
         ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:1618:0
         (local.tee $2
          (i32.add
           ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
           (local.tee $8
            (i32.sub
             (local.get $2)
             (local.tee $5
              (i32.load
               (local.get $0)
              )
             )
            )
           )
           (i32.const 1)
          )
         )
         (i32.const 0)
        )
       )
       (local.set $10
        (local.get $5)
       )
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:1012:0
       (local.set $4
        (i32.lt_u
         ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:373:0
         (local.tee $3
          (i32.sub
           (local.get $3)
           (local.get $5)
          )
         )
         (i32.const 1073741823)
        )
       )
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/__split_buffer:312:0
       (local.set $4
        (i32.add
         (local.get $8)
         (local.tee $2
          (if (result i32)
           ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/__split_buffer:311:0
           (local.tee $3
            (select
             (select
              (local.get $2)
              ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:1014:0
              (local.tee $3
               (i32.shl
                (local.get $3)
                (i32.const 1)
               )
              )
              (i32.lt_u
               (local.get $3)
               (local.get $2)
              )
             )
             (i32.const 2147483647)
             (local.get $4)
            )
           )
           ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/new:239:0
           (call $__Znwm
            (local.get $3)
           )
           (i32.const 0)
          )
         )
        )
       )
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/__split_buffer:313:0
       (local.set $3
        (i32.add
         (local.get $2)
         (local.get $3)
        )
       )
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1826:0
       (i32.store8
        (local.get $4)
        (local.get $7)
       )
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:1621:0
       (local.set $7
        (i32.add
         (local.get $4)
         (i32.const 1)
        )
       )
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1698:0
       (local.set $4
        (local.get $2)
       )
       (if
        ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1699:0
        (i32.gt_s
         (local.get $8)
         (i32.const 0)
        )
        ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1700:0
        (drop
         (call $_memcpy
          (local.get $2)
          (local.get $10)
          (local.get $8)
         )
        )
       )
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/type_traits:4519:0
       (i32.store
        (local.get $0)
        (local.get $4)
       )
       (i32.store
        (local.get $6)
        (local.get $7)
       )
       (i32.store
        (local.get $9)
        (local.get $3)
       )
       (if
        ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/__split_buffer:342:0
        (local.get $5)
        ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/new:320:0
        (call $_free
         (local.get $10)
        )
       )
      )
     )
     ;;@ lpx-bintosyx/bintosyx.cpp:27:0
     (br_if $__rjto$1
      (i32.ge_u
       (local.tee $11
        (i32.add
         (local.get $11)
         (i32.const 1)
        )
       )
       (i32.const 8)
      )
     )
     ;;@ lpx-bintosyx/bintosyx.cpp:29:0
     (local.set $1
      (i32.shl
       (local.get $1)
       (i32.const 4)
      )
     )
     ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:1649:0
     (local.set $2
      (i32.load
       (local.get $6)
      )
     )
     (local.set $5
      (i32.load
       (local.get $9)
      )
     )
     (br $while-in)
    )
   )
   ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:1010:0
   (call $_abort)
  )
 )
 (func $__Z7convertv (; 33 ;) (; has Stack IR ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local.set $7
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 32)
   )
  )
  (local.set $6
   (i32.add
    (local.get $7)
    (i32.const 12)
   )
  )
  (local.set $4
   (local.get $7)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:58:0
  (i32.store
   (i32.const 3728)
   (i32.const 2325)
  )
  (if
   ;;@ lpx-bintosyx/bintosyx.cpp:62:0
   (i32.eqz
    (call $__Z15allocate_bufferP5bin_tiPKc
     (i32.add
      (i32.mul
       ;;@ lpx-bintosyx/bintosyx.cpp:7:0
       (local.tee $9
        (i32.add
         (i32.div_s
          ;;@ lpx-bintosyx/bintosyx.cpp:60:0
          (local.tee $0
           (i32.load
            (i32.const 3708)
           )
          )
          (i32.const 32)
         )
         (i32.ne
          (i32.and
           (local.get $0)
           (i32.const 31)
          )
          (i32.const 0)
         )
        )
       )
       (i32.const 44)
      )
      (i32.const 45)
     )
    )
   )
   ;;@ lpx-bintosyx/bintosyx.cpp:62:0
   (call $_exit
    (i32.const 4)
   )
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:11:0
  (i32.store8
   (i32.load
    (i32.const 3712)
   )
   (i32.const -16)
  )
  (if
   ;;@ lpx-bintosyx/bintosyx.cpp:13:0
   (i32.eq
    ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
    (local.tee $0
     (i32.load
      (i32.const 3732)
     )
    )
    (i32.load
     (i32.const 3736)
    )
   )
   (local.set $0
    (i32.const 1)
   )
   (block
    (local.set $2
     (i32.const 1)
    )
    (loop $while-in
     ;;@ lpx-bintosyx/bintosyx.cpp:14:0
     (local.set $3
      (i32.load8_s
       (i32.add
        (local.get $0)
        (local.get $1)
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (i32.store8
      (i32.add
       (i32.load
        (i32.const 3712)
       )
       (local.get $2)
      )
      (local.get $3)
     )
     (if
      ;;@ lpx-bintosyx/bintosyx.cpp:13:0
      (i32.lt_u
       (local.tee $1
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (i32.sub
        (i32.load
         (i32.const 3736)
        )
        ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
        (local.tee $3
         (i32.load
          (i32.const 3732)
         )
        )
       )
      )
      (block
       (local.set $2
        (local.get $0)
       )
       (local.set $0
        (local.get $3)
       )
       (br $while-in)
      )
     )
    )
   )
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:16:0
  (i32.store8
   (i32.add
    (local.get $0)
    (i32.load
     (i32.const 3712)
    )
   )
   (i32.const 113)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:68:0
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (i32.add
     (local.get $0)
     (i32.const 1)
    )
   )
   (i32.const 2)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:69:0
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (i32.add
     (local.get $0)
     (i32.const 2)
    )
   )
   (i32.const 0)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:71:0
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (i32.add
     (local.get $0)
     (i32.const 3)
    )
   )
   (i32.const 0)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:72:0
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (i32.add
     (local.get $0)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:73:0
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (i32.add
     (local.get $0)
     (i32.const 5)
    )
   )
   (i32.const 0)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:76:0
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (i32.add
     (local.get $0)
     (i32.const 6)
    )
   )
   (i32.and
    (i32.load8_s
     (i32.const 2325)
    )
    (i32.const 15)
   )
  )
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (i32.add
     (local.get $0)
     (i32.const 7)
    )
   )
   (i32.and
    (i32.load8_s
     (i32.const 2326)
    )
    (i32.const 15)
   )
  )
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (i32.add
     (local.get $0)
     (i32.const 8)
    )
   )
   (i32.and
    (i32.load8_s
     (i32.const 2327)
    )
    (i32.const 15)
   )
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:78:0
  (local.set $3
   (i32.add
    (local.get $0)
    (i32.const 10)
   )
  )
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (i32.add
     (local.get $0)
     (i32.const 9)
    )
   )
   (i32.const -9)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:11:0
  (local.set $0
   (i32.add
    (local.get $0)
    (i32.const 11)
   )
  )
  (i32.store8
   (i32.add
    (local.get $3)
    (i32.load
     (i32.const 3712)
    )
   )
   (i32.const -16)
  )
  (if
   ;;@ lpx-bintosyx/bintosyx.cpp:13:0
   (i32.eq
    ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
    (local.tee $1
     (i32.load
      (i32.const 3732)
     )
    )
    (i32.load
     (i32.const 3736)
    )
   )
   (local.set $1
    (local.get $0)
   )
   (block
    (local.set $2
     (i32.const 0)
    )
    (loop $while-in1
     ;;@ lpx-bintosyx/bintosyx.cpp:14:0
     (local.set $3
      (i32.load8_s
       (i32.add
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (local.set $1
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (i32.store8
      (i32.add
       (i32.load
        (i32.const 3712)
       )
       (local.get $0)
      )
      (local.get $3)
     )
     (if
      ;;@ lpx-bintosyx/bintosyx.cpp:13:0
      (i32.lt_u
       (local.tee $2
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
       (i32.sub
        (i32.load
         (i32.const 3736)
        )
        ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
        (local.tee $3
         (i32.load
          (i32.const 3732)
         )
        )
       )
      )
      (block
       (local.set $0
        (local.get $1)
       )
       (local.set $1
        (local.get $3)
       )
       (br $while-in1)
      )
     )
    )
   )
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:16:0
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (local.get $1)
   )
   (i32.const 124)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:82:0
  (local.set $0
   (i32.add
    (local.get $1)
    (i32.const 2)
   )
  )
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (i32.const 0)
  )
  (if
   ;;@ lpx-bintosyx/bintosyx.cpp:86:0
   (i32.gt_s
    (local.tee $3
     (i32.sub
      (i32.const 6)
      ;;@ lpx-bintosyx/bintosyx.cpp:84:0
      (local.tee $5
       (call $_strlen
        (i32.load
         (i32.const 3728)
        )
       )
      )
     )
    )
    (i32.const 0)
   )
   ;;@ lpx-bintosyx/bintosyx.cpp:86:0
   (block
    (local.set $8
     (i32.add
      (local.get $1)
      (i32.const 8)
     )
    )
    (local.set $1
     (i32.const 0)
    )
    (loop $while-in3
     ;;@ lpx-bintosyx/bintosyx.cpp:87:0
     (local.set $2
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (i32.store8
      (i32.add
       (i32.load
        (i32.const 3712)
       )
       (local.get $0)
      )
      (i32.const 48)
     )
     (if
      ;;@ lpx-bintosyx/bintosyx.cpp:86:0
      (i32.ne
       (local.get $3)
       (local.tee $1
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
      )
      (block
       (local.set $0
        (local.get $2)
       )
       (br $while-in3)
      )
     )
    )
    (local.set $0
     (i32.sub
      (local.get $8)
      (local.get $5)
     )
    )
   )
  )
  (if
   ;;@ lpx-bintosyx/bintosyx.cpp:89:0
   (i32.gt_s
    (local.get $5)
    (i32.const 0)
   )
   (block
    (local.set $2
     (i32.const 0)
    )
    (local.set $1
     (local.get $0)
    )
    (loop $while-in5
     ;;@ lpx-bintosyx/bintosyx.cpp:90:0
     (local.set $3
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.store8
      (i32.add
       (i32.load
        (i32.const 3712)
       )
       (local.get $1)
      )
      (i32.or
       (i32.and
        (i32.load8_s
         (i32.add
          (i32.load
           (i32.const 3728)
          )
          (local.get $2)
         )
        )
        (i32.const 15)
       )
       (i32.const 48)
      )
     )
     (if
      ;;@ lpx-bintosyx/bintosyx.cpp:89:0
      (i32.ne
       (local.get $5)
       (local.tee $2
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
      )
      (block
       (local.set $1
        (local.get $3)
       )
       (br $while-in5)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.get $0)
      (local.get $5)
     )
    )
   )
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:92:0
  (call $__Z15uint_to_nibblesj
   (local.get $6)
   (i32.load
    (i32.const 3708)
   )
  )
  (if
   ;;@ lpx-bintosyx/bintosyx.cpp:20:0
   (i32.ne
    ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
    (local.tee $1
     (i32.load
      (local.get $6)
     )
    )
    (i32.load
     (local.tee $5
      (i32.add
       (local.get $6)
       (i32.const 4)
      )
     )
    )
   )
   (block
    (local.set $3
     (i32.const 0)
    )
    (local.set $0
     (loop $while-in7 (result i32)
      ;;@ lpx-bintosyx/bintosyx.cpp:21:0
      (local.set $2
       (i32.add
        (local.get $0)
        (i32.const 1)
       )
      )
      (i32.store8
       (i32.add
        (i32.load
         (i32.const 3712)
        )
        (local.get $0)
       )
       (i32.load8_s
        (i32.add
         (local.get $1)
         (local.get $3)
        )
       )
      )
      (if (result i32)
       ;;@ lpx-bintosyx/bintosyx.cpp:20:0
       (i32.lt_u
        (local.tee $3
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
        (i32.sub
         (i32.load
          (local.get $5)
         )
         ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
         (local.tee $1
          (i32.load
           (local.get $6)
          )
         )
        )
       )
       (block
        (local.set $0
         (local.get $2)
        )
        (br $while-in7)
       )
       (local.get $2)
      )
     )
    )
   )
  )
  (if
   ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:462:0
   (local.get $1)
   (block
    ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:428:0
    (i32.store
     (local.get $5)
     (local.get $1)
    )
    ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/new:320:0
    (call $_free
     (local.get $1)
    )
   )
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:93:0
  (call $__Z15uint_to_nibblesj
   (local.get $4)
   (call $__Z5crc32P5bin_t)
  )
  (if
   ;;@ lpx-bintosyx/bintosyx.cpp:20:0
   (i32.ne
    ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
    (local.tee $1
     (i32.load
      (local.get $4)
     )
    )
    (i32.load
     (local.tee $5
      (i32.add
       (local.get $4)
       (i32.const 4)
      )
     )
    )
   )
   (block
    (local.set $3
     (i32.const 0)
    )
    (local.set $0
     (loop $while-in9 (result i32)
      ;;@ lpx-bintosyx/bintosyx.cpp:21:0
      (local.set $2
       (i32.add
        (local.get $0)
        (i32.const 1)
       )
      )
      (i32.store8
       (i32.add
        (i32.load
         (i32.const 3712)
        )
        (local.get $0)
       )
       (i32.load8_s
        (i32.add
         (local.get $1)
         (local.get $3)
        )
       )
      )
      (if (result i32)
       ;;@ lpx-bintosyx/bintosyx.cpp:20:0
       (i32.lt_u
        (local.tee $3
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
        (i32.sub
         (i32.load
          (local.get $5)
         )
         ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
         (local.tee $1
          (i32.load
           (local.get $4)
          )
         )
        )
       )
       (block
        (local.set $0
         (local.get $2)
        )
        (br $while-in9)
       )
       (local.get $2)
      )
     )
    )
   )
  )
  (if
   ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:462:0
   (local.get $1)
   (block
    ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:428:0
    (i32.store
     (local.get $5)
     (local.get $1)
    )
    ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/new:320:0
    (call $_free
     (local.get $1)
    )
   )
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:95:0
  (local.set $2
   (i32.add
    (local.get $0)
    (i32.const 1)
   )
  )
  (i32.store8
   (i32.add
    (local.get $0)
    (i32.load
     (i32.const 3712)
    )
   )
   (i32.const -9)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:11:0
  (local.set $0
   (i32.add
    (local.get $0)
    (i32.const 2)
   )
  )
  (i32.store8
   (i32.add
    (local.get $2)
    (i32.load
     (i32.const 3712)
    )
   )
   (i32.const -16)
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:13:0
  (local.set $2
   (i32.eq
    ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
    (local.tee $1
     (i32.load
      (i32.const 3732)
     )
    )
    (i32.load
     (i32.const 3736)
    )
   )
  )
  (if
   (i32.gt_s
    (local.get $9)
    (i32.const 1)
   )
   (block
    (local.set $3
     (i32.const 1)
    )
    (loop $while-in11
     (if
      (i32.eqz
       (local.get $2)
      )
      (block
       (local.set $2
        (i32.const 0)
       )
       (local.set $0
        (loop $while-in13 (result i32)
         ;;@ lpx-bintosyx/bintosyx.cpp:14:0
         (local.set $4
          (i32.load8_s
           (i32.add
            (local.get $1)
            (local.get $2)
           )
          )
         )
         (local.set $1
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (i32.store8
          (i32.add
           (i32.load
            (i32.const 3712)
           )
           (local.get $0)
          )
          (local.get $4)
         )
         (if (result i32)
          ;;@ lpx-bintosyx/bintosyx.cpp:13:0
          (i32.lt_u
           (local.tee $2
            (i32.add
             (local.get $2)
             (i32.const 1)
            )
           )
           (i32.sub
            (i32.load
             (i32.const 3736)
            )
            ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
            (local.tee $4
             (i32.load
              (i32.const 3732)
             )
            )
           )
          )
          (block
           (local.set $0
            (local.get $1)
           )
           (local.set $1
            (local.get $4)
           )
           (br $while-in13)
          )
          (local.get $1)
         )
        )
       )
      )
     )
     (local.set $8
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     ;;@ lpx-bintosyx/bintosyx.cpp:16:0
     (i32.store8
      (i32.add
       (local.get $0)
       (i32.load
        (i32.const 3712)
       )
      )
      (i32.const 114)
     )
     (local.set $10
      (i32.shl
       (local.get $3)
       (i32.const 5)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (loop $while-in15
      ;;@ lpx-bintosyx/bintosyx.cpp:39:0
      (local.set $2
       (i32.xor
        (i32.and
         (local.get $1)
         (i32.const 7)
        )
        (i32.const 7)
       )
      )
      ;;@ lpx-bintosyx/bintosyx.cpp:40:0
      (local.set $5
       (i32.add
        (local.get $8)
        (local.tee $4
         (i32.div_u
          (local.get $1)
          (i32.const 7)
         )
        )
       )
      )
      (local.set $2
       (if (result i32)
        ;;@ lpx-bintosyx/bintosyx.cpp:43:0
        (i32.lt_u
         ;;@ lpx-bintosyx/bintosyx.cpp:42:0
         (local.tee $6
          (i32.add
           (local.get $10)
           (i32.shr_u
            (local.get $1)
            (i32.const 3)
           )
          )
         )
         (i32.load
          (i32.const 3708)
         )
        )
        ;;@ lpx-bintosyx/bintosyx.cpp:45:0
        (i32.shr_u
         (i32.and
          (i32.load8_u
           (i32.add
            (i32.load
             (i32.const 3704)
            )
            (local.get $6)
           )
          )
          (i32.shl
           (i32.const 1)
           (local.get $2)
          )
         )
         (local.get $2)
        )
        (i32.const 1)
       )
      )
      (if
       ;;@ lpx-bintosyx/bintosyx.cpp:47:0
       (i32.eqz
        (local.tee $4
         (i32.sub
          (local.get $1)
          (i32.mul
           (local.get $4)
           (i32.const 7)
          )
         )
        )
       )
       (i32.store8
        (i32.add
         (i32.load
          (i32.const 3712)
         )
         (local.get $5)
        )
        (i32.const 0)
       )
      )
      ;;@ lpx-bintosyx/bintosyx.cpp:49:0
      (local.set $4
       (i32.shl
        (i32.and
         (local.get $2)
         (i32.const 255)
        )
        (i32.sub
         (i32.const 6)
         (local.get $4)
        )
       )
      )
      (local.set $4
       (i32.and
        (i32.or
         (local.get $4)
         (i32.load8_u
          (local.tee $2
           (i32.add
            (local.get $5)
            (i32.load
             (i32.const 3712)
            )
           )
          )
         )
        )
        (i32.const 255)
       )
      )
      (i32.store8
       (local.get $2)
       (local.get $4)
      )
      ;;@ lpx-bintosyx/bintosyx.cpp:38:0
      (br_if $while-in15
       (i32.ne
        (local.tee $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (i32.const 256)
       )
      )
     )
     ;;@ lpx-bintosyx/bintosyx.cpp:54:0
     (local.set $4
      (i32.add
       (local.get $0)
       (i32.const 39)
      )
     )
     (i32.store8
      (i32.add
       (i32.load
        (i32.const 3712)
       )
       (i32.add
        (local.get $0)
        (i32.const 38)
       )
      )
      (i32.const -9)
     )
     ;;@ lpx-bintosyx/bintosyx.cpp:11:0
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 40)
      )
     )
     (i32.store8
      (i32.add
       (local.get $4)
       (i32.load
        (i32.const 3712)
       )
      )
      (i32.const -16)
     )
     ;;@ lpx-bintosyx/bintosyx.cpp:13:0
     (local.set $2
      (i32.eq
       ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
       (local.tee $1
        (i32.load
         (i32.const 3732)
        )
       )
       (i32.load
        (i32.const 3736)
       )
      )
     )
     ;;@ lpx-bintosyx/bintosyx.cpp:97:0
     (br_if $while-in11
      (i32.ne
       (local.get $9)
       (local.tee $3
        (i32.add
         (local.get $3)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
  )
  (if
   (i32.eqz
    (local.get $2)
   )
   (block
    (local.set $2
     (i32.const 0)
    )
    (local.set $0
     (loop $while-in17 (result i32)
      ;;@ lpx-bintosyx/bintosyx.cpp:14:0
      (local.set $3
       (i32.load8_s
        (i32.add
         (local.get $1)
         (local.get $2)
        )
       )
      )
      (local.set $1
       (i32.add
        (local.get $0)
        (i32.const 1)
       )
      )
      (i32.store8
       (i32.add
        (i32.load
         (i32.const 3712)
        )
        (local.get $0)
       )
       (local.get $3)
      )
      (if (result i32)
       ;;@ lpx-bintosyx/bintosyx.cpp:13:0
       (i32.lt_u
        (local.tee $2
         (i32.add
          (local.get $2)
          (i32.const 1)
         )
        )
        (i32.sub
         (i32.load
          (i32.const 3736)
         )
         ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:657:0
         (local.tee $3
          (i32.load
           (i32.const 3732)
          )
         )
        )
       )
       (block
        (local.set $0
         (local.get $1)
        )
        (local.set $1
         (local.get $3)
        )
        (br $while-in17)
       )
       (local.get $1)
      )
     )
    )
   )
  )
  (local.set $6
   (i32.add
    (local.get $0)
    (i32.const 1)
   )
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:16:0
  (i32.store8
   (i32.add
    (local.get $0)
    (i32.load
     (i32.const 3712)
    )
   )
   (i32.const 115)
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $while-in19
   ;;@ lpx-bintosyx/bintosyx.cpp:39:0
   (local.set $2
    (i32.xor
     (i32.and
      (local.get $1)
      (i32.const 7)
     )
     (i32.const 7)
    )
   )
   ;;@ lpx-bintosyx/bintosyx.cpp:40:0
   (local.set $4
    (i32.add
     (local.get $6)
     (local.tee $3
      (i32.div_u
       (local.get $1)
       (i32.const 7)
      )
     )
    )
   )
   (local.set $2
    (if (result i32)
     ;;@ lpx-bintosyx/bintosyx.cpp:43:0
     (i32.lt_u
      ;;@ lpx-bintosyx/bintosyx.cpp:42:0
      (local.tee $5
       (i32.shr_u
        (local.get $1)
        (i32.const 3)
       )
      )
      (i32.load
       (i32.const 3708)
      )
     )
     ;;@ lpx-bintosyx/bintosyx.cpp:45:0
     (i32.shr_u
      (i32.and
       (i32.load8_u
        (i32.add
         (i32.load
          (i32.const 3704)
         )
         (local.get $5)
        )
       )
       (i32.shl
        (i32.const 1)
        (local.get $2)
       )
      )
      (local.get $2)
     )
     (i32.const 1)
    )
   )
   (if
    ;;@ lpx-bintosyx/bintosyx.cpp:47:0
    (i32.eqz
     (local.tee $3
      (i32.sub
       (local.get $1)
       (i32.mul
        (local.get $3)
        (i32.const 7)
       )
      )
     )
    )
    (i32.store8
     (i32.add
      (local.get $4)
      (i32.load
       (i32.const 3712)
      )
     )
     (i32.const 0)
    )
   )
   ;;@ lpx-bintosyx/bintosyx.cpp:49:0
   (local.set $3
    (i32.and
     (i32.or
      (i32.shl
       (i32.and
        (local.get $2)
        (i32.const 255)
       )
       (i32.sub
        (i32.const 6)
        (local.get $3)
       )
      )
      (i32.load8_u
       (local.tee $2
        (i32.add
         (local.get $4)
         (i32.load
          (i32.const 3712)
         )
        )
       )
      )
     )
     (i32.const 255)
    )
   )
   (i32.store8
    (local.get $2)
    (local.get $3)
   )
   ;;@ lpx-bintosyx/bintosyx.cpp:38:0
   (br_if $while-in19
    (i32.ne
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 256)
    )
   )
  )
  ;;@ lpx-bintosyx/bintosyx.cpp:54:0
  (i32.store8
   (i32.add
    (i32.load
     (i32.const 3712)
    )
    (i32.add
     (local.get $0)
     (i32.const 38)
    )
   )
   (i32.const -9)
  )
  (global.set $STACKTOP
   (local.get $7)
  )
 )
 (func $__GLOBAL__sub_I_main_cpp (; 34 ;) (; has Stack IR ;)
  (local $0 i32)
  (local $1 i32)
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:435:0
  (i32.store
   (i32.const 3756)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:436:0
  (i32.store
   (i32.const 3760)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:2148:0
  (i32.store
   (i32.const 3764)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/new:239:0
  (local.set $0
   (call $__Znwm
    (i32.const 4)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:977:0
  (i32.store
   (i32.const 3756)
   (local.get $0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:978:0
  (local.set $1
   (i32.add
    (local.get $0)
    (i32.const 4)
   )
  )
  (i32.store
   (i32.const 3764)
   (local.get $1)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1667:0
  (i32.store align=1
   (local.get $0)
   (i32.const 2695168)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1668:0
  (i32.store
   (i32.const 3760)
   (local.get $1)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:435:0
  (i32.store
   (i32.const 3768)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:436:0
  (i32.store
   (i32.const 3772)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:2148:0
  (i32.store
   (i32.const 3776)
   (i32.const 0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/new:239:0
  (local.set $0
   (call $__Znwm
    (i32.const 3)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:977:0
  (i32.store
   (i32.const 3768)
   (local.get $0)
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/vector:978:0
  (local.set $1
   (i32.add
    (local.get $0)
    (i32.const 3)
   )
  )
  (i32.store
   (i32.const 3776)
   (local.get $1)
  )
  (i32.store16 align=1
   (local.get $0)
   (i32.load16_s align=1
    (i32.const 2377)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1667:0
  (i32.store8 offset=2
   (local.get $0)
   (i32.load8_s
    (i32.const 2379)
   )
  )
  ;;@ /usr/local/Cellar/emscripten/1.38.44/libexec/system/include/libcxx/memory:1668:0
  (i32.store
   (i32.const 3772)
   (local.get $1)
  )
 )
 (func $_patch_firmware (; 35 ;) (; has Stack IR ;)
  (local $0 i32)
  ;;@ web-fwgen/main.cpp:18:0
  (local.set $0
   (i32.load
    (i32.const 1880)
   )
  )
  (i32.store
   (i32.const 3720)
   (local.get $0)
  )
  ;;@ web-fwgen/main.cpp:19:0
  (i32.store
   (i32.const 3724)
   (i32.const 2357)
  )
  (call $_remove)
  ;;@ web-fwgen/main.cpp:25:0
  (call $__Z10read_inputv)
  ;;@ web-fwgen/main.cpp:27:0
  (call $__Z7convertv)
  ;;@ web-fwgen/main.cpp:29:0
  (call $__Z12write_outputv)
  ;;@ web-fwgen/main.cpp:31:0
  (local.set $0
   (i32.load
    (i32.const 3704)
   )
  )
  (call $_free
   (local.get $0)
  )
  ;;@ web-fwgen/main.cpp:32:0
  (local.set $0
   (i32.load
    (i32.const 3712)
   )
  )
  (call $_free
   (local.get $0)
  )
 )
 (func $___stdio_close (; 36 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  (i32.store
   (local.get $1)
   (i32.load offset=60
    (local.get $0)
   )
  )
  (local.set $0
   (call $___syscall_ret
    (call $___syscall6
     (i32.const 6)
     (local.get $1)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $1)
  )
  (local.get $0)
 )
 (func $___stdio_write (; 37 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local.set $6
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 32)
   )
  )
  (local.set $7
   (i32.add
    (local.get $6)
    (i32.const 16)
   )
  )
  (i32.store
   (local.tee $3
    (local.get $6)
   )
   (local.tee $4
    (i32.load
     (local.tee $9
      (i32.add
       (local.get $0)
       (i32.const 28)
      )
     )
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 4)
   )
   (local.tee $5
    (i32.sub
     (i32.load
      (local.tee $10
       (i32.add
        (local.get $0)
        (i32.const 20)
       )
      )
     )
     (local.get $4)
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 8)
   )
   (local.get $1)
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 12)
   )
   (local.get $2)
  )
  (local.set $12
   (i32.add
    (local.get $0)
    (i32.const 60)
   )
  )
  (local.set $4
   (i32.const 2)
  )
  (local.set $5
   (i32.add
    (local.get $2)
    (local.get $5)
   )
  )
  (local.set $1
   (local.get $3)
  )
  (block $__rjto$1
   (block $__rjti$1
    (loop $while-in
     (if
      (i32.ne
       (local.tee $3
        (if (result i32)
         (i32.and
          (call $___wasi_fd_write
           (i32.load
            (local.get $12)
           )
           (local.get $1)
           (local.get $4)
           (local.get $7)
          )
          (i32.const 65535)
         )
         (block (result i32)
          (i32.store
           (local.get $7)
           (i32.const -1)
          )
          (i32.const -1)
         )
         (i32.load
          (local.get $7)
         )
        )
       )
       (local.get $5)
      )
      (block
       (br_if $__rjti$1
        (i32.lt_s
         (local.get $3)
         (i32.const 0)
        )
       )
       (i32.store
        (local.tee $1
         (select
          (i32.add
           (local.get $1)
           (i32.const 8)
          )
          (local.get $1)
          (local.tee $11
           (i32.gt_u
            (local.get $3)
            (local.tee $8
             (i32.load
              (i32.add
               (local.get $1)
               (i32.const 4)
              )
             )
            )
           )
          )
         )
        )
        (i32.add
         (local.tee $8
          (i32.sub
           (local.get $3)
           (select
            (local.get $8)
            (i32.const 0)
            (local.get $11)
           )
          )
         )
         (i32.load
          (local.get $1)
         )
        )
       )
       (i32.store
        (local.tee $13
         (i32.add
          (local.get $1)
          (i32.const 4)
         )
        )
        (i32.sub
         (i32.load
          (local.get $13)
         )
         (local.get $8)
        )
       )
       (local.set $4
        (i32.add
         (local.get $4)
         (i32.shr_s
          (i32.shl
           (local.get $11)
           (i32.const 31)
          )
          (i32.const 31)
         )
        )
       )
       (local.set $5
        (i32.sub
         (local.get $5)
         (local.get $3)
        )
       )
       (br $while-in)
      )
     )
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 16)
     )
     (i32.add
      (local.tee $1
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 44)
        )
       )
      )
      (i32.load
       (i32.add
        (local.get $0)
        (i32.const 48)
       )
      )
     )
    )
    (i32.store
     (local.get $9)
     (local.get $1)
    )
    (i32.store
     (local.get $10)
     (local.get $1)
    )
    (br $__rjto$1)
   )
   (i32.store
    (i32.add
     (local.get $0)
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.store
    (local.get $9)
    (i32.const 0)
   )
   (i32.store
    (local.get $10)
    (i32.const 0)
   )
   (i32.store
    (local.get $0)
    (i32.or
     (i32.load
      (local.get $0)
     )
     (i32.const 32)
    )
   )
   (local.set $2
    (if (result i32)
     (i32.eq
      (local.get $4)
      (i32.const 2)
     )
     (i32.const 0)
     (i32.sub
      (local.get $2)
      (i32.load
       (i32.add
        (local.get $1)
        (i32.const 4)
       )
      )
     )
    )
   )
  )
  (global.set $STACKTOP
   (local.get $6)
  )
  (local.get $2)
 )
 (func $___stdio_seek (; 38 ;) (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 32)
   )
  )
  (i32.store
   (local.tee $3
    (i32.add
     (local.get $4)
     (i32.const 8)
    )
   )
   (i32.load
    (i32.add
     (local.get $0)
     (i32.const 60)
    )
   )
  )
  (i64.store32
   (i32.add
    (local.get $3)
    (i32.const 4)
   )
   (i64.shr_u
    (local.get $1)
    (i64.const 32)
   )
  )
  (i64.store32
   (i32.add
    (local.get $3)
    (i32.const 8)
   )
   (local.get $1)
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 12)
   )
   (local.tee $0
    (local.get $4)
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 16)
   )
   (local.get $2)
  )
  (local.set $1
   (if (result i64)
    (i32.lt_s
     (call $___syscall_ret
      (call $___syscall140
       (i32.const 140)
       (local.get $3)
      )
     )
     (i32.const 0)
    )
    (block (result i64)
     (i64.store
      (local.get $0)
      (i64.const -1)
     )
     (i64.const -1)
    )
    (i64.load
     (local.get $0)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $4)
  )
  (local.get $1)
 )
 (func $___syscall_ret (; 39 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (if (result i32)
   (i32.gt_u
    (local.get $0)
    (i32.const -4096)
   )
   (block (result i32)
    (i32.store
     (i32.const 3844)
     (i32.sub
      (i32.const 0)
      (local.get $0)
     )
    )
    (i32.const -1)
   )
   (local.get $0)
  )
 )
 (func $___errno_location (; 40 ;) (; has Stack IR ;) (result i32)
  (i32.const 3844)
 )
 (func $___stdio_read (; 41 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local.set $7
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 32)
   )
  )
  (i32.store
   (local.tee $3
    (local.get $7)
   )
   (local.get $1)
  )
  (i32.store
   (local.tee $6
    (i32.add
     (local.get $3)
     (i32.const 4)
    )
   )
   (i32.sub
    (local.get $2)
    (i32.ne
     (local.tee $4
      (i32.load
       (local.tee $8
        (i32.add
         (local.get $0)
         (i32.const 48)
        )
       )
      )
     )
     (i32.const 0)
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 8)
   )
   (i32.load
    (local.tee $5
     (i32.add
      (local.get $0)
      (i32.const 44)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 12)
   )
   (local.get $4)
  )
  (i32.store
   (local.tee $4
    (i32.add
     (local.get $3)
     (i32.const 16)
    )
   )
   (i32.load
    (i32.add
     (local.get $0)
     (i32.const 60)
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $4)
    (i32.const 4)
   )
   (local.get $3)
  )
  (i32.store
   (i32.add
    (local.get $4)
    (i32.const 8)
   )
   (i32.const 2)
  )
  (if
   (i32.lt_s
    (local.tee $3
     (call $___syscall_ret
      (call $___syscall145
       (i32.const 145)
       (local.get $4)
      )
     )
    )
    (i32.const 1)
   )
   (block
    (i32.store
     (local.get $0)
     (i32.or
      (i32.load
       (local.get $0)
      )
      (i32.xor
       (i32.and
        (local.get $3)
        (i32.const 48)
       )
       (i32.const 16)
      )
     )
    )
    (local.set $2
     (local.get $3)
    )
   )
   (if
    (i32.gt_u
     (local.get $3)
     (local.tee $6
      (i32.load
       (local.get $6)
      )
     )
    )
    (block
     (i32.store
      (local.tee $4
       (i32.add
        (local.get $0)
        (i32.const 4)
       )
      )
      (local.tee $5
       (i32.load
        (local.get $5)
       )
      )
     )
     (i32.store
      (i32.add
       (local.get $0)
       (i32.const 8)
      )
      (i32.add
       (local.get $5)
       (i32.sub
        (local.get $3)
        (local.get $6)
       )
      )
     )
     (if
      (i32.load
       (local.get $8)
      )
      (block
       (i32.store
        (local.get $4)
        (i32.add
         (local.get $5)
         (i32.const 1)
        )
       )
       (i32.store8
        (i32.add
         (local.get $1)
         (i32.add
          (local.get $2)
          (i32.const -1)
         )
        )
        (i32.load8_s
         (local.get $5)
        )
       )
      )
     )
    )
    (local.set $2
     (local.get $3)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $7)
  )
  (local.get $2)
 )
 (func $___emscripten_stdout_close (; 42 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (i32.const 0)
 )
 (func $___emscripten_stdout_seek (; 43 ;) (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i64)
  (i64.const 0)
 )
 (func $_isdigit (; 44 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (i32.lt_u
   (i32.add
    (local.get $0)
    (i32.const -48)
   )
   (i32.const 10)
  )
 )
 (func $_strcmp (; 45 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $0
   (if (result i32)
    (i32.or
     (i32.ne
      (local.tee $2
       (i32.load8_s
        (local.get $0)
       )
      )
      (local.tee $3
       (i32.load8_s
        (local.get $1)
       )
      )
     )
     (i32.eqz
      (local.get $2)
     )
    )
    (block (result i32)
     (local.set $1
      (local.get $2)
     )
     (local.get $3)
    )
    (loop $while-in (result i32)
     (if (result i32)
      (i32.or
       (i32.ne
        (local.tee $2
         (i32.load8_s
          (local.tee $0
           (i32.add
            (local.get $0)
            (i32.const 1)
           )
          )
         )
        )
        (local.tee $3
         (i32.load8_s
          (local.tee $1
           (i32.add
            (local.get $1)
            (i32.const 1)
           )
          )
         )
        )
       )
       (i32.eqz
        (local.get $2)
       )
      )
      (block (result i32)
       (local.set $1
        (local.get $2)
       )
       (local.get $3)
      )
      (br $while-in)
     )
    )
   )
  )
  (i32.sub
   (i32.and
    (local.get $1)
    (i32.const 255)
   )
   (i32.and
    (local.get $0)
    (i32.const 255)
   )
  )
 )
 (func $_strlen (; 46 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $__rjto$0
   (block $__rjti$0
    (br_if $__rjti$0
     (i32.eqz
      (i32.and
       (local.tee $2
        (local.get $0)
       )
       (i32.const 3)
      )
     )
    )
    (local.set $1
     (local.get $0)
    )
    (block $label$break$L1
     (loop $while-in
      (br_if $label$break$L1
       (i32.eqz
        (i32.load8_s
         (local.get $1)
        )
       )
      )
      (br_if $while-in
       (i32.and
        (local.tee $0
         (local.tee $1
          (i32.add
           (local.get $1)
           (i32.const 1)
          )
         )
        )
        (i32.const 3)
       )
      )
     )
     (local.set $0
      (local.get $1)
     )
     (br $__rjti$0)
    )
    (br $__rjto$0)
   )
   (loop $while-in1
    (local.set $1
     (i32.add
      (local.get $0)
      (i32.const 4)
     )
    )
    (if
     (i32.eqz
      (i32.and
       (i32.add
        (local.tee $3
         (i32.load
          (local.get $0)
         )
        )
        (i32.const -16843009)
       )
       (i32.xor
        (i32.and
         (local.get $3)
         (i32.const -2139062144)
        )
        (i32.const -2139062144)
       )
      )
     )
     (block
      (local.set $0
       (local.get $1)
      )
      (br $while-in1)
     )
    )
   )
   (if
    (i32.and
     (local.get $3)
     (i32.const 255)
    )
    (loop $while-in3
     (br_if $while-in3
      (i32.load8_s
       (local.tee $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
  )
  (i32.sub
   (local.get $0)
   (local.get $2)
  )
 )
 (func $_fwrite (; 47 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local.set $2
   (i32.mul
    (local.get $1)
    (local.get $2)
   )
  )
  (if
   (i32.ne
    (local.get $2)
    (local.tee $0
     (block (result i32)
      (drop
       (i32.load offset=76
        (local.get $3)
       )
      )
      (call $___fwritex
       (local.get $0)
       (local.get $2)
       (local.get $3)
      )
     )
    )
   )
   (drop
    (i32.div_u
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $___unlist_locked_file (; 48 ;) (; has Stack IR ;) (param $0 i32)
  (local $1 i32)
  (if
   (i32.load offset=68
    (local.get $0)
   )
   (block
    (local.set $1
     (i32.add
      (local.get $0)
      (i32.const 128)
     )
    )
    (if
     (local.tee $0
      (i32.load offset=132
       (local.get $0)
      )
     )
     (i32.store offset=128
      (local.get $0)
      (i32.load
       (local.get $1)
      )
     )
    )
    (i32.store
     (if (result i32)
      (local.tee $1
       (i32.load
        (local.get $1)
       )
      )
      (i32.add
       (local.get $1)
       (i32.const 132)
      )
      (i32.const 2124)
     )
     (local.get $0)
    )
   )
  )
 )
 (func $___towrite (; 49 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (i32.load8_s
    (local.tee $2
     (i32.add
      (local.get $0)
      (i32.const 74)
     )
    )
   )
  )
  (i32.store8
   (local.get $2)
   (i32.or
    (local.get $1)
    (i32.add
     (local.get $1)
     (i32.const 255)
    )
   )
  )
  (if (result i32)
   (i32.and
    (local.tee $1
     (i32.load
      (local.get $0)
     )
    )
    (i32.const 8)
   )
   (block (result i32)
    (i32.store
     (local.get $0)
     (i32.or
      (local.get $1)
      (i32.const 32)
     )
    )
    (i32.const -1)
   )
   (block (result i32)
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 8)
     )
     (i32.const 0)
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 4)
     )
     (i32.const 0)
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 28)
     )
     (local.tee $1
      (i32.load
       (i32.add
        (local.get $0)
        (i32.const 44)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 20)
     )
     (local.get $1)
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 16)
     )
     (i32.add
      (local.get $1)
      (i32.load
       (i32.add
        (local.get $0)
        (i32.const 48)
       )
      )
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $___fwritex (; 50 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$break$L5
   (block $__rjti$0
    (br_if $__rjti$0
     (local.tee $3
      (i32.load
       (local.tee $4
        (i32.add
         (local.get $2)
         (i32.const 16)
        )
       )
      )
     )
    )
    (local.set $2
     (if (result i32)
      (call $___towrite
       (local.get $2)
      )
      (i32.const 0)
      (block
       (local.set $3
        (i32.load
         (local.get $4)
        )
       )
       (br $__rjti$0)
      )
     )
    )
    (br $label$break$L5)
   )
   (if
    (i32.lt_u
     (i32.sub
      (local.get $3)
      (local.tee $4
       (i32.load
        (local.tee $5
         (i32.add
          (local.get $2)
          (i32.const 20)
         )
        )
       )
      )
     )
     (local.get $1)
    )
    (block
     (local.set $3
      (i32.load
       (i32.add
        (local.get $2)
        (i32.const 36)
       )
      )
     )
     (local.set $2
      (call_indirect (type $i32_i32_i32_=>_i32)
       (local.get $2)
       (local.get $0)
       (local.get $1)
       (i32.add
        (i32.and
         (local.get $3)
         (i32.const 3)
        )
        (i32.const 6)
       )
      )
     )
     (br $label$break$L5)
    )
   )
   (local.set $2
    (if (result i32)
     (i32.or
      (i32.eqz
       (local.get $1)
      )
      (i32.lt_s
       (i32.load8_s
        (i32.add
         (local.get $2)
         (i32.const 75)
        )
       )
       (i32.const 0)
      )
     )
     (i32.const 0)
     (block $label$break$L10 (result i32)
      (local.set $3
       (local.get $1)
      )
      (loop $while-in
       (if
        (i32.ne
         (i32.load8_s
          (i32.add
           (local.get $0)
           (local.tee $6
            (i32.add
             (local.get $3)
             (i32.const -1)
            )
           )
          )
         )
         (i32.const 10)
        )
        (if
         (local.get $6)
         (block
          (local.set $3
           (local.get $6)
          )
          (br $while-in)
         )
         (br $label$break$L10
          (i32.const 0)
         )
        )
       )
      )
      (local.set $4
       (i32.load
        (i32.add
         (local.get $2)
         (i32.const 36)
        )
       )
      )
      (br_if $label$break$L5
       (i32.lt_u
        (local.tee $2
         (call_indirect (type $i32_i32_i32_=>_i32)
          (local.get $2)
          (local.get $0)
          (local.get $3)
          (i32.add
           (i32.and
            (local.get $4)
            (i32.const 3)
           )
           (i32.const 6)
          )
         )
        )
        (local.get $3)
       )
      )
      (local.set $0
       (i32.add
        (local.get $0)
        (local.get $3)
       )
      )
      (local.set $1
       (i32.sub
        (local.get $1)
        (local.get $3)
       )
      )
      (local.set $4
       (i32.load
        (local.get $5)
       )
      )
      (local.get $3)
     )
    )
   )
   (drop
    (call $_memcpy
     (local.get $4)
     (local.get $0)
     (local.get $1)
    )
   )
   (i32.store
    (local.get $5)
    (i32.add
     (local.get $1)
     (i32.load
      (local.get $5)
     )
    )
   )
   (local.set $2
    (i32.add
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $2)
 )
 (func $_fopen (; 51 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $3
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 48)
   )
  )
  (local.set $5
   (i32.add
    (local.get $3)
    (i32.const 32)
   )
  )
  (local.set $4
   (i32.add
    (local.get $3)
    (i32.const 16)
   )
  )
  (local.set $2
   (local.get $3)
  )
  (local.set $0
   (if (result i32)
    (call $_strchr
     (i32.const 2380)
     (i32.load8_s
      (local.get $1)
     )
    )
    (block (result i32)
     (local.set $6
      (call $___fmodeflags
       (local.get $1)
      )
     )
     (i32.store
      (local.get $2)
      (local.get $0)
     )
     (i32.store offset=4
      (local.get $2)
      (i32.or
       (local.get $6)
       (i32.const 32768)
      )
     )
     (i32.store offset=8
      (local.get $2)
      (i32.const 438)
     )
     (if (result i32)
      (i32.lt_s
       (local.tee $2
        (call $___syscall_ret
         (call $___syscall5
          (i32.const 5)
          (local.get $2)
         )
        )
       )
       (i32.const 0)
      )
      (i32.const 0)
      (block (result i32)
       (if
        (i32.and
         (local.get $6)
         (i32.const 524288)
        )
        (block
         (i32.store
          (local.get $4)
          (local.get $2)
         )
         (i32.store offset=4
          (local.get $4)
          (i32.const 2)
         )
         (i32.store offset=8
          (local.get $4)
          (i32.const 1)
         )
         (drop
          (call $___syscall221
           (i32.const 221)
           (local.get $4)
          )
         )
        )
       )
       (if (result i32)
        (local.tee $0
         (call $___fdopen
          (local.get $2)
          (local.get $1)
         )
        )
        (local.get $0)
        (block (result i32)
         (i32.store
          (local.get $5)
          (local.get $2)
         )
         (drop
          (call $___syscall6
           (i32.const 6)
           (local.get $5)
          )
         )
         (i32.const 0)
        )
       )
      )
     )
    )
    (block (result i32)
     (i32.store
      (i32.const 3844)
      (i32.const 22)
     )
     (i32.const 0)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $3)
  )
  (local.get $0)
 )
 (func $_strchr (; 52 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (select
   (local.tee $0
    (call $___strchrnul
     (local.get $0)
     (local.get $1)
    )
   )
   (i32.const 0)
   (i32.eq
    (i32.load8_u
     (local.get $0)
    )
    (i32.and
     (local.get $1)
     (i32.const 255)
    )
   )
  )
 )
 (func $___fmodeflags (; 53 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (i32.eqz
    (call $_strchr
     (local.get $0)
     (i32.const 43)
    )
   )
  )
  (select
   (i32.or
    (local.tee $0
     (select
      (i32.or
       (local.tee $0
        (select
         (local.tee $0
          (select
           (local.tee $1
            (select
             (local.tee $1
              (select
               (i32.ne
                (local.tee $2
                 (i32.load8_s
                  (local.get $0)
                 )
                )
                (i32.const 114)
               )
               (i32.const 2)
               (local.get $1)
              )
             )
             (i32.or
              (local.get $1)
              (i32.const 128)
             )
             (i32.eqz
              (call $_strchr
               (local.get $0)
               (i32.const 120)
              )
             )
            )
           )
           (i32.or
            (local.get $1)
            (i32.const 524288)
           )
           (i32.eqz
            (call $_strchr
             (local.get $0)
             (i32.const 101)
            )
           )
          )
         )
         (i32.or
          (local.get $0)
          (i32.const 64)
         )
         (i32.eq
          (local.get $2)
          (i32.const 114)
         )
        )
       )
       (i32.const 512)
      )
      (local.get $0)
      (i32.eq
       (local.get $2)
       (i32.const 119)
      )
     )
    )
    (i32.const 1024)
   )
   (local.get $0)
   (i32.eq
    (local.get $2)
    (i32.const 97)
   )
  )
 )
 (func $___fdopen (; 54 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local.set $3
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.sub
    (global.get $STACKTOP)
    (i32.const -64)
   )
  )
  (local.set $5
   (i32.add
    (local.get $3)
    (i32.const 40)
   )
  )
  (local.set $6
   (i32.add
    (local.get $3)
    (i32.const 24)
   )
  )
  (local.set $7
   (i32.add
    (local.get $3)
    (i32.const 16)
   )
  )
  (local.set $4
   (local.get $3)
  )
  (local.set $8
   (i32.add
    (local.get $3)
    (i32.const 56)
   )
  )
  (if
   (call $_strchr
    (i32.const 2380)
    (i32.load8_s
     (local.get $1)
    )
   )
   (if
    (local.tee $2
     (call $_malloc
      (i32.const 1176)
     )
    )
    (block
     (drop
      (call $_memset
       (local.get $2)
       (i32.const 0)
       (i32.const 144)
      )
     )
     (if
      (i32.eqz
       (call $_strchr
        (local.get $1)
        (i32.const 43)
       )
      )
      (i32.store
       (local.get $2)
       (select
        (i32.const 8)
        (i32.const 4)
        (i32.eq
         (i32.load8_s
          (local.get $1)
         )
         (i32.const 114)
        )
       )
      )
     )
     (if
      (call $_strchr
       (local.get $1)
       (i32.const 101)
      )
      (block
       (i32.store
        (local.get $4)
        (local.get $0)
       )
       (i32.store offset=4
        (local.get $4)
        (i32.const 2)
       )
       (i32.store offset=8
        (local.get $4)
        (i32.const 1)
       )
       (drop
        (call $___syscall221
         (i32.const 221)
         (local.get $4)
        )
       )
      )
     )
     (if
      (i32.eq
       (i32.load8_s
        (local.get $1)
       )
       (i32.const 97)
      )
      (block
       (i32.store
        (local.get $7)
        (local.get $0)
       )
       (i32.store offset=4
        (local.get $7)
        (i32.const 3)
       )
       (if
        (i32.eqz
         (i32.and
          (local.tee $1
           (call $___syscall221
            (i32.const 221)
            (local.get $7)
           )
          )
          (i32.const 1024)
         )
        )
        (block
         (i32.store
          (local.get $6)
          (local.get $0)
         )
         (i32.store offset=4
          (local.get $6)
          (i32.const 4)
         )
         (i32.store offset=8
          (local.get $6)
          (i32.or
           (local.get $1)
           (i32.const 1024)
          )
         )
         (drop
          (call $___syscall221
           (i32.const 221)
           (local.get $6)
          )
         )
        )
       )
       (i32.store
        (local.get $2)
        (local.tee $1
         (i32.or
          (i32.load
           (local.get $2)
          )
          (i32.const 128)
         )
        )
       )
      )
      (local.set $1
       (i32.load
        (local.get $2)
       )
      )
     )
     (i32.store offset=60
      (local.get $2)
      (local.get $0)
     )
     (i32.store offset=44
      (local.get $2)
      (i32.add
       (local.get $2)
       (i32.const 152)
      )
     )
     (i32.store offset=48
      (local.get $2)
      (i32.const 1024)
     )
     (i32.store8
      (local.tee $4
       (i32.add
        (local.get $2)
        (i32.const 75)
       )
      )
      (i32.const -1)
     )
     (if
      (i32.eqz
       (i32.and
        (local.get $1)
        (i32.const 8)
       )
      )
      (block
       (i32.store
        (local.get $5)
        (local.get $0)
       )
       (i32.store offset=4
        (local.get $5)
        (i32.const 21523)
       )
       (i32.store offset=8
        (local.get $5)
        (local.get $8)
       )
       (if
        (i32.eqz
         (call $___syscall54
          (i32.const 54)
          (local.get $5)
         )
        )
        (i32.store8
         (local.get $4)
         (i32.const 10)
        )
       )
      )
     )
     (i32.store offset=32
      (local.get $2)
      (i32.const 3)
     )
     (i32.store offset=36
      (local.get $2)
      (i32.const 1)
     )
     (i32.store offset=40
      (local.get $2)
      (i32.const 1)
     )
     (i32.store offset=12
      (local.get $2)
      (i32.const 1)
     )
     (if
      (i32.eqz
       (i32.load
        (i32.const 3784)
       )
      )
      (i32.store offset=76
       (local.get $2)
       (i32.const -1)
      )
     )
     (call $___ofl_add
      (local.get $2)
     )
    )
    (local.set $2
     (i32.const 0)
    )
   )
   (i32.store
    (i32.const 3844)
    (i32.const 22)
   )
  )
  (global.set $STACKTOP
   (local.get $3)
  )
  (local.get $2)
 )
 (func $___ofl_add (; 55 ;) (; has Stack IR ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store offset=56
   (local.get $0)
   (i32.load
    (local.tee $1
     (call $___ofl_lock)
    )
   )
  )
  (if
   (local.tee $2
    (i32.load
     (local.get $1)
    )
   )
   (i32.store offset=52
    (local.get $2)
    (local.get $0)
   )
  )
  (i32.store
   (local.get $1)
   (local.get $0)
  )
  (call $___unlock
   (i32.const 3848)
  )
 )
 (func $___ofl_lock (; 56 ;) (; has Stack IR ;) (result i32)
  (call $___lock
   (i32.const 3848)
  )
  (i32.const 3856)
 )
 (func $___strchrnul (; 57 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (local.tee $2
    (i32.and
     (local.get $1)
     (i32.const 255)
    )
   )
   (block $label$break$L1
    (if
     (i32.and
      (local.get $0)
      (i32.const 3)
     )
     (block
      (local.set $3
       (i32.and
        (local.get $1)
        (i32.const 255)
       )
      )
      (loop $while-in
       (br_if $label$break$L1
        (i32.or
         (i32.eqz
          (local.tee $4
           (i32.load8_s
            (local.get $0)
           )
          )
         )
         (i32.eq
          (i32.shr_s
           (i32.shl
            (local.get $3)
            (i32.const 24)
           )
           (i32.const 24)
          )
          (local.get $4)
         )
        )
       )
       (br_if $while-in
        (i32.and
         (local.tee $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (i32.const 3)
        )
       )
      )
     )
    )
    (local.set $3
     (i32.mul
      (local.get $2)
      (i32.const 16843009)
     )
    )
    (if
     (i32.eqz
      (i32.and
       (i32.add
        (local.tee $2
         (i32.load
          (local.get $0)
         )
        )
        (i32.const -16843009)
       )
       (i32.xor
        (i32.and
         (local.get $2)
         (i32.const -2139062144)
        )
        (i32.const -2139062144)
       )
      )
     )
     (loop $while-in2
      (if
       (i32.eqz
        (i32.and
         (i32.add
          (local.tee $2
           (i32.xor
            (local.get $2)
            (local.get $3)
           )
          )
          (i32.const -16843009)
         )
         (i32.xor
          (i32.and
           (local.get $2)
           (i32.const -2139062144)
          )
          (i32.const -2139062144)
         )
        )
       )
       (br_if $while-in2
        (i32.eqz
         (i32.and
          (i32.add
           (local.tee $2
            (i32.load
             (local.tee $0
              (i32.add
               (local.get $0)
               (i32.const 4)
              )
             )
            )
           )
           (i32.const -16843009)
          )
          (i32.xor
           (i32.and
            (local.get $2)
            (i32.const -2139062144)
           )
           (i32.const -2139062144)
          )
         )
        )
       )
      )
     )
    )
    (local.set $2
     (i32.and
      (local.get $1)
      (i32.const 255)
     )
    )
    (loop $while-in4
     (local.set $1
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (if
      (i32.eqz
       (i32.or
        (i32.eqz
         (local.tee $3
          (i32.load8_s
           (local.get $0)
          )
         )
        )
        (i32.eq
         (i32.shr_s
          (i32.shl
           (local.get $2)
           (i32.const 24)
          )
          (i32.const 24)
         )
         (local.get $3)
        )
       )
      )
      (block
       (local.set $0
        (local.get $1)
       )
       (br $while-in4)
      )
     )
    )
   )
   (local.set $0
    (i32.add
     (call $_strlen
      (local.get $0)
     )
     (local.get $0)
    )
   )
  )
  (local.get $0)
 )
 (func $_fclose (; 58 ;) (; has Stack IR ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (drop
   (if (result i32)
    (i32.gt_s
     (i32.load offset=76
      (local.get $0)
     )
     (i32.const -1)
    )
    (i32.const 1)
    (i32.const 0)
   )
  )
  (call $___unlist_locked_file
   (local.get $0)
  )
  (if
   (i32.eqz
    (local.tee $4
     (i32.ne
      (i32.and
       (i32.load
        (local.get $0)
       )
       (i32.const 1)
      )
      (i32.const 0)
     )
    )
   )
   (block
    (local.set $3
     (call $___ofl_lock)
    )
    (local.set $2
     (i32.add
      (local.get $0)
      (i32.const 56)
     )
    )
    (if
     (local.tee $1
      (i32.load offset=52
       (local.get $0)
      )
     )
     (i32.store offset=56
      (local.get $1)
      (i32.load
       (local.get $2)
      )
     )
    )
    (if
     (local.tee $2
      (i32.load
       (local.get $2)
      )
     )
     (i32.store offset=52
      (local.get $2)
      (local.get $1)
     )
    )
    (local.set $1
     (local.get $2)
    )
    (if
     (i32.eq
      (local.get $0)
      (i32.load
       (local.get $3)
      )
     )
     (i32.store
      (local.get $3)
      (local.get $1)
     )
    )
    (call $___unlock
     (i32.const 3848)
    )
   )
  )
  (drop
   (call $_fflush
    (local.get $0)
   )
  )
  (drop
   (call_indirect (type $i32_=>_i32)
    (local.get $0)
    (i32.and
     (i32.load offset=12
      (local.get $0)
     )
     (i32.const 3)
    )
   )
  )
  (if
   (local.tee $1
    (i32.load offset=96
     (local.get $0)
    )
   )
   (call $_free
    (local.get $1)
   )
  )
  (if
   (i32.eqz
    (local.get $4)
   )
   (call $_free
    (local.get $0)
   )
  )
 )
 (func $_fflush (; 59 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (local.get $0)
   (local.set $0
    (block $do-once (result i32)
     (if
      (i32.le_s
       (i32.load offset=76
        (local.get $0)
       )
       (i32.const -1)
      )
      (br $do-once
       (call $___fflush_unlocked
        (local.get $0)
       )
      )
     )
     (call $___fflush_unlocked
      (local.get $0)
     )
    )
   )
   (block
    (local.set $0
     (if (result i32)
      (i32.load
       (i32.const 1888)
      )
      (call $_fflush
       (i32.load
        (i32.const 1888)
       )
      )
      (i32.const 0)
     )
    )
    (if
     (local.tee $1
      (i32.load
       (call $___ofl_lock)
      )
     )
     (loop $while-in
      (drop
       (if (result i32)
        (i32.gt_s
         (i32.load offset=76
          (local.get $1)
         )
         (i32.const -1)
        )
        (i32.const 1)
        (i32.const 0)
       )
      )
      (if
       (i32.gt_u
        (i32.load offset=20
         (local.get $1)
        )
        (i32.load offset=28
         (local.get $1)
        )
       )
       (local.set $0
        (i32.or
         (call $___fflush_unlocked
          (local.get $1)
         )
         (local.get $0)
        )
       )
      )
      (br_if $while-in
       (local.tee $1
        (i32.load offset=56
         (local.get $1)
        )
       )
      )
     )
    )
    (call $___unlock
     (i32.const 3848)
    )
   )
  )
  (local.get $0)
 )
 (func $___fflush_unlocked (; 60 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $__rjto$0 (result i32)
   (block $__rjti$0
    (br_if $__rjti$0
     (i32.le_u
      (i32.load
       (local.tee $2
        (i32.add
         (local.get $0)
         (i32.const 20)
        )
       )
      )
      (i32.load
       (local.tee $3
        (i32.add
         (local.get $0)
         (i32.const 28)
        )
       )
      )
     )
    )
    (local.set $1
     (i32.load
      (i32.add
       (local.get $0)
       (i32.const 36)
      )
     )
    )
    (drop
     (call_indirect (type $i32_i32_i32_=>_i32)
      (local.get $0)
      (i32.const 0)
      (i32.const 0)
      (i32.add
       (i32.and
        (local.get $1)
        (i32.const 3)
       )
       (i32.const 6)
      )
     )
    )
    (br_if $__rjti$0
     (i32.load
      (local.get $2)
     )
    )
    (br $__rjto$0
     (i32.const -1)
    )
   )
   (if
    (i32.lt_u
     (local.tee $4
      (i32.load
       (local.tee $1
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
      )
     )
     (local.tee $6
      (i32.load
       (local.tee $5
        (i32.add
         (local.get $0)
         (i32.const 8)
        )
       )
      )
     )
    )
    (block
     (local.set $7
      (i32.load
       (i32.add
        (local.get $0)
        (i32.const 40)
       )
      )
     )
     (drop
      (call_indirect (type $i32_i64_i32_=>_i64)
       (local.get $0)
       (i64.extend_i32_s
        (i32.sub
         (local.get $4)
         (local.get $6)
        )
       )
       (i32.const 1)
       (i32.add
        (i32.and
         (local.get $7)
         (i32.const 3)
        )
        (i32.const 10)
       )
      )
     )
    )
   )
   (i32.store
    (i32.add
     (local.get $0)
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.store
    (local.get $3)
    (i32.const 0)
   )
   (i32.store
    (local.get $2)
    (i32.const 0)
   )
   (i32.store
    (local.get $5)
    (i32.const 0)
   )
   (i32.store
    (local.get $1)
    (i32.const 0)
   )
   (i32.const 0)
  )
 )
 (func $___toread (; 61 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (i32.load8_s
    (local.tee $2
     (i32.add
      (local.get $0)
      (i32.const 74)
     )
    )
   )
  )
  (i32.store8
   (local.get $2)
   (i32.or
    (local.get $1)
    (i32.add
     (local.get $1)
     (i32.const 255)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load
     (local.tee $1
      (i32.add
       (local.get $0)
       (i32.const 20)
      )
     )
    )
    (i32.load
     (local.tee $2
      (i32.add
       (local.get $0)
       (i32.const 28)
      )
     )
    )
   )
   (block
    (local.set $3
     (i32.load
      (i32.add
       (local.get $0)
       (i32.const 36)
      )
     )
    )
    (drop
     (call_indirect (type $i32_i32_i32_=>_i32)
      (local.get $0)
      (i32.const 0)
      (i32.const 0)
      (i32.add
       (i32.and
        (local.get $3)
        (i32.const 3)
       )
       (i32.const 6)
      )
     )
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $0)
    (i32.const 16)
   )
   (i32.const 0)
  )
  (i32.store
   (local.get $2)
   (i32.const 0)
  )
  (i32.store
   (local.get $1)
   (i32.const 0)
  )
  (if (result i32)
   (i32.and
    (local.tee $1
     (i32.load
      (local.get $0)
     )
    )
    (i32.const 4)
   )
   (block (result i32)
    (i32.store
     (local.get $0)
     (i32.or
      (local.get $1)
      (i32.const 32)
     )
    )
    (i32.const -1)
   )
   (block (result i32)
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 8)
     )
     (local.tee $2
      (i32.add
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 44)
        )
       )
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 48)
        )
       )
      )
     )
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 4)
     )
     (local.get $2)
    )
    (i32.shr_s
     (i32.shl
      (local.get $1)
      (i32.const 27)
     )
     (i32.const 31)
    )
   )
  )
 )
 (func $_memchr (; 62 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $__rjto$3
   (block $__rjti$3
    (block $__rjti$2
     (if
      (i32.and
       (local.tee $2
        (i32.ne
         (local.get $1)
         (i32.const 0)
        )
       )
       (i32.ne
        (i32.and
         (local.get $0)
         (i32.const 3)
        )
        (i32.const 0)
       )
      )
      (loop $while-in
       (br_if $__rjti$2
        (i32.eqz
         (i32.load8_u
          (local.get $0)
         )
        )
       )
       (br_if $while-in
        (i32.and
         (local.tee $2
          (i32.ne
           (local.tee $1
            (i32.add
             (local.get $1)
             (i32.const -1)
            )
           )
           (i32.const 0)
          )
         )
         (i32.ne
          (i32.and
           (local.tee $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
           (i32.const 3)
          )
          (i32.const 0)
         )
        )
       )
      )
     )
     (br_if $__rjti$3
      (i32.eqz
       (local.get $2)
      )
     )
    )
    (if
     (i32.eqz
      (i32.load8_u
       (local.get $0)
      )
     )
     (block
      (br_if $__rjti$3
       (i32.eqz
        (local.get $1)
       )
      )
      (br $__rjto$3)
     )
    )
    (block $__rjto$0
     (block $__rjti$0
      (br_if $__rjti$0
       (i32.le_u
        (local.get $1)
        (i32.const 3)
       )
      )
      (loop $while-in3
       (if
        (i32.eqz
         (i32.and
          (i32.add
           (local.tee $2
            (i32.load
             (local.get $0)
            )
           )
           (i32.const -16843009)
          )
          (i32.xor
           (i32.and
            (local.get $2)
            (i32.const -2139062144)
           )
           (i32.const -2139062144)
          )
         )
        )
        (block
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 4)
          )
         )
         (br_if $while-in3
          (i32.gt_u
           (local.tee $1
            (i32.add
             (local.get $1)
             (i32.const -4)
            )
           )
           (i32.const 3)
          )
         )
         (br $__rjti$0)
        )
       )
      )
      (br $__rjto$0)
     )
     (br_if $__rjti$3
      (i32.eqz
       (local.get $1)
      )
     )
    )
    (loop $while-in5
     (br_if $__rjto$3
      (i32.eqz
       (i32.load8_u
        (local.get $0)
       )
      )
     )
     (br_if $__rjti$3
      (i32.eqz
       (local.tee $1
        (i32.add
         (local.get $1)
         (i32.const -1)
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $while-in5)
    )
   )
   (local.set $0
    (i32.const 0)
   )
  )
  (local.get $0)
 )
 (func $_fseek (; 63 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (drop
   (i32.load offset=76
    (local.get $0)
   )
  )
  (call $___fseeko_unlocked
   (local.get $0)
   (local.get $1)
  )
 )
 (func $_fprintf (; 64 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  (i32.store
   (local.get $2)
   (local.get $1)
  )
  (call $___vfprintf_internal
   (local.get $0)
   (local.get $2)
  )
  (global.set $STACKTOP
   (local.get $2)
  )
 )
 (func $_fmt_fp (; 65 ;) (; has Stack IR ;) (param $0 i32) (param $1 f64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i64)
  (local $27 i64)
  (local $28 i32)
  (local.set $23
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 560)
   )
  )
  (local.set $7
   (i32.add
    (local.get $23)
    (i32.const 32)
   )
  )
  (local.set $18
   (local.tee $13
    (local.get $23)
   )
  )
  (i32.store
   (local.tee $10
    (i32.add
     (local.get $13)
     (i32.const 536)
    )
   )
   (i32.const 0)
  )
  (local.set $15
   (i32.add
    (local.tee $12
     (i32.add
      (local.get $13)
      (i32.const 540)
     )
    )
    (i32.const 12)
   )
  )
  (local.set $20
   (if (result i32)
    (i64.lt_s
     (local.tee $22
      (i64.reinterpret_f64
       (local.get $1)
      )
     )
     (i64.const 0)
    )
    (block (result i32)
     (local.set $22
      (i64.reinterpret_f64
       (local.tee $1
        (f64.neg
         (local.get $1)
        )
       )
      )
     )
     (local.set $19
      (i32.const 2401)
     )
     (i32.const 1)
    )
    (block (result i32)
     (local.set $19
      (select
       (i32.const 2404)
       (select
        (i32.const 2407)
        (i32.const 2402)
        (i32.and
         (local.get $4)
         (i32.const 1)
        )
       )
       (i32.and
        (local.get $4)
        (i32.const 2048)
       )
      )
     )
     (i32.ne
      (i32.and
       (local.get $4)
       (i32.const 2049)
      )
      (i32.const 0)
     )
    )
   )
  )
  (local.set $0
   (if (result i32)
    (i64.eq
     (i64.and
      (local.get $22)
      (i64.const 9218868437227405312)
     )
     (i64.const 9218868437227405312)
    )
    (block (result i32)
     (local.set $5
      (select
       (select
        (i32.const 2428)
        (i32.const 2432)
        (local.tee $3
         (i32.ne
          (i32.and
           (local.get $5)
           (i32.const 32)
          )
          (i32.const 0)
         )
        )
       )
       (select
        (i32.const 2420)
        (i32.const 2424)
        (local.get $3)
       )
       (f64.ne
        (local.get $1)
        (local.get $1)
       )
      )
     )
     (call $_pad_659
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.tee $3
       (i32.add
        (local.get $20)
        (i32.const 3)
       )
      )
      (i32.and
       (local.get $4)
       (i32.const -65537)
      )
     )
     (call $_out_653
      (local.get $0)
      (local.get $19)
      (local.get $20)
     )
     (call $_out_653
      (local.get $0)
      (local.get $5)
      (i32.const 3)
     )
     (call $_pad_659
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.get $3)
      (i32.xor
       (local.get $4)
       (i32.const 8192)
      )
     )
     (local.get $3)
    )
    (block $do-once (result i32)
     (if
      (local.tee $6
       (f64.ne
        (local.tee $1
         (f64.mul
          (call $_frexp
           (local.get $1)
           (local.get $10)
          )
          (f64.const 2)
         )
        )
        (f64.const 0)
       )
      )
      (i32.store
       (local.get $10)
       (i32.add
        (i32.load
         (local.get $10)
        )
        (i32.const -1)
       )
      )
     )
     (if
      (i32.eq
       (local.tee $14
        (i32.or
         (local.get $5)
         (i32.const 32)
        )
       )
       (i32.const 97)
      )
      (block
       (local.set $8
        (select
         (i32.add
          (local.get $19)
          (i32.const 9)
         )
         (local.get $19)
         (local.tee $11
          (i32.and
           (local.get $5)
           (i32.const 32)
          )
         )
        )
       )
       (if
        (i32.eqz
         (i32.or
          (i32.eqz
           (local.tee $7
            (i32.sub
             (i32.const 12)
             (local.get $3)
            )
           )
          )
          (i32.gt_u
           (local.get $3)
           (i32.const 11)
          )
         )
        )
        (block
         (local.set $16
          (f64.const 8)
         )
         (loop $while-in
          (local.set $16
           (f64.mul
            (local.get $16)
            (f64.const 16)
           )
          )
          (br_if $while-in
           (local.tee $7
            (i32.add
             (local.get $7)
             (i32.const -1)
            )
           )
          )
         )
         (local.set $1
          (if (result f64)
           (i32.eq
            (i32.load8_s
             (local.get $8)
            )
            (i32.const 45)
           )
           (f64.neg
            (f64.add
             (local.get $16)
             (f64.sub
              (f64.neg
               (local.get $1)
              )
              (local.get $16)
             )
            )
           )
           (f64.sub
            (f64.add
             (local.get $1)
             (local.get $16)
            )
            (local.get $16)
           )
          )
         )
        )
       )
       (local.set $9
        (i32.or
         (local.get $20)
         (i32.const 2)
        )
       )
       (if
        (i32.eq
         (local.get $15)
         (local.tee $7
          (call $_fmt_u
           (i64.extend_i32_s
            (select
             (i32.sub
              (i32.const 0)
              (local.tee $6
               (i32.load
                (local.get $10)
               )
              )
             )
             (local.get $6)
             (i32.lt_s
              (local.get $6)
              (i32.const 0)
             )
            )
           )
           (local.get $15)
          )
         )
        )
        (i32.store8
         (local.tee $7
          (i32.add
           (local.get $12)
           (i32.const 11)
          )
         )
         (i32.const 48)
        )
       )
       (i32.store8
        (i32.add
         (local.get $7)
         (i32.const -1)
        )
        (i32.add
         (i32.and
          (i32.shr_s
           (local.get $6)
           (i32.const 31)
          )
          (i32.const 2)
         )
         (i32.const 43)
        )
       )
       (i32.store8
        (local.tee $7
         (i32.add
          (local.get $7)
          (i32.const -2)
         )
        )
        (i32.add
         (local.get $5)
         (i32.const 15)
        )
       )
       (local.set $12
        (i32.lt_s
         (local.get $3)
         (i32.const 1)
        )
       )
       (local.set $10
        (i32.eqz
         (i32.and
          (local.get $4)
          (i32.const 8)
         )
        )
       )
       (local.set $5
        (local.get $13)
       )
       (loop $while-in3
        (i32.store8
         (local.get $5)
         (i32.or
          (local.get $11)
          (i32.load8_u
           (i32.add
            (local.tee $6
             (i32.trunc_f64_s
              (local.get $1)
             )
            )
            (i32.const 1488)
           )
          )
         )
        )
        (local.set $1
         (f64.mul
          (f64.sub
           (local.get $1)
           (f64.convert_i32_s
            (local.get $6)
           )
          )
          (f64.const 16)
         )
        )
        (local.set $5
         (if (result i32)
          (i32.eq
           (i32.sub
            (local.tee $6
             (i32.add
              (local.get $5)
              (i32.const 1)
             )
            )
            (local.get $18)
           )
           (i32.const 1)
          )
          (if (result i32)
           (i32.and
            (local.get $10)
            (i32.and
             (local.get $12)
             (f64.eq
              (local.get $1)
              (f64.const 0)
             )
            )
           )
           (local.get $6)
           (block (result i32)
            (i32.store8
             (local.get $6)
             (i32.const 46)
            )
            (i32.add
             (local.get $5)
             (i32.const 2)
            )
           )
          )
          (local.get $6)
         )
        )
        (br_if $while-in3
         (f64.ne
          (local.get $1)
          (f64.const 0)
         )
        )
       )
       (local.set $3
        (block $__rjto$0 (result i32)
         (block $__rjti$0
          (br_if $__rjti$0
           (i32.eqz
            (local.get $3)
           )
          )
          (br_if $__rjti$0
           (i32.ge_s
            (i32.add
             (local.get $5)
             (i32.sub
              (i32.const -2)
              (local.get $18)
             )
            )
            (local.get $3)
           )
          )
          (local.set $12
           (i32.sub
            (i32.add
             (local.get $15)
             (i32.add
              (local.get $3)
              (i32.const 2)
             )
            )
            (local.get $7)
           )
          )
          (br $__rjto$0
           (local.get $7)
          )
         )
         (local.set $12
          (i32.add
           (local.get $5)
           (i32.sub
            (i32.sub
             (local.get $15)
             (local.get $18)
            )
            (local.get $7)
           )
          )
         )
         (local.get $7)
        )
       )
       (call $_pad_659
        (local.get $0)
        (i32.const 32)
        (local.get $2)
        (local.tee $6
         (i32.add
          (local.get $9)
          (local.get $12)
         )
        )
        (local.get $4)
       )
       (call $_out_653
        (local.get $0)
        (local.get $8)
        (local.get $9)
       )
       (call $_pad_659
        (local.get $0)
        (i32.const 48)
        (local.get $2)
        (local.get $6)
        (i32.xor
         (local.get $4)
         (i32.const 65536)
        )
       )
       (call $_out_653
        (local.get $0)
        (local.get $13)
        (local.tee $5
         (i32.sub
          (local.get $5)
          (local.get $18)
         )
        )
       )
       (call $_pad_659
        (local.get $0)
        (i32.const 48)
        (i32.sub
         (local.get $12)
         (i32.add
          (local.get $5)
          (local.tee $3
           (i32.sub
            (local.get $15)
            (local.get $3)
           )
          )
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
       (call $_out_653
        (local.get $0)
        (local.get $7)
        (local.get $3)
       )
       (call $_pad_659
        (local.get $0)
        (i32.const 32)
        (local.get $2)
        (local.get $6)
        (i32.xor
         (local.get $4)
         (i32.const 8192)
        )
       )
       (br $do-once
        (local.get $6)
       )
      )
     )
     (if
      (local.get $6)
      (block
       (i32.store
        (local.get $10)
        (local.tee $8
         (i32.add
          (i32.load
           (local.get $10)
          )
          (i32.const -28)
         )
        )
       )
       (local.set $1
        (f64.mul
         (local.get $1)
         (f64.const 268435456)
        )
       )
      )
      (local.set $8
       (i32.load
        (local.get $10)
       )
      )
     )
     (local.set $6
      (local.tee $12
       (select
        (local.get $7)
        (i32.add
         (local.get $7)
         (i32.const 288)
        )
        (i32.lt_s
         (local.get $8)
         (i32.const 0)
        )
       )
      )
     )
     (loop $while-in5
      (i32.store
       (local.get $6)
       (local.tee $7
        (i32.trunc_f64_u
         (local.get $1)
        )
       )
      )
      (local.set $6
       (i32.add
        (local.get $6)
        (i32.const 4)
       )
      )
      (br_if $while-in5
       (f64.ne
        (local.tee $1
         (f64.mul
          (f64.sub
           (local.get $1)
           (f64.convert_i32_u
            (local.get $7)
           )
          )
          (f64.const 1e9)
         )
        )
        (f64.const 0)
       )
      )
     )
     (if
      (i32.gt_s
       (local.get $8)
       (i32.const 0)
      )
      (block
       (local.set $7
        (local.get $12)
       )
       (loop $while-in7
        (local.set $11
         (select
          (local.get $8)
          (i32.const 29)
          (i32.lt_s
           (local.get $8)
           (i32.const 29)
          )
         )
        )
        (if
         (i32.ge_u
          (local.tee $8
           (i32.add
            (local.get $6)
            (i32.const -4)
           )
          )
          (local.get $7)
         )
         (block
          (local.set $26
           (i64.extend_i32_u
            (local.get $11)
           )
          )
          (local.set $9
           (i32.const 0)
          )
          (loop $while-in9
           (local.set $22
            (i64.div_u
             (local.tee $27
              (i64.add
               (i64.extend_i32_u
                (local.get $9)
               )
               (i64.shl
                (i64.extend_i32_u
                 (i32.load
                  (local.get $8)
                 )
                )
                (local.get $26)
               )
              )
             )
             (i64.const 1000000000)
            )
           )
           (i64.store32
            (local.get $8)
            (i64.sub
             (local.get $27)
             (i64.mul
              (local.get $22)
              (i64.const 1000000000)
             )
            )
           )
           (local.set $9
            (i32.wrap_i64
             (local.get $22)
            )
           )
           (br_if $while-in9
            (i32.ge_u
             (local.tee $8
              (i32.add
               (local.get $8)
               (i32.const -4)
              )
             )
             (local.get $7)
            )
           )
          )
          (if
           (local.get $9)
           (i32.store
            (local.tee $7
             (i32.add
              (local.get $7)
              (i32.const -4)
             )
            )
            (local.get $9)
           )
          )
         )
        )
        (if
         (i32.gt_u
          (local.get $6)
          (local.get $7)
         )
         (block $label$break$L57
          (local.set $6
           (loop $while-in12 (result i32)
            (br_if $label$break$L57
             (i32.load
              (local.tee $8
               (i32.add
                (local.get $6)
                (i32.const -4)
               )
              )
             )
            )
            (if (result i32)
             (i32.gt_u
              (local.get $8)
              (local.get $7)
             )
             (block
              (local.set $6
               (local.get $8)
              )
              (br $while-in12)
             )
             (local.get $8)
            )
           )
          )
         )
        )
        (i32.store
         (local.get $10)
         (local.tee $8
          (i32.sub
           (i32.load
            (local.get $10)
           )
           (local.get $11)
          )
         )
        )
        (br_if $while-in7
         (i32.gt_s
          (local.get $8)
          (i32.const 0)
         )
        )
       )
      )
      (local.set $7
       (local.get $12)
      )
     )
     (local.set $11
      (select
       (i32.const 6)
       (local.get $3)
       (i32.lt_s
        (local.get $3)
        (i32.const 0)
       )
      )
     )
     (if
      (i32.lt_s
       (local.get $8)
       (i32.const 0)
      )
      (block
       (local.set $17
        (i32.add
         (i32.div_s
          (i32.add
           (local.get $11)
           (i32.const 25)
          )
          (i32.const 9)
         )
         (i32.const 1)
        )
       )
       (local.set $21
        (i32.eq
         (local.get $14)
         (i32.const 102)
        )
       )
       (local.set $3
        (local.get $6)
       )
       (loop $while-in14
        (local.set $9
         (select
          (local.tee $6
           (i32.sub
            (i32.const 0)
            (local.get $8)
           )
          )
          (i32.const 9)
          (i32.lt_s
           (local.get $6)
           (i32.const 9)
          )
         )
        )
        (local.set $8
         (select
          (i32.add
           (local.tee $7
            (select
             (local.get $12)
             (local.tee $3
              (if (result i32)
               (i32.lt_u
                (local.get $7)
                (local.get $3)
               )
               (block (result i32)
                (local.set $24
                 (i32.add
                  (i32.shl
                   (i32.const 1)
                   (local.get $9)
                  )
                  (i32.const -1)
                 )
                )
                (local.set $25
                 (i32.shr_u
                  (i32.const 1000000000)
                  (local.get $9)
                 )
                )
                (local.set $8
                 (i32.const 0)
                )
                (local.set $6
                 (local.get $7)
                )
                (loop $while-in16
                 (i32.store
                  (local.get $6)
                  (i32.add
                   (local.get $8)
                   (i32.shr_u
                    (local.tee $8
                     (i32.load
                      (local.get $6)
                     )
                    )
                    (local.get $9)
                   )
                  )
                 )
                 (local.set $8
                  (i32.mul
                   (local.get $25)
                   (i32.and
                    (local.get $8)
                    (local.get $24)
                   )
                  )
                 )
                 (br_if $while-in16
                  (i32.lt_u
                   (local.tee $6
                    (i32.add
                     (local.get $6)
                     (i32.const 4)
                    )
                   )
                   (local.get $3)
                  )
                 )
                )
                (local.set $7
                 (select
                  (local.get $7)
                  (i32.add
                   (local.get $7)
                   (i32.const 4)
                  )
                  (i32.load
                   (local.get $7)
                  )
                 )
                )
                (if (result i32)
                 (local.get $8)
                 (block (result i32)
                  (i32.store
                   (local.get $3)
                   (local.get $8)
                  )
                  (local.set $6
                   (i32.add
                    (local.get $3)
                    (i32.const 4)
                   )
                  )
                  (local.get $7)
                 )
                 (block (result i32)
                  (local.set $6
                   (local.get $3)
                  )
                  (local.get $7)
                 )
                )
               )
               (block (result i32)
                (local.set $6
                 (local.get $3)
                )
                (select
                 (local.get $7)
                 (i32.add
                  (local.get $7)
                  (i32.const 4)
                 )
                 (i32.load
                  (local.get $7)
                 )
                )
               )
              )
             )
             (local.get $21)
            )
           )
           (i32.shl
            (local.get $17)
            (i32.const 2)
           )
          )
          (local.get $6)
          (i32.gt_s
           (i32.shr_s
            (i32.sub
             (local.get $6)
             (local.get $7)
            )
            (i32.const 2)
           )
           (local.get $17)
          )
         )
        )
        (i32.store
         (local.get $10)
         (local.tee $6
          (i32.add
           (local.get $9)
           (i32.load
            (local.get $10)
           )
          )
         )
        )
        (if
         (i32.lt_s
          (local.get $6)
          (i32.const 0)
         )
         (block
          (local.set $7
           (local.get $3)
          )
          (local.set $3
           (local.get $8)
          )
          (local.set $8
           (local.get $6)
          )
          (br $while-in14)
         )
        )
       )
      )
      (block
       (local.set $3
        (local.get $7)
       )
       (local.set $8
        (local.get $6)
       )
      )
     )
     (local.set $17
      (local.get $12)
     )
     (if
      (i32.lt_u
       (local.get $3)
       (local.get $8)
      )
      (block
       (local.set $7
        (i32.mul
         (i32.shr_s
          (i32.sub
           (local.get $17)
           (local.get $3)
          )
          (i32.const 2)
         )
         (i32.const 9)
        )
       )
       (if
        (i32.ge_u
         (local.tee $9
          (i32.load
           (local.get $3)
          )
         )
         (i32.const 10)
        )
        (block
         (local.set $6
          (i32.const 10)
         )
         (loop $while-in18
          (local.set $7
           (i32.add
            (local.get $7)
            (i32.const 1)
           )
          )
          (br_if $while-in18
           (i32.ge_u
            (local.get $9)
            (local.tee $6
             (i32.mul
              (local.get $6)
              (i32.const 10)
             )
            )
           )
          )
         )
        )
       )
      )
      (local.set $7
       (i32.const 0)
      )
     )
     (local.set $7
      (if (result i32)
       (i32.lt_s
        (local.tee $6
         (i32.add
          (i32.sub
           (local.get $11)
           (select
            (i32.const 0)
            (local.get $7)
            (i32.eq
             (local.get $14)
             (i32.const 102)
            )
           )
          )
          (i32.shr_s
           (i32.shl
            (i32.and
             (local.tee $24
              (i32.eq
               (local.get $14)
               (i32.const 103)
              )
             )
             (local.tee $25
              (i32.ne
               (local.get $11)
               (i32.const 0)
              )
             )
            )
            (i32.const 31)
           )
           (i32.const 31)
          )
         )
        )
        (i32.add
         (i32.mul
          (i32.shr_s
           (i32.sub
            (local.get $8)
            (local.get $17)
           )
           (i32.const 2)
          )
          (i32.const 9)
         )
         (i32.const -9)
        )
       )
       (block (result i32)
        (local.set $14
         (i32.div_s
          (local.tee $6
           (i32.add
            (local.get $6)
            (i32.const 9216)
           )
          )
          (i32.const 9)
         )
        )
        (if
         (i32.lt_s
          (local.tee $6
           (i32.sub
            (local.get $6)
            (i32.mul
             (local.get $14)
             (i32.const 9)
            )
           )
          )
          (i32.const 8)
         )
         (block
          (local.set $9
           (i32.const 10)
          )
          (loop $while-in20
           (local.set $10
            (i32.add
             (local.get $6)
             (i32.const 1)
            )
           )
           (local.set $9
            (i32.mul
             (local.get $9)
             (i32.const 10)
            )
           )
           (if
            (i32.lt_s
             (local.get $6)
             (i32.const 7)
            )
            (block
             (local.set $6
              (local.get $10)
             )
             (br $while-in20)
            )
           )
          )
         )
         (local.set $9
          (i32.const 10)
         )
        )
        (local.set $21
         (i32.div_u
          (local.tee $14
           (i32.load
            (local.tee $6
             (i32.add
              (i32.add
               (i32.shl
                (local.get $14)
                (i32.const 2)
               )
               (local.get $12)
              )
              (i32.const -4092)
             )
            )
           )
          )
          (local.get $9)
         )
        )
        (if
         (i32.eqz
          (i32.and
           (local.tee $28
            (i32.eq
             (local.get $8)
             (i32.add
              (local.get $6)
              (i32.const 4)
             )
            )
           )
           (i32.eqz
            (local.tee $10
             (i32.sub
              (local.get $14)
              (i32.mul
               (local.get $9)
               (local.get $21)
              )
             )
            )
           )
          )
         )
         (block
          (local.set $1
           (select
            (f64.const 9007199254740994)
            (f64.const 9007199254740992)
            (i32.and
             (local.get $21)
             (i32.const 1)
            )
           )
          )
          (local.set $16
           (select
            (f64.const 0.5)
            (select
             (f64.const 1)
             (f64.const 1.5)
             (i32.and
              (local.get $28)
              (i32.eq
               (local.get $10)
               (local.tee $21
                (i32.shr_u
                 (local.get $9)
                 (i32.const 1)
                )
               )
              )
             )
            )
            (i32.lt_u
             (local.get $10)
             (local.get $21)
            )
           )
          )
          (if
           (local.get $20)
           (block
            (local.set $16
             (select
              (f64.neg
               (local.get $16)
              )
              (local.get $16)
              (local.tee $21
               (i32.eq
                (i32.load8_s
                 (local.get $19)
                )
                (i32.const 45)
               )
              )
             )
            )
            (local.set $1
             (select
              (f64.neg
               (local.get $1)
              )
              (local.get $1)
              (local.get $21)
             )
            )
           )
          )
          (i32.store
           (local.get $6)
           (local.tee $10
            (i32.sub
             (local.get $14)
             (local.get $10)
            )
           )
          )
          (if
           (f64.ne
            (f64.add
             (local.get $1)
             (local.get $16)
            )
            (local.get $1)
           )
           (block
            (i32.store
             (local.get $6)
             (local.tee $7
              (i32.add
               (local.get $9)
               (local.get $10)
              )
             )
            )
            (if
             (i32.gt_u
              (local.get $7)
              (i32.const 999999999)
             )
             (loop $while-in22
              (i32.store
               (local.get $6)
               (i32.const 0)
              )
              (if
               (i32.lt_u
                (local.tee $6
                 (i32.add
                  (local.get $6)
                  (i32.const -4)
                 )
                )
                (local.get $3)
               )
               (i32.store
                (local.tee $3
                 (i32.add
                  (local.get $3)
                  (i32.const -4)
                 )
                )
                (i32.const 0)
               )
              )
              (i32.store
               (local.get $6)
               (local.tee $7
                (i32.add
                 (i32.load
                  (local.get $6)
                 )
                 (i32.const 1)
                )
               )
              )
              (br_if $while-in22
               (i32.gt_u
                (local.get $7)
                (i32.const 999999999)
               )
              )
             )
            )
            (local.set $7
             (i32.mul
              (i32.shr_s
               (i32.sub
                (local.get $17)
                (local.get $3)
               )
               (i32.const 2)
              )
              (i32.const 9)
             )
            )
            (if
             (i32.ge_u
              (local.tee $10
               (i32.load
                (local.get $3)
               )
              )
              (i32.const 10)
             )
             (block
              (local.set $9
               (i32.const 10)
              )
              (loop $while-in24
               (local.set $7
                (i32.add
                 (local.get $7)
                 (i32.const 1)
                )
               )
               (br_if $while-in24
                (i32.ge_u
                 (local.get $10)
                 (local.tee $9
                  (i32.mul
                   (local.get $9)
                   (i32.const 10)
                  )
                 )
                )
               )
              )
             )
            )
           )
          )
         )
        )
        (local.set $9
         (local.get $7)
        )
        (local.set $6
         (select
          (local.tee $7
           (i32.add
            (local.get $6)
            (i32.const 4)
           )
          )
          (local.get $8)
          (i32.gt_u
           (local.get $8)
           (local.get $7)
          )
         )
        )
        (local.get $3)
       )
       (block (result i32)
        (local.set $9
         (local.get $7)
        )
        (local.set $6
         (local.get $8)
        )
        (local.get $3)
       )
      )
     )
     (local.set $14
      (if (result i32)
       (i32.gt_u
        (local.get $6)
        (local.get $7)
       )
       (block $label$break$L109 (result i32)
        (local.set $3
         (local.get $6)
        )
        (loop $while-in27 (result i32)
         (if
          (i32.load
           (local.tee $6
            (i32.add
             (local.get $3)
             (i32.const -4)
            )
           )
          )
          (block
           (local.set $6
            (local.get $3)
           )
           (br $label$break$L109
            (i32.const 1)
           )
          )
         )
         (if (result i32)
          (i32.gt_u
           (local.get $6)
           (local.get $7)
          )
          (block
           (local.set $3
            (local.get $6)
           )
           (br $while-in27)
          )
          (i32.const 0)
         )
        )
       )
       (i32.const 0)
      )
     )
     (local.set $3
      (if (result i32)
       (local.get $24)
       (block (result i32)
        (local.set $5
         (if (result i32)
          (i32.and
           (i32.gt_s
            (local.tee $3
             (i32.add
              (i32.and
               (i32.xor
                (local.get $25)
                (i32.const 1)
               )
               (i32.const 1)
              )
              (local.get $11)
             )
            )
            (local.get $9)
           )
           (i32.gt_s
            (local.get $9)
            (i32.const -5)
           )
          )
          (block (result i32)
           (local.set $10
            (i32.sub
             (i32.add
              (local.get $3)
              (i32.const -1)
             )
             (local.get $9)
            )
           )
           (i32.add
            (local.get $5)
            (i32.const -1)
           )
          )
          (block (result i32)
           (local.set $10
            (i32.add
             (local.get $3)
             (i32.const -1)
            )
           )
           (i32.add
            (local.get $5)
            (i32.const -2)
           )
          )
         )
        )
        (if (result i32)
         (i32.and
          (local.get $4)
          (i32.const 8)
         )
         (local.get $10)
         (block (result i32)
          (if
           (local.get $14)
           (if
            (local.tee $11
             (i32.load
              (i32.add
               (local.get $6)
               (i32.const -4)
              )
             )
            )
            (if
             (i32.rem_u
              (local.get $11)
              (i32.const 10)
             )
             (local.set $3
              (i32.const 0)
             )
             (block
              (local.set $3
               (i32.const 0)
              )
              (local.set $8
               (i32.const 10)
              )
              (loop $while-in31
               (local.set $3
                (i32.add
                 (local.get $3)
                 (i32.const 1)
                )
               )
               (br_if $while-in31
                (i32.eqz
                 (i32.rem_u
                  (local.get $11)
                  (local.tee $8
                   (i32.mul
                    (local.get $8)
                    (i32.const 10)
                   )
                  )
                 )
                )
               )
              )
             )
            )
            (local.set $3
             (i32.const 9)
            )
           )
           (local.set $3
            (i32.const 9)
           )
          )
          (local.set $8
           (i32.add
            (i32.mul
             (i32.shr_s
              (i32.sub
               (local.get $6)
               (local.get $17)
              )
              (i32.const 2)
             )
             (i32.const 9)
            )
            (i32.const -9)
           )
          )
          (if (result i32)
           (i32.eq
            (i32.or
             (local.get $5)
             (i32.const 32)
            )
            (i32.const 102)
           )
           (select
            (local.get $10)
            (local.tee $3
             (select
              (local.tee $3
               (i32.sub
                (local.get $8)
                (local.get $3)
               )
              )
              (i32.const 0)
              (i32.gt_s
               (local.get $3)
               (i32.const 0)
              )
             )
            )
            (i32.lt_s
             (local.get $10)
             (local.get $3)
            )
           )
           (select
            (local.get $10)
            (local.tee $3
             (select
              (local.tee $3
               (i32.sub
                (i32.add
                 (local.get $8)
                 (local.get $9)
                )
                (local.get $3)
               )
              )
              (i32.const 0)
              (i32.gt_s
               (local.get $3)
               (i32.const 0)
              )
             )
            )
            (i32.lt_s
             (local.get $10)
             (local.get $3)
            )
           )
          )
         )
        )
       )
       (local.get $11)
      )
     )
     (local.set $8
      (i32.sub
       (i32.const 0)
       (local.get $9)
      )
     )
     (call $_pad_659
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.tee $9
       (i32.add
        (if (result i32)
         (local.tee $11
          (i32.eq
           (i32.or
            (local.get $5)
            (i32.const 32)
           )
           (i32.const 102)
          )
         )
         (block (result i32)
          (local.set $8
           (i32.const 0)
          )
          (select
           (local.get $9)
           (i32.const 0)
           (i32.gt_s
            (local.get $9)
            (i32.const 0)
           )
          )
         )
         (block (result i32)
          (local.set $8
           (call $_fmt_u
            (i64.extend_i32_s
             (select
              (local.get $8)
              (local.get $9)
              (i32.lt_s
               (local.get $9)
               (i32.const 0)
              )
             )
            )
            (local.get $15)
           )
          )
          (if
           (i32.lt_s
            (i32.sub
             (local.tee $10
              (local.get $15)
             )
             (local.get $8)
            )
            (i32.const 2)
           )
           (loop $while-in33
            (i32.store8
             (local.tee $8
              (i32.add
               (local.get $8)
               (i32.const -1)
              )
             )
             (i32.const 48)
            )
            (br_if $while-in33
             (i32.lt_s
              (i32.sub
               (local.get $10)
               (local.get $8)
              )
              (i32.const 2)
             )
            )
           )
          )
          (i32.store8
           (i32.add
            (local.get $8)
            (i32.const -1)
           )
           (i32.add
            (i32.and
             (i32.shr_s
              (local.get $9)
              (i32.const 31)
             )
             (i32.const 2)
            )
            (i32.const 43)
           )
          )
          (i32.store8
           (local.tee $8
            (i32.add
             (local.get $8)
             (i32.const -2)
            )
           )
           (local.get $5)
          )
          (i32.sub
           (local.get $10)
           (local.get $8)
          )
         )
        )
        (i32.add
         (i32.add
          (local.get $3)
          (i32.add
           (local.get $20)
           (i32.const 1)
          )
         )
         (select
          (i32.const 1)
          (i32.and
           (i32.shr_u
            (local.get $4)
            (i32.const 3)
           )
           (i32.const 1)
          )
          (local.tee $10
           (i32.ne
            (local.get $3)
            (i32.const 0)
           )
          )
         )
        )
       )
      )
      (local.get $4)
     )
     (call $_out_653
      (local.get $0)
      (local.get $19)
      (local.get $20)
     )
     (call $_pad_659
      (local.get $0)
      (i32.const 48)
      (local.get $2)
      (local.get $9)
      (i32.xor
       (local.get $4)
       (i32.const 65536)
      )
     )
     (if
      (local.get $11)
      (block
       (local.set $11
        (local.tee $8
         (i32.add
          (local.get $13)
          (i32.const 9)
         )
        )
       )
       (local.set $15
        (i32.add
         (local.get $13)
         (i32.const 8)
        )
       )
       (local.set $7
        (local.tee $17
         (select
          (local.get $12)
          (local.get $7)
          (i32.gt_u
           (local.get $7)
           (local.get $12)
          )
         )
        )
       )
       (loop $while-in35
        (local.set $5
         (call $_fmt_u
          (i64.extend_i32_u
           (i32.load
            (local.get $7)
           )
          )
          (local.get $8)
         )
        )
        (if
         (i32.eq
          (local.get $7)
          (local.get $17)
         )
         (if
          (i32.eq
           (local.get $5)
           (local.get $8)
          )
          (block
           (i32.store8
            (local.get $15)
            (i32.const 48)
           )
           (local.set $5
            (local.get $15)
           )
          )
         )
         (if
          (i32.gt_u
           (local.get $5)
           (local.get $13)
          )
          (block
           (drop
            (call $_memset
             (local.get $13)
             (i32.const 48)
             (i32.sub
              (local.get $5)
              (local.get $18)
             )
            )
           )
           (loop $while-in37
            (br_if $while-in37
             (i32.gt_u
              (local.tee $5
               (i32.add
                (local.get $5)
                (i32.const -1)
               )
              )
              (local.get $13)
             )
            )
           )
          )
         )
        )
        (call $_out_653
         (local.get $0)
         (local.get $5)
         (i32.sub
          (local.get $11)
          (local.get $5)
         )
        )
        (if
         (i32.le_u
          (local.tee $5
           (i32.add
            (local.get $7)
            (i32.const 4)
           )
          )
          (local.get $12)
         )
         (block
          (local.set $7
           (local.get $5)
          )
          (br $while-in35)
         )
        )
       )
       (if
        (i32.eqz
         (i32.and
          (i32.eqz
           (i32.and
            (local.get $4)
            (i32.const 8)
           )
          )
          (i32.xor
           (local.get $10)
           (i32.const 1)
          )
         )
        )
        (call $_out_653
         (local.get $0)
         (i32.const 2436)
         (i32.const 1)
        )
       )
       (call $_pad_659
        (local.get $0)
        (i32.const 48)
        (i32.add
         (if (result i32)
          (i32.and
           (i32.lt_u
            (local.get $5)
            (local.get $6)
           )
           (i32.gt_s
            (local.get $3)
            (i32.const 0)
           )
          )
          (loop $while-in39 (result i32)
           (if
            (i32.gt_u
             (local.tee $7
              (call $_fmt_u
               (i64.extend_i32_u
                (i32.load
                 (local.get $5)
                )
               )
               (local.get $8)
              )
             )
             (local.get $13)
            )
            (block
             (drop
              (call $_memset
               (local.get $13)
               (i32.const 48)
               (i32.sub
                (local.get $7)
                (local.get $18)
               )
              )
             )
             (loop $while-in41
              (br_if $while-in41
               (i32.gt_u
                (local.tee $7
                 (i32.add
                  (local.get $7)
                  (i32.const -1)
                 )
                )
                (local.get $13)
               )
              )
             )
            )
           )
           (call $_out_653
            (local.get $0)
            (local.get $7)
            (select
             (local.get $3)
             (i32.const 9)
             (i32.lt_s
              (local.get $3)
              (i32.const 9)
             )
            )
           )
           (local.set $7
            (i32.add
             (local.get $3)
             (i32.const -9)
            )
           )
           (if (result i32)
            (i32.and
             (i32.lt_u
              (local.tee $5
               (i32.add
                (local.get $5)
                (i32.const 4)
               )
              )
              (local.get $6)
             )
             (i32.gt_s
              (local.get $3)
              (i32.const 9)
             )
            )
            (block
             (local.set $3
              (local.get $7)
             )
             (br $while-in39)
            )
            (local.get $7)
           )
          )
          (local.get $3)
         )
         (i32.const 9)
        )
        (i32.const 9)
        (i32.const 0)
       )
      )
      (block
       (call $_pad_659
        (local.get $0)
        (i32.const 48)
        (i32.add
         (if (result i32)
          (i32.and
           (i32.lt_u
            (local.get $7)
            (local.tee $17
             (select
              (local.get $6)
              (i32.add
               (local.get $7)
               (i32.const 4)
              )
              (local.get $14)
             )
            )
           )
           (i32.gt_s
            (local.get $3)
            (i32.const -1)
           )
          )
          (block (result i32)
           (local.set $20
            (i32.eqz
             (i32.and
              (local.get $4)
              (i32.const 8)
             )
            )
           )
           (local.set $19
            (local.tee $11
             (i32.add
              (local.get $13)
              (i32.const 9)
             )
            )
           )
           (local.set $18
            (i32.sub
             (i32.const 0)
             (local.get $18)
            )
           )
           (local.set $10
            (i32.add
             (local.get $13)
             (i32.const 8)
            )
           )
           (local.set $5
            (local.get $3)
           )
           (local.set $6
            (local.get $7)
           )
           (loop $while-in43 (result i32)
            (if
             (i32.eq
              (local.get $11)
              (local.tee $3
               (call $_fmt_u
                (i64.extend_i32_u
                 (i32.load
                  (local.get $6)
                 )
                )
                (local.get $11)
               )
              )
             )
             (block
              (i32.store8
               (local.get $10)
               (i32.const 48)
              )
              (local.set $3
               (local.get $10)
              )
             )
            )
            (block $do-once44
             (if
              (i32.eq
               (local.get $6)
               (local.get $7)
              )
              (block
               (local.set $12
                (i32.add
                 (local.get $3)
                 (i32.const 1)
                )
               )
               (call $_out_653
                (local.get $0)
                (local.get $3)
                (i32.const 1)
               )
               (if
                (i32.and
                 (local.get $20)
                 (i32.lt_s
                  (local.get $5)
                  (i32.const 1)
                 )
                )
                (block
                 (local.set $3
                  (local.get $12)
                 )
                 (br $do-once44)
                )
               )
               (call $_out_653
                (local.get $0)
                (i32.const 2436)
                (i32.const 1)
               )
               (local.set $3
                (local.get $12)
               )
              )
              (block
               (br_if $do-once44
                (i32.le_u
                 (local.get $3)
                 (local.get $13)
                )
               )
               (drop
                (call $_memset
                 (local.get $13)
                 (i32.const 48)
                 (i32.add
                  (local.get $3)
                  (local.get $18)
                 )
                )
               )
               (loop $while-in47
                (br_if $while-in47
                 (i32.gt_u
                  (local.tee $3
                   (i32.add
                    (local.get $3)
                    (i32.const -1)
                   )
                  )
                  (local.get $13)
                 )
                )
               )
              )
             )
            )
            (call $_out_653
             (local.get $0)
             (local.get $3)
             (select
              (local.tee $3
               (i32.sub
                (local.get $19)
                (local.get $3)
               )
              )
              (local.get $5)
              (i32.gt_s
               (local.get $5)
               (local.get $3)
              )
             )
            )
            (br_if $while-in43
             (i32.and
              (i32.lt_u
               (local.tee $6
                (i32.add
                 (local.get $6)
                 (i32.const 4)
                )
               )
               (local.get $17)
              )
              (i32.gt_s
               (local.tee $5
                (i32.sub
                 (local.get $5)
                 (local.get $3)
                )
               )
               (i32.const -1)
              )
             )
            )
            (local.get $5)
           )
          )
          (local.get $3)
         )
         (i32.const 18)
        )
        (i32.const 18)
        (i32.const 0)
       )
       (call $_out_653
        (local.get $0)
        (local.get $8)
        (i32.sub
         (local.get $15)
         (local.get $8)
        )
       )
      )
     )
     (call $_pad_659
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.get $9)
      (i32.xor
       (local.get $4)
       (i32.const 8192)
      )
     )
     (local.get $9)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $23)
  )
  (select
   (local.get $2)
   (local.get $0)
   (i32.lt_s
    (local.get $0)
    (local.get $2)
   )
  )
 )
 (func $_pop_arg_long_double (; 66 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local.set $3
   (f64.load
    (local.tee $2
     (i32.and
      (i32.add
       (i32.load
        (local.get $1)
       )
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
   )
  )
  (i32.store
   (local.get $1)
   (i32.add
    (local.get $2)
    (i32.const 8)
   )
  )
  (f64.store
   (local.get $0)
   (local.get $3)
  )
 )
 (func $___vfprintf_internal (; 67 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local.set $5
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 224)
   )
  )
  (i64.store
   (local.tee $2
    (i32.add
     (local.tee $3
      (local.get $5)
     )
     (i32.const 160)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=8
   (local.get $2)
   (i64.const 0)
  )
  (i64.store offset=16
   (local.get $2)
   (i64.const 0)
  )
  (i64.store offset=24
   (local.get $2)
   (i64.const 0)
  )
  (i64.store offset=32
   (local.get $2)
   (i64.const 0)
  )
  (i32.store
   (local.tee $4
    (i32.add
     (local.get $3)
     (i32.const 208)
    )
   )
   (i32.load
    (local.get $1)
   )
  )
  (drop
   (if (result i32)
    (i32.lt_s
     (call $_printf_core
      (i32.const 0)
      (local.get $4)
      (local.tee $1
       (i32.add
        (local.get $3)
        (i32.const 80)
       )
      )
      (local.get $2)
     )
     (i32.const 0)
    )
    (i32.const -1)
    (block (result i32)
     (drop
      (if (result i32)
       (i32.gt_s
        (i32.load offset=76
         (local.get $0)
        )
        (i32.const -1)
       )
       (i32.const 1)
       (i32.const 0)
      )
     )
     (local.set $6
      (i32.load
       (local.get $0)
      )
     )
     (if
      (i32.lt_s
       (i32.load8_s offset=74
        (local.get $0)
       )
       (i32.const 1)
      )
      (i32.store
       (local.get $0)
       (i32.and
        (local.get $6)
        (i32.const -33)
       )
      )
     )
     (if
      (i32.load
       (local.tee $7
        (i32.add
         (local.get $0)
         (i32.const 48)
        )
       )
      )
      (drop
       (call $_printf_core
        (local.get $0)
        (local.get $4)
        (local.get $1)
        (local.get $2)
       )
      )
      (block
       (local.set $9
        (i32.load
         (local.tee $8
          (i32.add
           (local.get $0)
           (i32.const 44)
          )
         )
        )
       )
       (i32.store
        (local.get $8)
        (local.get $3)
       )
       (i32.store
        (local.tee $11
         (i32.add
          (local.get $0)
          (i32.const 28)
         )
        )
        (local.get $3)
       )
       (i32.store
        (local.tee $10
         (i32.add
          (local.get $0)
          (i32.const 20)
         )
        )
        (local.get $3)
       )
       (i32.store
        (local.get $7)
        (i32.const 80)
       )
       (i32.store
        (local.tee $12
         (i32.add
          (local.get $0)
          (i32.const 16)
         )
        )
        (i32.add
         (local.get $3)
         (i32.const 80)
        )
       )
       (drop
        (call $_printf_core
         (local.get $0)
         (local.get $4)
         (local.get $1)
         (local.get $2)
        )
       )
       (if
        (local.get $9)
        (block
         (drop
          (call_indirect (type $i32_i32_i32_=>_i32)
           (local.get $0)
           (i32.const 0)
           (i32.const 0)
           (i32.add
            (i32.and
             (i32.load offset=36
              (local.get $0)
             )
             (i32.const 3)
            )
            (i32.const 6)
           )
          )
         )
         (drop
          (i32.load
           (local.get $10)
          )
         )
         (i32.store
          (local.get $8)
          (local.get $9)
         )
         (i32.store
          (local.get $7)
          (i32.const 0)
         )
         (i32.store
          (local.get $12)
          (i32.const 0)
         )
         (i32.store
          (local.get $11)
          (i32.const 0)
         )
         (i32.store
          (local.get $10)
          (i32.const 0)
         )
        )
       )
      )
     )
     (i32.store
      (local.get $0)
      (i32.or
       (i32.load
        (local.get $0)
       )
       (i32.and
        (local.get $6)
        (i32.const 32)
       )
      )
     )
     (i32.const 0)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $5)
  )
 )
 (func $_printf_core (; 68 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local.set $17
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.sub
    (global.get $STACKTOP)
    (i32.const -64)
   )
  )
  (local.set $9
   (i32.add
    (local.get $17)
    (i32.const 40)
   )
  )
  (local.set $23
   (i32.add
    (local.get $17)
    (i32.const 60)
   )
  )
  (i32.store
   (local.tee $12
    (i32.add
     (local.get $17)
     (i32.const 56)
    )
   )
   (i32.const 2216)
  )
  (local.set $19
   (i32.ne
    (local.get $0)
    (i32.const 0)
   )
  )
  (local.set $20
   (local.tee $21
    (i32.add
     (local.get $17)
     (i32.const 40)
    )
   )
  )
  (local.set $24
   (i32.add
    (local.get $17)
    (i32.const 39)
   )
  )
  (local.set $27
   (i32.add
    (local.tee $25
     (i32.add
      (local.get $17)
      (i32.const 48)
     )
    )
    (i32.const 4)
   )
  )
  (block $label$break$L123
   (block $__rjti$10
    (loop $label$continue$L1
     (block $label$break$L1
      (loop $while-in
       (if
        (i32.gt_s
         (local.get $8)
         (i32.const -1)
        )
        (local.set $8
         (if (result i32)
          (i32.gt_s
           (local.get $4)
           (i32.sub
            (i32.const 2147483647)
            (local.get $8)
           )
          )
          (block (result i32)
           (i32.store
            (i32.const 3844)
            (i32.const 75)
           )
           (i32.const -1)
          )
          (i32.add
           (local.get $4)
           (local.get $8)
          )
         )
        )
       )
       (br_if $__rjti$10
        (i32.eqz
         (local.tee $10
          (i32.load8_s
           (local.tee $11
            (i32.load
             (local.get $12)
            )
           )
          )
         )
        )
       )
       (local.set $4
        (local.get $11)
       )
       (block $label$break$L15
        (block $__rjti$0
         (loop $label$continue$L12
          (block $label$break$L12
           (block $switch
            (br_table $label$break$L12 $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $__rjti$0 $switch
             (i32.shr_s
              (i32.shl
               (local.get $10)
               (i32.const 24)
              )
              (i32.const 24)
             )
            )
           )
           (i32.store
            (local.get $12)
            (local.tee $4
             (i32.add
              (local.get $4)
              (i32.const 1)
             )
            )
           )
           (local.set $10
            (i32.load8_s
             (local.get $4)
            )
           )
           (br $label$continue$L12)
          )
         )
         (br $label$break$L15)
        )
        (local.set $10
         (local.get $4)
        )
        (local.set $4
         (loop $while-in3 (result i32)
          (if
           (i32.ne
            (i32.load8_s offset=1
             (local.get $4)
            )
            (i32.const 37)
           )
           (block
            (local.set $4
             (local.get $10)
            )
            (br $label$break$L15)
           )
          )
          (local.set $10
           (i32.add
            (local.get $10)
            (i32.const 1)
           )
          )
          (i32.store
           (local.get $12)
           (local.tee $4
            (i32.add
             (local.get $4)
             (i32.const 2)
            )
           )
          )
          (br_if $while-in3
           (i32.eq
            (i32.load8_s
             (local.get $4)
            )
            (i32.const 37)
           )
          )
          (local.get $10)
         )
        )
       )
       (local.set $4
        (i32.sub
         (local.get $4)
         (local.get $11)
        )
       )
       (if
        (local.get $19)
        (call $_out_653
         (local.get $0)
         (local.get $11)
         (local.get $4)
        )
       )
       (br_if $while-in
        (local.get $4)
       )
      )
      (local.set $10
       (i32.eqz
        (call $_isdigit
         (i32.load8_s offset=1
          (i32.load
           (local.get $12)
          )
         )
        )
       )
      )
      (i32.store
       (local.get $12)
       (local.tee $4
        (i32.add
         (local.tee $4
          (i32.load
           (local.get $12)
          )
         )
         (if (result i32)
          (local.get $10)
          (block (result i32)
           (local.set $14
            (i32.const -1)
           )
           (i32.const 1)
          )
          (if (result i32)
           (i32.eq
            (i32.load8_s offset=2
             (local.get $4)
            )
            (i32.const 36)
           )
           (block (result i32)
            (local.set $14
             (i32.add
              (i32.load8_s offset=1
               (local.get $4)
              )
              (i32.const -48)
             )
            )
            (local.set $5
             (i32.const 1)
            )
            (i32.const 3)
           )
           (block (result i32)
            (local.set $14
             (i32.const -1)
            )
            (i32.const 1)
           )
          )
         )
        )
       )
      )
      (if
       (i32.or
        (i32.gt_u
         (local.tee $10
          (i32.add
           (local.tee $6
            (i32.load8_s
             (local.get $4)
            )
           )
           (i32.const -32)
          )
         )
         (i32.const 31)
        )
        (i32.eqz
         (i32.and
          (i32.shl
           (i32.const 1)
           (local.get $10)
          )
          (i32.const 75913)
         )
        )
       )
       (local.set $10
        (i32.const 0)
       )
       (block
        (local.set $6
         (i32.const 0)
        )
        (loop $while-in5
         (local.set $10
          (i32.or
           (local.get $6)
           (i32.shl
            (i32.const 1)
            (local.get $10)
           )
          )
         )
         (i32.store
          (local.get $12)
          (local.tee $4
           (i32.add
            (local.get $4)
            (i32.const 1)
           )
          )
         )
         (if
          (i32.eqz
           (i32.or
            (i32.gt_u
             (local.tee $7
              (i32.add
               (local.tee $6
                (i32.load8_s
                 (local.get $4)
                )
               )
               (i32.const -32)
              )
             )
             (i32.const 31)
            )
            (i32.eqz
             (i32.and
              (i32.shl
               (i32.const 1)
               (local.get $7)
              )
              (i32.const 75913)
             )
            )
           )
          )
          (block
           (local.set $6
            (local.get $10)
           )
           (local.set $10
            (local.get $7)
           )
           (br $while-in5)
          )
         )
        )
       )
      )
      (if
       (i32.eq
        (i32.and
         (local.get $6)
         (i32.const 255)
        )
        (i32.const 42)
       )
       (block
        (i32.store
         (local.get $12)
         (local.tee $5
          (block $__rjto$1 (result i32)
           (block $__rjti$1
            (br_if $__rjti$1
             (i32.eqz
              (call $_isdigit
               (i32.load8_s offset=1
                (local.get $4)
               )
              )
             )
            )
            (br_if $__rjti$1
             (i32.ne
              (i32.load8_s offset=2
               (local.tee $7
                (i32.load
                 (local.get $12)
                )
               )
              )
              (i32.const 36)
             )
            )
            (i32.store
             (i32.add
              (i32.shl
               (i32.add
                (i32.load8_s
                 (local.tee $4
                  (i32.add
                   (local.get $7)
                   (i32.const 1)
                  )
                 )
                )
                (i32.const -48)
               )
               (i32.const 2)
              )
              (local.get $3)
             )
             (i32.const 10)
            )
            (local.set $4
             (i32.wrap_i64
              (i64.load
               (i32.add
                (i32.shl
                 (i32.add
                  (i32.load8_s
                   (local.get $4)
                  )
                  (i32.const -48)
                 )
                 (i32.const 3)
                )
                (local.get $2)
               )
              )
             )
            )
            (local.set $6
             (i32.const 1)
            )
            (br $__rjto$1
             (i32.add
              (local.get $7)
              (i32.const 3)
             )
            )
           )
           (if
            (local.get $5)
            (block
             (local.set $8
              (i32.const -1)
             )
             (br $label$break$L1)
            )
           )
           (if
            (local.get $19)
            (block
             (local.set $4
              (i32.load
               (local.tee $5
                (i32.and
                 (i32.add
                  (i32.load
                   (local.get $1)
                  )
                  (i32.const 3)
                 )
                 (i32.const -4)
                )
               )
              )
             )
             (i32.store
              (local.get $1)
              (i32.add
               (local.get $5)
               (i32.const 4)
              )
             )
            )
            (local.set $4
             (i32.const 0)
            )
           )
           (local.set $6
            (i32.const 0)
           )
           (i32.add
            (i32.load
             (local.get $12)
            )
            (i32.const 1)
           )
          )
         )
        )
        (local.set $15
         (select
          (i32.sub
           (i32.const 0)
           (local.get $4)
          )
          (local.get $4)
          (local.tee $4
           (i32.lt_s
            (local.get $4)
            (i32.const 0)
           )
          )
         )
        )
        (local.set $16
         (select
          (i32.or
           (local.get $10)
           (i32.const 8192)
          )
          (local.get $10)
          (local.get $4)
         )
        )
        (local.set $10
         (local.get $6)
        )
       )
       (block
        (if
         (i32.lt_s
          (local.tee $15
           (call $_getint_654
            (local.get $12)
           )
          )
          (i32.const 0)
         )
         (block
          (local.set $8
           (i32.const -1)
          )
          (br $label$break$L1)
         )
        )
        (local.set $16
         (local.get $10)
        )
        (local.set $10
         (local.get $5)
        )
        (local.set $5
         (i32.load
          (local.get $12)
         )
        )
       )
      )
      (if
       (i32.eq
        (i32.load8_s
         (local.get $5)
        )
        (i32.const 46)
       )
       (block $do-once6
        (if
         (i32.ne
          (i32.load8_s
           (local.tee $4
            (i32.add
             (local.get $5)
             (i32.const 1)
            )
           )
          )
          (i32.const 42)
         )
         (block
          (i32.store
           (local.get $12)
           (local.get $4)
          )
          (local.set $4
           (call $_getint_654
            (local.get $12)
           )
          )
          (local.set $5
           (i32.load
            (local.get $12)
           )
          )
          (br $do-once6)
         )
        )
        (if
         (call $_isdigit
          (i32.load8_s offset=2
           (local.get $5)
          )
         )
         (if
          (i32.eq
           (i32.load8_s offset=3
            (local.tee $5
             (i32.load
              (local.get $12)
             )
            )
           )
           (i32.const 36)
          )
          (block
           (i32.store
            (i32.add
             (i32.shl
              (i32.add
               (i32.load8_s
                (local.tee $4
                 (i32.add
                  (local.get $5)
                  (i32.const 2)
                 )
                )
               )
               (i32.const -48)
              )
              (i32.const 2)
             )
             (local.get $3)
            )
            (i32.const 10)
           )
           (local.set $4
            (i32.wrap_i64
             (i64.load
              (i32.add
               (i32.shl
                (i32.add
                 (i32.load8_s
                  (local.get $4)
                 )
                 (i32.const -48)
                )
                (i32.const 3)
               )
               (local.get $2)
              )
             )
            )
           )
           (i32.store
            (local.get $12)
            (local.tee $5
             (i32.add
              (local.get $5)
              (i32.const 4)
             )
            )
           )
           (br $do-once6)
          )
         )
        )
        (if
         (local.get $10)
         (block
          (local.set $8
           (i32.const -1)
          )
          (br $label$break$L1)
         )
        )
        (if
         (local.get $19)
         (block
          (local.set $4
           (i32.load
            (local.tee $5
             (i32.and
              (i32.add
               (i32.load
                (local.get $1)
               )
               (i32.const 3)
              )
              (i32.const -4)
             )
            )
           )
          )
          (i32.store
           (local.get $1)
           (i32.add
            (local.get $5)
            (i32.const 4)
           )
          )
         )
         (local.set $4
          (i32.const 0)
         )
        )
        (i32.store
         (local.get $12)
         (local.tee $5
          (i32.add
           (i32.load
            (local.get $12)
           )
           (i32.const 2)
          )
         )
        )
       )
       (local.set $4
        (i32.const -1)
       )
      )
      (local.set $13
       (i32.const 0)
      )
      (loop $while-in9
       (if
        (i32.gt_u
         (i32.add
          (i32.load8_s
           (local.get $5)
          )
          (i32.const -65)
         )
         (i32.const 57)
        )
        (block
         (local.set $8
          (i32.const -1)
         )
         (br $label$break$L1)
        )
       )
       (i32.store
        (local.get $12)
        (local.tee $6
         (i32.add
          (local.get $5)
          (i32.const 1)
         )
        )
       )
       (if
        (i32.lt_u
         (i32.add
          (local.tee $5
           (i32.and
            (local.tee $7
             (i32.load8_s offset=959
              (i32.add
               (i32.load8_s
                (local.get $5)
               )
               (i32.mul
                (local.get $13)
                (i32.const 58)
               )
              )
             )
            )
            (i32.const 255)
           )
          )
          (i32.const -1)
         )
         (i32.const 8)
        )
        (block
         (local.set $13
          (local.get $5)
         )
         (local.set $5
          (local.get $6)
         )
         (br $while-in9)
        )
       )
      )
      (if
       (i32.eqz
        (local.get $7)
       )
       (block
        (local.set $8
         (i32.const -1)
        )
        (br $label$break$L1)
       )
      )
      (local.set $18
       (i32.gt_s
        (local.get $14)
        (i32.const -1)
       )
      )
      (block $label$break$L77
       (block $__rjti$9
        (if
         (i32.eq
          (local.get $7)
          (i32.const 19)
         )
         (if
          (local.get $18)
          (block
           (local.set $8
            (i32.const -1)
           )
           (br $label$break$L1)
          )
         )
         (block $__rjti$8
          (if
           (local.get $18)
           (block
            (i32.store
             (i32.add
              (i32.shl
               (local.get $14)
               (i32.const 2)
              )
              (local.get $3)
             )
             (local.get $5)
            )
            (i64.store
             (local.get $9)
             (i64.load
              (i32.add
               (i32.shl
                (local.get $14)
                (i32.const 3)
               )
               (local.get $2)
              )
             )
            )
            (br $__rjti$8)
           )
          )
          (if
           (i32.eqz
            (local.get $19)
           )
           (block
            (local.set $8
             (i32.const 0)
            )
            (br $label$break$L1)
           )
          )
          (call $_pop_arg_656
           (local.get $9)
           (local.get $5)
           (local.get $1)
          )
          (local.set $6
           (i32.load
            (local.get $12)
           )
          )
          (br $__rjti$9)
         )
        )
        (br_if $__rjti$9
         (local.get $19)
        )
        (local.set $4
         (i32.const 0)
        )
        (br $label$break$L77)
       )
       (local.set $5
        (select
         (local.tee $7
          (i32.and
           (local.get $16)
           (i32.const -65537)
          )
         )
         (local.get $16)
         (i32.and
          (local.get $16)
          (i32.const 8192)
         )
        )
       )
       (block $__rjto$7
        (block $__rjti$7
         (block $__rjti$6
          (block $__rjti$5
           (block $__rjti$4
            (block $__rjti$3
             (block $switch-default44
              (block $switch-case43
               (block $switch-case35
                (block $switch-case34
                 (block $switch-case33
                  (block $switch-case32
                   (block $switch-case31
                    (block $switch-case30
                     (block $switch-case28
                      (block $switch-case25
                       (block $switch-case24
                        (br_table $switch-case43 $switch-default44 $switch-case34 $switch-default44 $switch-case43 $switch-case43 $switch-case43 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-case35 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $__rjti$3 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-case43 $switch-default44 $switch-case32 $switch-case30 $switch-case43 $switch-case43 $switch-case43 $switch-default44 $switch-case30 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-case24 $switch-case28 $switch-case25 $switch-default44 $switch-default44 $switch-case33 $switch-default44 $switch-case31 $switch-default44 $switch-default44 $__rjti$3 $switch-default44
                         (i32.sub
                          (local.tee $6
                           (select
                            (i32.and
                             (local.tee $6
                              (i32.load8_s
                               (i32.add
                                (local.get $6)
                                (i32.const -1)
                               )
                              )
                             )
                             (i32.const -33)
                            )
                            (local.get $6)
                            (i32.and
                             (i32.eq
                              (i32.and
                               (local.get $6)
                               (i32.const 15)
                              )
                              (i32.const 3)
                             )
                             (i32.ne
                              (local.get $13)
                              (i32.const 0)
                             )
                            )
                           )
                          )
                          (i32.const 65)
                         )
                        )
                       )
                       (block $switch-default23
                        (block $switch-case22
                         (block $switch-case21
                          (block $switch-case20
                           (block $switch-case19
                            (block $switch-case18
                             (block $switch-case17
                              (block $switch-case16
                               (br_table $switch-case16 $switch-case17 $switch-case18 $switch-case19 $switch-case20 $switch-default23 $switch-case21 $switch-case22 $switch-default23
                                (i32.shr_s
                                 (i32.shl
                                  (i32.and
                                   (local.get $13)
                                   (i32.const 255)
                                  )
                                  (i32.const 24)
                                 )
                                 (i32.const 24)
                                )
                               )
                              )
                              (i32.store
                               (i32.load
                                (local.get $9)
                               )
                               (local.get $8)
                              )
                              (local.set $4
                               (i32.const 0)
                              )
                              (br $label$break$L77)
                             )
                             (i32.store
                              (i32.load
                               (local.get $9)
                              )
                              (local.get $8)
                             )
                             (local.set $4
                              (i32.const 0)
                             )
                             (br $label$break$L77)
                            )
                            (i64.store
                             (i32.load
                              (local.get $9)
                             )
                             (i64.extend_i32_s
                              (local.get $8)
                             )
                            )
                            (local.set $4
                             (i32.const 0)
                            )
                            (br $label$break$L77)
                           )
                           (i32.store16
                            (i32.load
                             (local.get $9)
                            )
                            (local.get $8)
                           )
                           (local.set $4
                            (i32.const 0)
                           )
                           (br $label$break$L77)
                          )
                          (i32.store8
                           (i32.load
                            (local.get $9)
                           )
                           (local.get $8)
                          )
                          (local.set $4
                           (i32.const 0)
                          )
                          (br $label$break$L77)
                         )
                         (i32.store
                          (i32.load
                           (local.get $9)
                          )
                          (local.get $8)
                         )
                         (local.set $4
                          (i32.const 0)
                         )
                         (br $label$break$L77)
                        )
                        (i64.store
                         (i32.load
                          (local.get $9)
                         )
                         (i64.extend_i32_s
                          (local.get $8)
                         )
                        )
                        (local.set $4
                         (i32.const 0)
                        )
                        (br $label$break$L77)
                       )
                       (local.set $4
                        (i32.const 0)
                       )
                       (br $label$break$L77)
                      )
                      (local.set $6
                       (i32.const 120)
                      )
                      (local.set $4
                       (select
                        (local.get $4)
                        (i32.const 8)
                        (i32.gt_u
                         (local.get $4)
                         (i32.const 8)
                        )
                       )
                      )
                      (local.set $5
                       (i32.or
                        (local.get $5)
                        (i32.const 8)
                       )
                      )
                      (br $__rjti$3)
                     )
                     (local.set $6
                      (i32.sub
                       (local.get $20)
                       (local.tee $13
                        (call $_fmt_o
                         (i64.load
                          (local.get $9)
                         )
                         (local.get $21)
                        )
                       )
                      )
                     )
                     (local.set $11
                      (i32.const 0)
                     )
                     (local.set $7
                      (i32.const 2384)
                     )
                     (local.set $4
                      (select
                       (local.get $4)
                       (i32.add
                        (local.get $6)
                        (i32.const 1)
                       )
                       (i32.or
                        (i32.eqz
                         (i32.and
                          (local.get $5)
                          (i32.const 8)
                         )
                        )
                        (i32.gt_s
                         (local.get $4)
                         (local.get $6)
                        )
                       )
                      )
                     )
                     (br $__rjti$6)
                    )
                    (if
                     (i64.lt_s
                      (local.tee $22
                       (i64.load
                        (local.get $9)
                       )
                      )
                      (i64.const 0)
                     )
                     (block
                      (i64.store
                       (local.get $9)
                       (local.tee $22
                        (i64.sub
                         (i64.const 0)
                         (local.get $22)
                        )
                       )
                      )
                      (local.set $11
                       (i32.const 1)
                      )
                      (local.set $7
                       (i32.const 2384)
                      )
                      (br $__rjti$4)
                     )
                     (block
                      (local.set $11
                       (i32.ne
                        (i32.and
                         (local.get $5)
                         (i32.const 2049)
                        )
                        (i32.const 0)
                       )
                      )
                      (local.set $7
                       (select
                        (i32.const 2385)
                        (select
                         (i32.const 2386)
                         (i32.const 2384)
                         (i32.and
                          (local.get $5)
                          (i32.const 1)
                         )
                        )
                        (i32.and
                         (local.get $5)
                         (i32.const 2048)
                        )
                       )
                      )
                      (br $__rjti$4)
                     )
                    )
                   )
                   (local.set $11
                    (i32.const 0)
                   )
                   (local.set $7
                    (i32.const 2384)
                   )
                   (local.set $22
                    (i64.load
                     (local.get $9)
                    )
                   )
                   (br $__rjti$4)
                  )
                  (i64.store8
                   (local.get $24)
                   (i64.load
                    (local.get $9)
                   )
                  )
                  (local.set $6
                   (local.get $24)
                  )
                  (local.set $11
                   (i32.const 0)
                  )
                  (local.set $16
                   (i32.const 2384)
                  )
                  (local.set $13
                   (i32.const 1)
                  )
                  (local.set $5
                   (local.get $7)
                  )
                  (local.set $4
                   (local.get $20)
                  )
                  (br $__rjto$7)
                 )
                 (local.set $26
                  (i32.eqz
                   (local.tee $18
                    (call $_memchr
                     (local.tee $14
                      (select
                       (local.tee $5
                        (i32.load
                         (local.get $9)
                        )
                       )
                       (i32.const 2394)
                       (local.get $5)
                      )
                     )
                     (local.get $4)
                    )
                   )
                  )
                 )
                 (local.set $11
                  (i32.const 0)
                 )
                 (local.set $16
                  (i32.const 2384)
                 )
                 (local.set $13
                  (select
                   (local.get $4)
                   (i32.sub
                    (local.get $18)
                    (local.tee $6
                     (local.get $14)
                    )
                   )
                   (local.get $26)
                  )
                 )
                 (local.set $5
                  (local.get $7)
                 )
                 (local.set $4
                  (select
                   (i32.add
                    (local.get $4)
                    (local.get $6)
                   )
                   (local.get $18)
                   (local.get $26)
                  )
                 )
                 (br $__rjto$7)
                )
                (i64.store32
                 (local.get $25)
                 (i64.load
                  (local.get $9)
                 )
                )
                (i32.store
                 (local.get $27)
                 (i32.const 0)
                )
                (i32.store
                 (local.get $9)
                 (local.get $25)
                )
                (local.set $11
                 (i32.const -1)
                )
                (br $__rjti$5)
               )
               (if
                (local.get $4)
                (block
                 (local.set $11
                  (local.get $4)
                 )
                 (br $__rjti$5)
                )
                (block
                 (call $_pad_659
                  (local.get $0)
                  (i32.const 32)
                  (local.get $15)
                  (i32.const 0)
                  (local.get $5)
                 )
                 (local.set $4
                  (i32.const 0)
                 )
                 (br $__rjti$7)
                )
               )
              )
              (local.set $4
               (call_indirect (type $i32_f64_i32_i32_i32_i32_=>_i32)
                (local.get $0)
                (f64.load
                 (local.get $9)
                )
                (local.get $15)
                (local.get $4)
                (local.get $5)
                (local.get $6)
                (i32.const 5)
               )
              )
              (br $label$break$L77)
             )
             (local.set $6
              (local.get $11)
             )
             (local.set $11
              (i32.const 0)
             )
             (local.set $16
              (i32.const 2384)
             )
             (local.set $13
              (local.get $4)
             )
             (local.set $4
              (local.get $20)
             )
             (br $__rjto$7)
            )
            (local.set $13
             (call $_fmt_x
              (i64.load
               (local.get $9)
              )
              (local.get $21)
              (i32.and
               (local.get $6)
               (i32.const 32)
              )
             )
            )
            (local.set $11
             (select
              (i32.const 0)
              (i32.const 2)
              (local.tee $7
               (i32.or
                (i32.eqz
                 (i32.and
                  (local.get $5)
                  (i32.const 8)
                 )
                )
                (i64.eqz
                 (i64.load
                  (local.get $9)
                 )
                )
               )
              )
             )
            )
            (local.set $7
             (select
              (i32.const 2384)
              (i32.add
               (i32.shr_u
                (local.get $6)
                (i32.const 4)
               )
               (i32.const 2384)
              )
              (local.get $7)
             )
            )
            (br $__rjti$6)
           )
           (local.set $13
            (call $_fmt_u
             (local.get $22)
             (local.get $21)
            )
           )
           (br $__rjti$6)
          )
          (local.set $6
           (i32.load
            (local.get $9)
           )
          )
          (local.set $4
           (i32.const 0)
          )
          (block $__rjto$2
           (block $__rjti$2
            (loop $while-in47
             (if
              (local.tee $7
               (i32.load
                (local.get $6)
               )
              )
              (block
               (br_if $__rjti$2
                (i32.or
                 (local.tee $13
                  (i32.lt_s
                   (local.tee $7
                    (call $_wctomb
                     (local.get $23)
                     (local.get $7)
                    )
                   )
                   (i32.const 0)
                  )
                 )
                 (i32.gt_u
                  (local.get $7)
                  (i32.sub
                   (local.get $11)
                   (local.get $4)
                  )
                 )
                )
               )
               (local.set $6
                (i32.add
                 (local.get $6)
                 (i32.const 4)
                )
               )
               (br_if $while-in47
                (i32.gt_u
                 (local.get $11)
                 (local.tee $4
                  (i32.add
                   (local.get $4)
                   (local.get $7)
                  )
                 )
                )
               )
              )
             )
            )
            (br $__rjto$2)
           )
           (if
            (local.get $13)
            (block
             (local.set $8
              (i32.const -1)
             )
             (br $label$break$L1)
            )
           )
          )
          (call $_pad_659
           (local.get $0)
           (i32.const 32)
           (local.get $15)
           (local.get $4)
           (local.get $5)
          )
          (if
           (local.get $4)
           (block
            (local.set $6
             (i32.load
              (local.get $9)
             )
            )
            (local.set $11
             (i32.const 0)
            )
            (loop $while-in49
             (br_if $__rjti$7
              (i32.eqz
               (local.tee $7
                (i32.load
                 (local.get $6)
                )
               )
              )
             )
             (br_if $__rjti$7
              (i32.gt_s
               (local.tee $11
                (i32.add
                 (local.get $11)
                 (local.tee $7
                  (call $_wctomb
                   (local.get $23)
                   (local.get $7)
                  )
                 )
                )
               )
               (local.get $4)
              )
             )
             (local.set $6
              (i32.add
               (local.get $6)
               (i32.const 4)
              )
             )
             (call $_out_653
              (local.get $0)
              (local.get $23)
              (local.get $7)
             )
             (br_if $while-in49
              (i32.lt_u
               (local.get $11)
               (local.get $4)
              )
             )
            )
            (br $__rjti$7)
           )
           (block
            (local.set $4
             (i32.const 0)
            )
            (br $__rjti$7)
           )
          )
         )
         (local.set $6
          (select
           (local.get $13)
           (local.get $21)
           (local.tee $18
            (i32.or
             (local.tee $14
              (i64.ne
               (i64.load
                (local.get $9)
               )
               (i64.const 0)
              )
             )
             (i32.ne
              (local.get $4)
              (i32.const 0)
             )
            )
           )
          )
         )
         (local.set $16
          (local.get $7)
         )
         (local.set $13
          (select
           (select
            (local.get $4)
            (local.tee $7
             (i32.add
              (i32.sub
               (local.get $20)
               (local.get $13)
              )
              (i32.and
               (i32.xor
                (local.get $14)
                (i32.const 1)
               )
               (i32.const 1)
              )
             )
            )
            (i32.gt_s
             (local.get $4)
             (local.get $7)
            )
           )
           (i32.const 0)
           (local.get $18)
          )
         )
         (local.set $5
          (select
           (i32.and
            (local.get $5)
            (i32.const -65537)
           )
           (local.get $5)
           (i32.gt_s
            (local.get $4)
            (i32.const -1)
           )
          )
         )
         (local.set $4
          (local.get $20)
         )
         (br $__rjto$7)
        )
        (call $_pad_659
         (local.get $0)
         (i32.const 32)
         (local.get $15)
         (local.get $4)
         (i32.xor
          (local.get $5)
          (i32.const 8192)
         )
        )
        (local.set $4
         (select
          (local.get $15)
          (local.get $4)
          (i32.gt_s
           (local.get $15)
           (local.get $4)
          )
         )
        )
        (br $label$break$L77)
       )
       (call $_pad_659
        (local.get $0)
        (i32.const 32)
        (local.tee $4
         (select
          (local.tee $7
           (i32.add
            (local.get $11)
            (local.tee $13
             (select
              (local.tee $14
               (i32.sub
                (local.get $4)
                (local.get $6)
               )
              )
              (local.get $13)
              (i32.lt_s
               (local.get $13)
               (local.get $14)
              )
             )
            )
           )
          )
          (local.get $15)
          (i32.lt_s
           (local.get $15)
           (local.get $7)
          )
         )
        )
        (local.get $7)
        (local.get $5)
       )
       (call $_out_653
        (local.get $0)
        (local.get $16)
        (local.get $11)
       )
       (call $_pad_659
        (local.get $0)
        (i32.const 48)
        (local.get $4)
        (local.get $7)
        (i32.xor
         (local.get $5)
         (i32.const 65536)
        )
       )
       (call $_pad_659
        (local.get $0)
        (i32.const 48)
        (local.get $13)
        (local.get $14)
        (i32.const 0)
       )
       (call $_out_653
        (local.get $0)
        (local.get $6)
        (local.get $14)
       )
       (call $_pad_659
        (local.get $0)
        (i32.const 32)
        (local.get $4)
        (local.get $7)
        (i32.xor
         (local.get $5)
         (i32.const 8192)
        )
       )
      )
      (local.set $5
       (local.get $10)
      )
      (br $label$continue$L1)
     )
    )
    (br $label$break$L123)
   )
   (if
    (i32.eqz
     (local.get $0)
    )
    (local.set $8
     (if (result i32)
      (local.get $5)
      (block (result i32)
       (local.set $0
        (i32.const 1)
       )
       (loop $while-in52
        (if
         (local.tee $4
          (i32.load
           (i32.add
            (i32.shl
             (local.get $0)
             (i32.const 2)
            )
            (local.get $3)
           )
          )
         )
         (block
          (call $_pop_arg_656
           (i32.add
            (i32.shl
             (local.get $0)
             (i32.const 3)
            )
            (local.get $2)
           )
           (local.get $4)
           (local.get $1)
          )
          (br_if $while-in52
           (i32.lt_u
            (local.tee $0
             (i32.add
              (local.get $0)
              (i32.const 1)
             )
            )
            (i32.const 10)
           )
          )
          (local.set $8
           (i32.const 1)
          )
          (br $label$break$L123)
         )
        )
       )
       (loop $while-in54 (result i32)
        (if
         (i32.load
          (i32.add
           (i32.shl
            (local.get $0)
            (i32.const 2)
           )
           (local.get $3)
          )
         )
         (block
          (local.set $8
           (i32.const -1)
          )
          (br $label$break$L123)
         )
        )
        (br_if $while-in54
         (i32.lt_u
          (local.tee $0
           (i32.add
            (local.get $0)
            (i32.const 1)
           )
          )
          (i32.const 10)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
    )
   )
  )
  (global.set $STACKTOP
   (local.get $17)
  )
  (local.get $8)
 )
 (func $_out_653 (; 69 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (if
   (i32.eqz
    (i32.and
     (i32.load
      (local.get $0)
     )
     (i32.const 32)
    )
   )
   (drop
    (call $___fwritex
     (local.get $1)
     (local.get $2)
     (local.get $0)
    )
   )
  )
 )
 (func $_getint_654 (; 70 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (call $_isdigit
    (i32.load8_s
     (i32.load
      (local.get $0)
     )
    )
   )
   (loop $while-in
    (local.set $1
     (i32.add
      (i32.load8_s
       (local.tee $2
        (i32.load
         (local.get $0)
        )
       )
      )
      (i32.add
       (i32.mul
        (local.get $1)
        (i32.const 10)
       )
       (i32.const -48)
      )
     )
    )
    (i32.store
     (local.get $0)
     (local.tee $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
    )
    (br_if $while-in
     (call $_isdigit
      (i32.load8_s
       (local.get $2)
      )
     )
    )
   )
  )
  (local.get $1)
 )
 (func $_pop_arg_656 (; 71 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 f64)
  (if
   (i32.le_u
    (local.get $1)
    (i32.const 20)
   )
   (block $label$break$L1
    (block $switch-case9
     (block $switch-case8
      (block $switch-case7
       (block $switch-case6
        (block $switch-case5
         (block $switch-case4
          (block $switch-case3
           (block $switch-case2
            (block $switch-case1
             (block $switch-case
              (br_table $switch-case $switch-case1 $switch-case2 $switch-case3 $switch-case4 $switch-case5 $switch-case6 $switch-case7 $switch-case8 $switch-case9 $label$break$L1
               (i32.sub
                (local.get $1)
                (i32.const 9)
               )
              )
             )
             (local.set $3
              (i32.load
               (local.tee $1
                (i32.and
                 (i32.add
                  (i32.load
                   (local.get $2)
                  )
                  (i32.const 3)
                 )
                 (i32.const -4)
                )
               )
              )
             )
             (i32.store
              (local.get $2)
              (i32.add
               (local.get $1)
               (i32.const 4)
              )
             )
             (i32.store
              (local.get $0)
              (local.get $3)
             )
             (br $label$break$L1)
            )
            (local.set $3
             (i32.load
              (local.tee $1
               (i32.and
                (i32.add
                 (i32.load
                  (local.get $2)
                 )
                 (i32.const 3)
                )
                (i32.const -4)
               )
              )
             )
            )
            (i32.store
             (local.get $2)
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (i64.store
             (local.get $0)
             (i64.extend_i32_s
              (local.get $3)
             )
            )
            (br $label$break$L1)
           )
           (local.set $3
            (i32.load
             (local.tee $1
              (i32.and
               (i32.add
                (i32.load
                 (local.get $2)
                )
                (i32.const 3)
               )
               (i32.const -4)
              )
             )
            )
           )
           (i32.store
            (local.get $2)
            (i32.add
             (local.get $1)
             (i32.const 4)
            )
           )
           (i64.store
            (local.get $0)
            (i64.extend_i32_u
             (local.get $3)
            )
           )
           (br $label$break$L1)
          )
          (local.set $4
           (i64.load
            (local.tee $1
             (i32.and
              (i32.add
               (i32.load
                (local.get $2)
               )
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
           )
          )
          (i32.store
           (local.get $2)
           (i32.add
            (local.get $1)
            (i32.const 8)
           )
          )
          (i64.store
           (local.get $0)
           (local.get $4)
          )
          (br $label$break$L1)
         )
         (local.set $3
          (i32.load
           (local.tee $1
            (i32.and
             (i32.add
              (i32.load
               (local.get $2)
              )
              (i32.const 3)
             )
             (i32.const -4)
            )
           )
          )
         )
         (i32.store
          (local.get $2)
          (i32.add
           (local.get $1)
           (i32.const 4)
          )
         )
         (i64.store
          (local.get $0)
          (i64.extend_i32_s
           (i32.shr_s
            (i32.shl
             (i32.and
              (local.get $3)
              (i32.const 65535)
             )
             (i32.const 16)
            )
            (i32.const 16)
           )
          )
         )
         (br $label$break$L1)
        )
        (local.set $3
         (i32.load
          (local.tee $1
           (i32.and
            (i32.add
             (i32.load
              (local.get $2)
             )
             (i32.const 3)
            )
            (i32.const -4)
           )
          )
         )
        )
        (i32.store
         (local.get $2)
         (i32.add
          (local.get $1)
          (i32.const 4)
         )
        )
        (i64.store
         (local.get $0)
         (i64.extend_i32_u
          (i32.and
           (local.get $3)
           (i32.const 65535)
          )
         )
        )
        (br $label$break$L1)
       )
       (local.set $3
        (i32.load
         (local.tee $1
          (i32.and
           (i32.add
            (i32.load
             (local.get $2)
            )
            (i32.const 3)
           )
           (i32.const -4)
          )
         )
        )
       )
       (i32.store
        (local.get $2)
        (i32.add
         (local.get $1)
         (i32.const 4)
        )
       )
       (i64.store
        (local.get $0)
        (i64.extend_i32_s
         (i32.shr_s
          (i32.shl
           (i32.and
            (local.get $3)
            (i32.const 255)
           )
           (i32.const 24)
          )
          (i32.const 24)
         )
        )
       )
       (br $label$break$L1)
      )
      (local.set $3
       (i32.load
        (local.tee $1
         (i32.and
          (i32.add
           (i32.load
            (local.get $2)
           )
           (i32.const 3)
          )
          (i32.const -4)
         )
        )
       )
      )
      (i32.store
       (local.get $2)
       (i32.add
        (local.get $1)
        (i32.const 4)
       )
      )
      (i64.store
       (local.get $0)
       (i64.extend_i32_u
        (i32.and
         (local.get $3)
         (i32.const 255)
        )
       )
      )
      (br $label$break$L1)
     )
     (local.set $5
      (f64.load
       (local.tee $1
        (i32.and
         (i32.add
          (i32.load
           (local.get $2)
          )
          (i32.const 7)
         )
         (i32.const -8)
        )
       )
      )
     )
     (i32.store
      (local.get $2)
      (i32.add
       (local.get $1)
       (i32.const 8)
      )
     )
     (f64.store
      (local.get $0)
      (local.get $5)
     )
     (br $label$break$L1)
    )
    (call_indirect (type $i32_i32_=>_none)
     (local.get $0)
     (local.get $2)
     (i32.const 24)
    )
   )
  )
 )
 (func $_fmt_x (; 72 ;) (; has Stack IR ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.eqz
    (i64.eqz
     (local.get $0)
    )
   )
   (loop $while-in
    (i32.store8
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -1)
      )
     )
     (i32.or
      (local.get $2)
      (i32.load8_u
       (i32.add
        (i32.and
         (i32.wrap_i64
          (local.get $0)
         )
         (i32.const 15)
        )
        (i32.const 1488)
       )
      )
     )
    )
    (br_if $while-in
     (i32.eqz
      (i64.eqz
       (local.tee $0
        (i64.shr_u
         (local.get $0)
         (i64.const 4)
        )
       )
      )
     )
    )
   )
  )
  (local.get $1)
 )
 (func $_fmt_o (; 73 ;) (; has Stack IR ;) (param $0 i64) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (i64.eqz
     (local.get $0)
    )
   )
   (loop $while-in
    (i32.store8
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -1)
      )
     )
     (i32.or
      (i32.and
       (i32.wrap_i64
        (local.get $0)
       )
       (i32.const 7)
      )
      (i32.const 48)
     )
    )
    (br_if $while-in
     (i32.eqz
      (i64.eqz
       (local.tee $0
        (i64.shr_u
         (local.get $0)
         (i64.const 3)
        )
       )
      )
     )
    )
   )
  )
  (local.get $1)
 )
 (func $_fmt_u (; 74 ;) (; has Stack IR ;) (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $2
   (i32.wrap_i64
    (local.get $0)
   )
  )
  (if
   (i64.gt_u
    (local.get $0)
    (i64.const 4294967295)
   )
   (block
    (loop $while-in
     (i32.store8
      (local.tee $1
       (i32.add
        (local.get $1)
        (i32.const -1)
       )
      )
      (i32.or
       (i32.and
        (i32.wrap_i64
         (i64.sub
          (local.get $0)
          (i64.mul
           (local.tee $3
            (i64.div_u
             (local.get $0)
             (i64.const 10)
            )
           )
           (i64.const 10)
          )
         )
        )
        (i32.const 255)
       )
       (i32.const 48)
      )
     )
     (if
      (i64.gt_u
       (local.get $0)
       (i64.const 42949672959)
      )
      (block
       (local.set $0
        (local.get $3)
       )
       (br $while-in)
      )
     )
    )
    (local.set $2
     (i32.wrap_i64
      (local.get $3)
     )
    )
   )
  )
  (if
   (local.get $2)
   (loop $while-in1
    (i32.store8
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -1)
      )
     )
     (i32.or
      (i32.sub
       (local.get $2)
       (i32.mul
        (local.tee $4
         (i32.div_u
          (local.get $2)
          (i32.const 10)
         )
        )
        (i32.const 10)
       )
      )
      (i32.const 48)
     )
    )
    (if
     (i32.ge_u
      (local.get $2)
      (i32.const 10)
     )
     (block
      (local.set $2
       (local.get $4)
      )
      (br $while-in1)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $_pad_659 (; 75 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $6
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 256)
   )
  )
  (local.set $5
   (local.get $6)
  )
  (if
   (i32.and
    (i32.eqz
     (i32.and
      (local.get $4)
      (i32.const 73728)
     )
    )
    (i32.gt_s
     (local.get $2)
     (local.get $3)
    )
   )
   (block
    (drop
     (call $_memset
      (local.get $5)
      (i32.shr_s
       (i32.shl
        (local.get $1)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (select
       (local.tee $1
        (i32.sub
         (local.get $2)
         (local.get $3)
        )
       )
       (i32.const 256)
       (i32.lt_u
        (local.get $1)
        (i32.const 256)
       )
      )
     )
    )
    (if
     (i32.gt_u
      (local.get $1)
      (i32.const 255)
     )
     (block
      (local.set $2
       (i32.sub
        (local.get $2)
        (local.get $3)
       )
      )
      (loop $while-in
       (call $_out_653
        (local.get $0)
        (local.get $5)
        (i32.const 256)
       )
       (br_if $while-in
        (i32.gt_u
         (local.tee $1
          (i32.add
           (local.get $1)
           (i32.const -256)
          )
         )
         (i32.const 255)
        )
       )
      )
      (local.set $1
       (i32.and
        (local.get $2)
        (i32.const 255)
       )
      )
     )
    )
    (call $_out_653
     (local.get $0)
     (local.get $5)
     (local.get $1)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $6)
  )
 )
 (func $_wctomb (; 76 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (local.get $0)
   (call $_wcrtomb
    (local.get $0)
    (local.get $1)
   )
   (i32.const 0)
  )
 )
 (func $_wcrtomb (; 77 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (local.get $0)
   (block $do-once (result i32)
    (if
     (i32.lt_u
      (local.get $1)
      (i32.const 128)
     )
     (block
      (i32.store8
       (local.get $0)
       (local.get $1)
      )
      (br $do-once
       (i32.const 1)
      )
     )
    )
    (if
     (i32.eqz
      (i32.load
       (i32.load
        (i32.const 2080)
       )
      )
     )
     (if
      (i32.eq
       (i32.and
        (local.get $1)
        (i32.const -128)
       )
       (i32.const 57216)
      )
      (block
       (i32.store8
        (local.get $0)
        (local.get $1)
       )
       (br $do-once
        (i32.const 1)
       )
      )
      (block
       (i32.store
        (i32.const 3844)
        (i32.const 84)
       )
       (br $do-once
        (i32.const -1)
       )
      )
     )
    )
    (if
     (i32.lt_u
      (local.get $1)
      (i32.const 2048)
     )
     (block
      (i32.store8
       (local.get $0)
       (i32.or
        (i32.shr_u
         (local.get $1)
         (i32.const 6)
        )
        (i32.const 192)
       )
      )
      (i32.store8 offset=1
       (local.get $0)
       (i32.or
        (i32.and
         (local.get $1)
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (br $do-once
       (i32.const 2)
      )
     )
    )
    (if
     (i32.or
      (i32.eq
       (i32.and
        (local.get $1)
        (i32.const -8192)
       )
       (i32.const 57344)
      )
      (i32.lt_u
       (local.get $1)
       (i32.const 55296)
      )
     )
     (block
      (i32.store8
       (local.get $0)
       (i32.or
        (i32.shr_u
         (local.get $1)
         (i32.const 12)
        )
        (i32.const 224)
       )
      )
      (i32.store8 offset=1
       (local.get $0)
       (i32.or
        (i32.and
         (i32.shr_u
          (local.get $1)
          (i32.const 6)
         )
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (i32.store8 offset=2
       (local.get $0)
       (i32.or
        (i32.and
         (local.get $1)
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (br $do-once
       (i32.const 3)
      )
     )
    )
    (if (result i32)
     (i32.lt_u
      (i32.add
       (local.get $1)
       (i32.const -65536)
      )
      (i32.const 1048576)
     )
     (block (result i32)
      (i32.store8
       (local.get $0)
       (i32.or
        (i32.shr_u
         (local.get $1)
         (i32.const 18)
        )
        (i32.const 240)
       )
      )
      (i32.store8 offset=1
       (local.get $0)
       (i32.or
        (i32.and
         (i32.shr_u
          (local.get $1)
          (i32.const 12)
         )
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (i32.store8 offset=2
       (local.get $0)
       (i32.or
        (i32.and
         (i32.shr_u
          (local.get $1)
          (i32.const 6)
         )
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (i32.store8 offset=3
       (local.get $0)
       (i32.or
        (i32.and
         (local.get $1)
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (i32.const 4)
     )
     (block (result i32)
      (i32.store
       (i32.const 3844)
       (i32.const 84)
      )
      (i32.const -1)
     )
    )
   )
   (i32.const 1)
  )
 )
 (func $_frexp (; 78 ;) (; has Stack IR ;) (param $0 f64) (param $1 i32) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (block $switch
   (block $switch-default
    (if
     (local.tee $4
      (i32.and
       (i32.wrap_i64
        (local.tee $3
         (i64.shr_u
          (local.tee $2
           (i64.reinterpret_f64
            (local.get $0)
           )
          )
          (i64.const 52)
         )
        )
       )
       (i32.const 2047)
      )
     )
     (if
      (i32.eq
       (local.get $4)
       (i32.const 2047)
      )
      (br $switch)
      (br $switch-default)
     )
    )
    (i32.store
     (local.get $1)
     (if (result i32)
      (f64.ne
       (local.get $0)
       (f64.const 0)
      )
      (block (result i32)
       (local.set $0
        (call $_frexp
         (f64.mul
          (local.get $0)
          (f64.const 18446744073709551615)
         )
         (local.get $1)
        )
       )
       (i32.add
        (i32.load
         (local.get $1)
        )
        (i32.const -64)
       )
      )
      (i32.const 0)
     )
    )
    (br $switch)
   )
   (i32.store
    (local.get $1)
    (i32.add
     (i32.and
      (i32.wrap_i64
       (local.get $3)
      )
      (i32.const 2047)
     )
     (i32.const -1022)
    )
   )
   (local.set $0
    (f64.reinterpret_i64
     (i64.or
      (i64.and
       (local.get $2)
       (i64.const -9218868437227405313)
      )
      (i64.const 4602678819172646912)
     )
    )
   )
  )
  (local.get $0)
 )
 (func $___fseeko_unlocked (; 79 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eq
    (local.get $1)
    (i32.const 1)
   )
   (local.set $2
    (i64.sub
     (i64.const 0)
     (i64.extend_i32_s
      (i32.sub
       (i32.load offset=8
        (local.get $0)
       )
       (i32.load offset=4
        (local.get $0)
       )
      )
     )
    )
   )
  )
  (block $__rjto$0
   (block $__rjti$0
    (br_if $__rjti$0
     (i32.le_u
      (i32.load
       (local.tee $3
        (i32.add
         (local.get $0)
         (i32.const 20)
        )
       )
      )
      (i32.load
       (local.tee $4
        (i32.add
         (local.get $0)
         (i32.const 28)
        )
       )
      )
     )
    )
    (drop
     (call_indirect (type $i32_i32_i32_=>_i32)
      (local.get $0)
      (i32.const 0)
      (i32.const 0)
      (i32.add
       (i32.and
        (i32.load offset=36
         (local.get $0)
        )
        (i32.const 3)
       )
       (i32.const 6)
      )
     )
    )
    (br_if $__rjti$0
     (i32.load
      (local.get $3)
     )
    )
    (br $__rjto$0)
   )
   (i32.store offset=16
    (local.get $0)
    (i32.const 0)
   )
   (i32.store
    (local.get $4)
    (i32.const 0)
   )
   (i32.store
    (local.get $3)
    (i32.const 0)
   )
   (drop
    (if (result i32)
     (i64.lt_s
      (call_indirect (type $i32_i64_i32_=>_i64)
       (local.get $0)
       (local.get $2)
       (local.get $1)
       (i32.add
        (i32.and
         (i32.load offset=40
          (local.get $0)
         )
         (i32.const 3)
        )
        (i32.const 10)
       )
      )
      (i64.const 0)
     )
     (i32.const -1)
     (block (result i32)
      (i32.store offset=8
       (local.get $0)
       (i32.const 0)
      )
      (i32.store offset=4
       (local.get $0)
       (i32.const 0)
      )
      (i32.store
       (local.get $0)
       (i32.and
        (i32.load
         (local.get $0)
        )
        (i32.const -17)
       )
      )
      (i32.const 0)
     )
    )
   )
  )
 )
 (func $_fread (; 80 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (drop
   (if (result i32)
    (i32.gt_s
     (i32.load offset=76
      (local.get $2)
     )
     (i32.const -1)
    )
    (i32.const 1)
    (i32.const 0)
   )
  )
  (local.set $3
   (i32.load8_s
    (local.tee $4
     (i32.add
      (local.get $2)
      (i32.const 74)
     )
    )
   )
  )
  (i32.store8
   (local.get $4)
   (i32.or
    (local.get $3)
    (i32.add
     (local.get $3)
     (i32.const 255)
    )
   )
  )
  (local.set $5
   (local.get $1)
  )
  (block $__rjto$0
   (br_if $__rjto$0
    (i32.eqz
     (local.tee $4
      (if (result i32)
       (i32.gt_s
        (local.tee $3
         (i32.sub
          (i32.load offset=8
           (local.get $2)
          )
          (local.tee $4
           (i32.load
            (local.tee $6
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
           )
          )
         )
        )
        (i32.const 0)
       )
       (block (result i32)
        (drop
         (call $_memcpy
          (local.get $0)
          (local.get $4)
          (local.tee $3
           (select
            (local.get $3)
            (local.get $5)
            (i32.lt_u
             (local.get $3)
             (local.get $5)
            )
           )
          )
         )
        )
        (i32.store
         (local.get $6)
         (i32.add
          (local.get $3)
          (i32.load
           (local.get $6)
          )
         )
        )
        (local.set $0
         (i32.add
          (local.get $0)
          (local.get $3)
         )
        )
        (i32.sub
         (local.get $5)
         (local.get $3)
        )
       )
       (local.get $5)
      )
     )
    )
   )
   (local.set $6
    (i32.add
     (local.get $2)
     (i32.const 32)
    )
   )
   (local.set $3
    (local.get $0)
   )
   (local.set $0
    (local.get $4)
   )
   (loop $while-in
    (block $while-out
     (br_if $while-out
      (call $___toread
       (local.get $2)
      )
     )
     (br_if $while-out
      (i32.lt_u
       (i32.add
        (local.tee $4
         (call_indirect (type $i32_i32_i32_=>_i32)
          (local.get $2)
          (local.get $3)
          (local.get $0)
          (i32.add
           (i32.and
            (i32.load
             (local.get $6)
            )
            (i32.const 3)
           )
           (i32.const 6)
          )
         )
        )
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
     (br_if $__rjto$0
      (i32.eqz
       (local.tee $0
        (i32.sub
         (local.get $0)
         (local.get $4)
        )
       )
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (local.get $4)
      )
     )
     (br $while-in)
    )
   )
   (drop
    (i32.div_u
     (i32.sub
      (local.get $5)
      (local.get $0)
     )
     (local.get $1)
    )
   )
  )
 )
 (func $_remove (; 81 ;) (; has Stack IR ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $0
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  (local.set $1
   (i32.add
    (local.get $0)
    (i32.const 8)
   )
  )
  (i32.store
   (local.get $0)
   (i32.const 2357)
  )
  (drop
   (call $___syscall_ret
    (if (result i32)
     (i32.eq
      (local.tee $2
       (call $___syscall10
        (i32.const 10)
        (local.get $0)
       )
      )
      (i32.const -21)
     )
     (block (result i32)
      (i32.store
       (local.get $1)
       (i32.const 2357)
      )
      (call $___syscall40
       (i32.const 40)
       (local.get $1)
      )
     )
     (local.get $2)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $0)
  )
 )
 (func $___ftello_unlocked (; 82 ;) (; has Stack IR ;) (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  (local.set $2
   (i32.load
    (i32.add
     (local.get $0)
     (i32.const 40)
    )
   )
  )
  (if
   (i64.ge_s
    (local.tee $1
     (call_indirect (type $i32_i64_i32_=>_i64)
      (local.get $0)
      (i64.const 0)
      (if (result i32)
       (i32.and
        (i32.load
         (local.get $0)
        )
        (i32.const 128)
       )
       (select
        (i32.const 2)
        (i32.const 1)
        (i32.gt_u
         (i32.load
          (i32.add
           (local.get $0)
           (i32.const 20)
          )
         )
         (i32.load
          (i32.add
           (local.get $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.const 1)
      )
      (i32.add
       (i32.and
        (local.get $2)
        (i32.const 3)
       )
       (i32.const 10)
      )
     )
    )
    (i64.const 0)
   )
   (local.set $1
    (i64.add
     (i64.extend_i32_s
      (i32.sub
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 20)
        )
       )
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 28)
        )
       )
      )
     )
     (i64.sub
      (local.get $1)
      (i64.extend_i32_s
       (i32.sub
        (i32.load
         (i32.add
          (local.get $0)
          (i32.const 8)
         )
        )
        (i32.load
         (i32.add
          (local.get $0)
          (i32.const 4)
         )
        )
       )
      )
     )
    )
   )
  )
  (local.get $1)
 )
 (func $__ZSt18uncaught_exceptionv (; 83 ;) (; has Stack IR ;) (result i32)
  (i32.gt_s
   (call $___cxa_uncaught_exceptions)
   (i32.const 0)
  )
 )
 (func $__Znwm (; 84 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local.set $0
   (select
    (local.get $0)
    (i32.const 1)
    (local.get $0)
   )
  )
  (if (result i32)
   (local.tee $0
    (call $_malloc
     (local.get $0)
    )
   )
   (local.get $0)
   (i32.const 0)
  )
 )
 (func $_malloc (; 85 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local.set $14
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  (local.set $3
   (if (result i32)
    (i32.lt_u
     (local.get $0)
     (i32.const 245)
    )
    (block (result i32)
     (if
      (i32.and
       (local.tee $3
        (i32.shr_u
         (local.tee $7
          (i32.load
           (i32.const 3860)
          )
         )
         (local.tee $0
          (i32.shr_u
           (local.tee $2
            (select
             (i32.const 16)
             (i32.and
              (i32.add
               (local.get $0)
               (i32.const 11)
              )
              (i32.const -8)
             )
             (i32.lt_u
              (local.get $0)
              (i32.const 11)
             )
            )
           )
           (i32.const 3)
          )
         )
        )
       )
       (i32.const 3)
      )
      (block
       (if
        (i32.eq
         (local.tee $0
          (i32.load
           (local.tee $6
            (i32.add
             (local.tee $3
              (i32.load
               (local.tee $4
                (i32.add
                 (local.tee $2
                  (i32.add
                   (i32.shl
                    (local.tee $1
                     (i32.add
                      (i32.xor
                       (i32.and
                        (local.get $3)
                        (i32.const 1)
                       )
                       (i32.const 1)
                      )
                      (local.get $0)
                     )
                    )
                    (i32.const 3)
                   )
                   (i32.const 3900)
                  )
                 )
                 (i32.const 8)
                )
               )
              )
             )
             (i32.const 8)
            )
           )
          )
         )
         (local.get $2)
        )
        (i32.store
         (i32.const 3860)
         (i32.and
          (i32.xor
           (i32.shl
            (i32.const 1)
            (local.get $1)
           )
           (i32.const -1)
          )
          (local.get $7)
         )
        )
        (block
         (if
          (i32.gt_u
           (i32.load
            (i32.const 3876)
           )
           (local.get $0)
          )
          (call $_abort)
         )
         (if
          (i32.eq
           (local.get $3)
           (i32.load
            (local.tee $5
             (i32.add
              (local.get $0)
              (i32.const 12)
             )
            )
           )
          )
          (block
           (i32.store
            (local.get $5)
            (local.get $2)
           )
           (i32.store
            (local.get $4)
            (local.get $0)
           )
          )
          (call $_abort)
         )
        )
       )
       (i32.store offset=4
        (local.get $3)
        (i32.or
         (local.tee $0
          (i32.shl
           (local.get $1)
           (i32.const 3)
          )
         )
         (i32.const 3)
        )
       )
       (i32.store
        (local.tee $0
         (i32.add
          (i32.add
           (local.get $0)
           (local.get $3)
          )
          (i32.const 4)
         )
        )
        (i32.or
         (i32.load
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (global.set $STACKTOP
        (local.get $14)
       )
       (return
        (local.get $6)
       )
      )
     )
     (if (result i32)
      (i32.gt_u
       (local.get $2)
       (local.tee $12
        (i32.load
         (i32.const 3868)
        )
       )
      )
      (block (result i32)
       (if
        (local.get $3)
        (block
         (if
          (i32.eq
           (local.tee $3
            (i32.load
             (local.tee $9
              (i32.add
               (local.tee $0
                (i32.load
                 (local.tee $10
                  (i32.add
                   (local.tee $5
                    (i32.add
                     (i32.shl
                      (local.tee $1
                       (i32.add
                        (i32.or
                         (i32.or
                          (i32.or
                           (i32.or
                            (local.tee $3
                             (i32.and
                              (i32.shr_u
                               (local.tee $0
                                (i32.add
                                 (i32.and
                                  (local.tee $0
                                   (i32.and
                                    (i32.shl
                                     (local.get $3)
                                     (local.get $0)
                                    )
                                    (i32.or
                                     (local.tee $0
                                      (i32.shl
                                       (i32.const 2)
                                       (local.get $0)
                                      )
                                     )
                                     (i32.sub
                                      (i32.const 0)
                                      (local.get $0)
                                     )
                                    )
                                   )
                                  )
                                  (i32.sub
                                   (i32.const 0)
                                   (local.get $0)
                                  )
                                 )
                                 (i32.const -1)
                                )
                               )
                               (i32.const 12)
                              )
                              (i32.const 16)
                             )
                            )
                            (local.tee $3
                             (i32.and
                              (i32.shr_u
                               (local.tee $0
                                (i32.shr_u
                                 (local.get $0)
                                 (local.get $3)
                                )
                               )
                               (i32.const 5)
                              )
                              (i32.const 8)
                             )
                            )
                           )
                           (local.tee $3
                            (i32.and
                             (i32.shr_u
                              (local.tee $0
                               (i32.shr_u
                                (local.get $0)
                                (local.get $3)
                               )
                              )
                              (i32.const 2)
                             )
                             (i32.const 4)
                            )
                           )
                          )
                          (local.tee $3
                           (i32.and
                            (i32.shr_u
                             (local.tee $0
                              (i32.shr_u
                               (local.get $0)
                               (local.get $3)
                              )
                             )
                             (i32.const 1)
                            )
                            (i32.const 2)
                           )
                          )
                         )
                         (local.tee $3
                          (i32.and
                           (i32.shr_u
                            (local.tee $0
                             (i32.shr_u
                              (local.get $0)
                              (local.get $3)
                             )
                            )
                            (i32.const 1)
                           )
                           (i32.const 1)
                          )
                         )
                        )
                        (i32.shr_u
                         (local.get $0)
                         (local.get $3)
                        )
                       )
                      )
                      (i32.const 3)
                     )
                     (i32.const 3900)
                    )
                   )
                   (i32.const 8)
                  )
                 )
                )
               )
               (i32.const 8)
              )
             )
            )
           )
           (local.get $5)
          )
          (i32.store
           (i32.const 3860)
           (local.tee $4
            (i32.and
             (i32.xor
              (i32.shl
               (i32.const 1)
               (local.get $1)
              )
              (i32.const -1)
             )
             (local.get $7)
            )
           )
          )
          (block
           (if
            (i32.gt_u
             (i32.load
              (i32.const 3876)
             )
             (local.get $3)
            )
            (call $_abort)
           )
           (if
            (i32.eq
             (local.get $0)
             (i32.load
              (local.tee $11
               (i32.add
                (local.get $3)
                (i32.const 12)
               )
              )
             )
            )
            (block
             (i32.store
              (local.get $11)
              (local.get $5)
             )
             (i32.store
              (local.get $10)
              (local.get $3)
             )
             (local.set $4
              (local.get $7)
             )
            )
            (call $_abort)
           )
          )
         )
         (i32.store offset=4
          (local.get $0)
          (i32.or
           (local.get $2)
           (i32.const 3)
          )
         )
         (i32.store offset=4
          (local.tee $7
           (i32.add
            (local.get $0)
            (local.get $2)
           )
          )
          (i32.or
           (local.tee $5
            (i32.sub
             (local.tee $3
              (i32.shl
               (local.get $1)
               (i32.const 3)
              )
             )
             (local.get $2)
            )
           )
           (i32.const 1)
          )
         )
         (i32.store
          (i32.add
           (local.get $0)
           (local.get $3)
          )
          (local.get $5)
         )
         (if
          (local.get $12)
          (block
           (local.set $2
            (i32.load
             (i32.const 3880)
            )
           )
           (local.set $0
            (i32.add
             (i32.shl
              (local.tee $3
               (i32.shr_u
                (local.get $12)
                (i32.const 3)
               )
              )
              (i32.const 3)
             )
             (i32.const 3900)
            )
           )
           (if
            (i32.and
             (local.tee $3
              (i32.shl
               (i32.const 1)
               (local.get $3)
              )
             )
             (local.get $4)
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3876)
              )
              (local.tee $1
               (i32.load
                (local.tee $3
                 (i32.add
                  (local.get $0)
                  (i32.const 8)
                 )
                )
               )
              )
             )
             (call $_abort)
             (block
              (local.set $6
               (local.get $1)
              )
              (local.set $13
               (local.get $3)
              )
             )
            )
            (block
             (i32.store
              (i32.const 3860)
              (i32.or
               (local.get $3)
               (local.get $4)
              )
             )
             (local.set $6
              (local.get $0)
             )
             (local.set $13
              (i32.add
               (local.get $0)
               (i32.const 8)
              )
             )
            )
           )
           (i32.store
            (local.get $13)
            (local.get $2)
           )
           (i32.store offset=12
            (local.get $6)
            (local.get $2)
           )
           (i32.store offset=8
            (local.get $2)
            (local.get $6)
           )
           (i32.store offset=12
            (local.get $2)
            (local.get $0)
           )
          )
         )
         (i32.store
          (i32.const 3868)
          (local.get $5)
         )
         (i32.store
          (i32.const 3880)
          (local.get $7)
         )
         (global.set $STACKTOP
          (local.get $14)
         )
         (return
          (local.get $9)
         )
        )
       )
       (if (result i32)
        (local.tee $13
         (i32.load
          (i32.const 3864)
         )
        )
        (block
         (local.set $3
          (local.tee $4
           (i32.load
            (i32.add
             (i32.shl
              (i32.add
               (i32.or
                (i32.or
                 (i32.or
                  (i32.or
                   (local.tee $3
                    (i32.and
                     (i32.shr_u
                      (local.tee $0
                       (i32.add
                        (i32.and
                         (local.get $13)
                         (i32.sub
                          (i32.const 0)
                          (local.get $13)
                         )
                        )
                        (i32.const -1)
                       )
                      )
                      (i32.const 12)
                     )
                     (i32.const 16)
                    )
                   )
                   (local.tee $3
                    (i32.and
                     (i32.shr_u
                      (local.tee $0
                       (i32.shr_u
                        (local.get $0)
                        (local.get $3)
                       )
                      )
                      (i32.const 5)
                     )
                     (i32.const 8)
                    )
                   )
                  )
                  (local.tee $3
                   (i32.and
                    (i32.shr_u
                     (local.tee $0
                      (i32.shr_u
                       (local.get $0)
                       (local.get $3)
                      )
                     )
                     (i32.const 2)
                    )
                    (i32.const 4)
                   )
                  )
                 )
                 (local.tee $3
                  (i32.and
                   (i32.shr_u
                    (local.tee $0
                     (i32.shr_u
                      (local.get $0)
                      (local.get $3)
                     )
                    )
                    (i32.const 1)
                   )
                   (i32.const 2)
                  )
                 )
                )
                (local.tee $3
                 (i32.and
                  (i32.shr_u
                   (local.tee $0
                    (i32.shr_u
                     (local.get $0)
                     (local.get $3)
                    )
                   )
                   (i32.const 1)
                  )
                  (i32.const 1)
                 )
                )
               )
               (i32.shr_u
                (local.get $0)
                (local.get $3)
               )
              )
              (i32.const 2)
             )
             (i32.const 4164)
            )
           )
          )
         )
         (local.set $9
          (i32.sub
           (i32.and
            (i32.load offset=4
             (local.get $4)
            )
            (i32.const -8)
           )
           (local.get $2)
          )
         )
         (loop $while-in
          (block $while-out
           (if
            (i32.eqz
             (local.tee $0
              (i32.load offset=16
               (local.get $3)
              )
             )
            )
            (br_if $while-out
             (i32.eqz
              (local.tee $0
               (i32.load offset=20
                (local.get $3)
               )
              )
             )
            )
           )
           (local.set $3
            (local.get $0)
           )
           (local.set $4
            (select
             (local.get $0)
             (local.get $4)
             (local.tee $6
              (i32.lt_u
               (local.tee $0
                (i32.sub
                 (i32.and
                  (i32.load offset=4
                   (local.get $0)
                  )
                  (i32.const -8)
                 )
                 (local.get $2)
                )
               )
               (local.get $9)
              )
             )
            )
           )
           (local.set $9
            (select
             (local.get $0)
             (local.get $9)
             (local.get $6)
            )
           )
           (br $while-in)
          )
         )
         (if
          (i32.gt_u
           (local.tee $15
            (i32.load
             (i32.const 3876)
            )
           )
           (local.get $4)
          )
          (call $_abort)
         )
         (if
          (i32.le_u
           (local.tee $8
            (i32.add
             (local.get $2)
             (local.get $4)
            )
           )
           (local.get $4)
          )
          (call $_abort)
         )
         (local.set $11
          (i32.load offset=24
           (local.get $4)
          )
         )
         (if
          (i32.eq
           (local.get $4)
           (local.tee $0
            (i32.load offset=12
             (local.get $4)
            )
           )
          )
          (block $do-once4
           (if
            (i32.eqz
             (local.tee $0
              (i32.load
               (local.tee $3
                (i32.add
                 (local.get $4)
                 (i32.const 20)
                )
               )
              )
             )
            )
            (br_if $do-once4
             (i32.eqz
              (local.tee $0
               (i32.load
                (local.tee $3
                 (i32.add
                  (local.get $4)
                  (i32.const 16)
                 )
                )
               )
              )
             )
            )
           )
           (loop $while-in7
            (block $while-out6
             (local.set $0
              (if (result i32)
               (local.tee $10
                (i32.load
                 (local.tee $6
                  (i32.add
                   (local.get $0)
                   (i32.const 20)
                  )
                 )
                )
               )
               (block (result i32)
                (local.set $3
                 (local.get $6)
                )
                (local.get $10)
               )
               (block (result i32)
                (br_if $while-out6
                 (i32.eqz
                  (local.tee $10
                   (i32.load
                    (local.tee $6
                     (i32.add
                      (local.get $0)
                      (i32.const 16)
                     )
                    )
                   )
                  )
                 )
                )
                (local.set $3
                 (local.get $6)
                )
                (local.get $10)
               )
              )
             )
             (br $while-in7)
            )
           )
           (if
            (i32.gt_u
             (local.get $15)
             (local.get $3)
            )
            (call $_abort)
            (block
             (i32.store
              (local.get $3)
              (i32.const 0)
             )
             (local.set $1
              (local.get $0)
             )
            )
           )
          )
          (block
           (if
            (i32.gt_u
             (local.get $15)
             (local.tee $3
              (i32.load offset=8
               (local.get $4)
              )
             )
            )
            (call $_abort)
           )
           (if
            (i32.ne
             (i32.load
              (local.tee $6
               (i32.add
                (local.get $3)
                (i32.const 12)
               )
              )
             )
             (local.get $4)
            )
            (call $_abort)
           )
           (if
            (i32.eq
             (local.get $4)
             (i32.load
              (local.tee $10
               (i32.add
                (local.get $0)
                (i32.const 8)
               )
              )
             )
            )
            (block
             (i32.store
              (local.get $6)
              (local.get $0)
             )
             (i32.store
              (local.get $10)
              (local.get $3)
             )
             (local.set $1
              (local.get $0)
             )
            )
            (call $_abort)
           )
          )
         )
         (if
          (local.get $11)
          (block $label$break$L78
           (if
            (i32.eq
             (local.get $4)
             (i32.load
              (local.tee $3
               (i32.add
                (i32.shl
                 (local.tee $0
                  (i32.load offset=28
                   (local.get $4)
                  )
                 )
                 (i32.const 2)
                )
                (i32.const 4164)
               )
              )
             )
            )
            (block
             (i32.store
              (local.get $3)
              (local.get $1)
             )
             (if
              (i32.eqz
               (local.get $1)
              )
              (block
               (i32.store
                (i32.const 3864)
                (i32.and
                 (local.get $13)
                 (i32.xor
                  (i32.shl
                   (i32.const 1)
                   (local.get $0)
                  )
                  (i32.const -1)
                 )
                )
               )
               (br $label$break$L78)
              )
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3876)
              )
              (local.get $11)
             )
             (call $_abort)
             (block
              (i32.store
               (select
                (local.tee $0
                 (i32.add
                  (local.get $11)
                  (i32.const 16)
                 )
                )
                (i32.add
                 (local.get $11)
                 (i32.const 20)
                )
                (i32.eq
                 (local.get $4)
                 (i32.load
                  (local.get $0)
                 )
                )
               )
               (local.get $1)
              )
              (br_if $label$break$L78
               (i32.eqz
                (local.get $1)
               )
              )
             )
            )
           )
           (if
            (i32.gt_u
             (local.tee $3
              (i32.load
               (i32.const 3876)
              )
             )
             (local.get $1)
            )
            (call $_abort)
           )
           (i32.store offset=24
            (local.get $1)
            (local.get $11)
           )
           (if
            (local.tee $0
             (i32.load offset=16
              (local.get $4)
             )
            )
            (if
             (i32.gt_u
              (local.get $3)
              (local.get $0)
             )
             (call $_abort)
             (block
              (i32.store offset=16
               (local.get $1)
               (local.get $0)
              )
              (i32.store offset=24
               (local.get $0)
               (local.get $1)
              )
             )
            )
           )
           (if
            (local.tee $0
             (i32.load offset=20
              (local.get $4)
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3876)
              )
              (local.get $0)
             )
             (call $_abort)
             (block
              (i32.store offset=20
               (local.get $1)
               (local.get $0)
              )
              (i32.store offset=24
               (local.get $0)
               (local.get $1)
              )
             )
            )
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $9)
           (i32.const 16)
          )
          (block
           (i32.store offset=4
            (local.get $4)
            (i32.or
             (local.tee $0
              (i32.add
               (local.get $2)
               (local.get $9)
              )
             )
             (i32.const 3)
            )
           )
           (i32.store
            (local.tee $0
             (i32.add
              (i32.add
               (local.get $0)
               (local.get $4)
              )
              (i32.const 4)
             )
            )
            (i32.or
             (i32.load
              (local.get $0)
             )
             (i32.const 1)
            )
           )
          )
          (block
           (i32.store offset=4
            (local.get $4)
            (i32.or
             (local.get $2)
             (i32.const 3)
            )
           )
           (i32.store offset=4
            (local.get $8)
            (i32.or
             (local.get $9)
             (i32.const 1)
            )
           )
           (i32.store
            (i32.add
             (local.get $8)
             (local.get $9)
            )
            (local.get $9)
           )
           (if
            (local.get $12)
            (block
             (local.set $2
              (i32.load
               (i32.const 3880)
              )
             )
             (local.set $0
              (i32.add
               (i32.shl
                (local.tee $3
                 (i32.shr_u
                  (local.get $12)
                  (i32.const 3)
                 )
                )
                (i32.const 3)
               )
               (i32.const 3900)
              )
             )
             (if
              (i32.and
               (local.tee $3
                (i32.shl
                 (i32.const 1)
                 (local.get $3)
                )
               )
               (local.get $7)
              )
              (if
               (i32.gt_u
                (i32.load
                 (i32.const 3876)
                )
                (local.tee $1
                 (i32.load
                  (local.tee $3
                   (i32.add
                    (local.get $0)
                    (i32.const 8)
                   )
                  )
                 )
                )
               )
               (call $_abort)
               (block
                (local.set $5
                 (local.get $1)
                )
                (local.set $16
                 (local.get $3)
                )
               )
              )
              (block
               (i32.store
                (i32.const 3860)
                (i32.or
                 (local.get $3)
                 (local.get $7)
                )
               )
               (local.set $5
                (local.get $0)
               )
               (local.set $16
                (i32.add
                 (local.get $0)
                 (i32.const 8)
                )
               )
              )
             )
             (i32.store
              (local.get $16)
              (local.get $2)
             )
             (i32.store offset=12
              (local.get $5)
              (local.get $2)
             )
             (i32.store offset=8
              (local.get $2)
              (local.get $5)
             )
             (i32.store offset=12
              (local.get $2)
              (local.get $0)
             )
            )
           )
           (i32.store
            (i32.const 3868)
            (local.get $9)
           )
           (i32.store
            (i32.const 3880)
            (local.get $8)
           )
          )
         )
         (global.set $STACKTOP
          (local.get $14)
         )
         (return
          (i32.add
           (local.get $4)
           (i32.const 8)
          )
         )
        )
        (local.get $2)
       )
      )
      (local.get $2)
     )
    )
    (if (result i32)
     (i32.gt_u
      (local.get $0)
      (i32.const -65)
     )
     (i32.const -1)
     (block $do-once (result i32)
      (local.set $4
       (i32.and
        (local.tee $0
         (i32.add
          (local.get $0)
          (i32.const 11)
         )
        )
        (i32.const -8)
       )
      )
      (if (result i32)
       (local.tee $6
        (i32.load
         (i32.const 3864)
        )
       )
       (block (result i32)
        (local.set $18
         (if (result i32)
          (local.tee $0
           (i32.shr_u
            (local.get $0)
            (i32.const 8)
           )
          )
          (if (result i32)
           (i32.gt_u
            (local.get $4)
            (i32.const 16777215)
           )
           (i32.const 31)
           (i32.or
            (i32.shl
             (local.tee $0
              (i32.add
               (i32.sub
                (i32.const 14)
                (i32.or
                 (i32.or
                  (local.tee $0
                   (i32.and
                    (i32.shr_u
                     (i32.add
                      (local.tee $2
                       (i32.shl
                        (local.get $0)
                        (local.tee $1
                         (i32.and
                          (i32.shr_u
                           (i32.add
                            (local.get $0)
                            (i32.const 1048320)
                           )
                           (i32.const 16)
                          )
                          (i32.const 8)
                         )
                        )
                       )
                      )
                      (i32.const 520192)
                     )
                     (i32.const 16)
                    )
                    (i32.const 4)
                   )
                  )
                  (local.get $1)
                 )
                 (local.tee $1
                  (i32.and
                   (i32.shr_u
                    (i32.add
                     (local.tee $0
                      (i32.shl
                       (local.get $2)
                       (local.get $0)
                      )
                     )
                     (i32.const 245760)
                    )
                    (i32.const 16)
                   )
                   (i32.const 2)
                  )
                 )
                )
               )
               (i32.shr_u
                (i32.shl
                 (local.get $0)
                 (local.get $1)
                )
                (i32.const 15)
               )
              )
             )
             (i32.const 1)
            )
            (i32.and
             (i32.shr_u
              (local.get $4)
              (i32.add
               (local.get $0)
               (i32.const 7)
              )
             )
             (i32.const 1)
            )
           )
          )
          (i32.const 0)
         )
        )
        (local.set $2
         (i32.sub
          (i32.const 0)
          (local.get $4)
         )
        )
        (block $__rjto$1
         (block $__rjti$1
          (if
           (i32.eqz
            (i32.or
             (local.tee $0
              (if (result i32)
               (local.tee $0
                (i32.load
                 (i32.add
                  (i32.shl
                   (local.get $18)
                   (i32.const 2)
                  )
                  (i32.const 4164)
                 )
                )
               )
               (block (result i32)
                (local.set $1
                 (i32.const 0)
                )
                (local.set $13
                 (i32.shl
                  (local.get $4)
                  (select
                   (i32.const 0)
                   (i32.sub
                    (i32.const 25)
                    (i32.shr_u
                     (local.get $18)
                     (i32.const 1)
                    )
                   )
                   (i32.eq
                    (local.get $18)
                    (i32.const 31)
                   )
                  )
                 )
                )
                (loop $while-in15 (result i32)
                 (if
                  (i32.lt_u
                   (local.tee $16
                    (i32.sub
                     (i32.and
                      (i32.load offset=4
                       (local.get $0)
                      )
                      (i32.const -8)
                     )
                     (local.get $4)
                    )
                   )
                   (local.get $2)
                  )
                  (local.set $1
                   (if (result i32)
                    (local.get $16)
                    (block (result i32)
                     (local.set $2
                      (local.get $16)
                     )
                     (local.get $0)
                    )
                    (block
                     (local.set $1
                      (local.get $0)
                     )
                     (local.set $2
                      (i32.const 0)
                     )
                     (br $__rjti$1)
                    )
                   )
                  )
                 )
                 (local.set $5
                  (select
                   (local.get $5)
                   (local.tee $5
                    (i32.load offset=20
                     (local.get $0)
                    )
                   )
                   (i32.or
                    (i32.eqz
                     (local.get $5)
                    )
                    (i32.eq
                     (local.get $5)
                     (local.tee $0
                      (i32.load
                       (i32.add
                        (i32.add
                         (local.get $0)
                         (i32.const 16)
                        )
                        (i32.shl
                         (i32.shr_u
                          (local.get $13)
                          (i32.const 31)
                         )
                         (i32.const 2)
                        )
                       )
                      )
                     )
                    )
                   )
                  )
                 )
                 (local.set $13
                  (i32.shl
                   (local.get $13)
                   (i32.const 1)
                  )
                 )
                 (br_if $while-in15
                  (local.get $0)
                 )
                 (local.get $1)
                )
               )
               (i32.const 0)
              )
             )
             (local.get $5)
            )
           )
           (block
            (drop
             (br_if $do-once
              (local.get $4)
              (i32.eqz
               (local.tee $1
                (i32.and
                 (local.get $6)
                 (i32.or
                  (local.tee $0
                   (i32.shl
                    (i32.const 2)
                    (local.get $18)
                   )
                  )
                  (i32.sub
                   (i32.const 0)
                   (local.get $0)
                  )
                 )
                )
               )
              )
             )
            )
            (local.set $5
             (i32.load
              (i32.add
               (i32.shl
                (i32.add
                 (i32.or
                  (i32.or
                   (i32.or
                    (i32.or
                     (local.tee $5
                      (i32.and
                       (i32.shr_u
                        (local.tee $1
                         (i32.add
                          (i32.and
                           (local.get $1)
                           (i32.sub
                            (i32.const 0)
                            (local.get $1)
                           )
                          )
                          (i32.const -1)
                         )
                        )
                        (i32.const 12)
                       )
                       (i32.const 16)
                      )
                     )
                     (local.tee $5
                      (i32.and
                       (i32.shr_u
                        (local.tee $1
                         (i32.shr_u
                          (local.get $1)
                          (local.get $5)
                         )
                        )
                        (i32.const 5)
                       )
                       (i32.const 8)
                      )
                     )
                    )
                    (local.tee $5
                     (i32.and
                      (i32.shr_u
                       (local.tee $1
                        (i32.shr_u
                         (local.get $1)
                         (local.get $5)
                        )
                       )
                       (i32.const 2)
                      )
                      (i32.const 4)
                     )
                    )
                   )
                   (local.tee $5
                    (i32.and
                     (i32.shr_u
                      (local.tee $1
                       (i32.shr_u
                        (local.get $1)
                        (local.get $5)
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                  (local.tee $5
                   (i32.and
                    (i32.shr_u
                     (local.tee $1
                      (i32.shr_u
                       (local.get $1)
                       (local.get $5)
                      )
                     )
                     (i32.const 1)
                    )
                    (i32.const 1)
                   )
                  )
                 )
                 (i32.shr_u
                  (local.get $1)
                  (local.get $5)
                 )
                )
                (i32.const 2)
               )
               (i32.const 4164)
              )
             )
            )
            (local.set $0
             (i32.const 0)
            )
           )
          )
          (local.set $5
           (if (result i32)
            (local.get $5)
            (block
             (local.set $1
              (local.get $0)
             )
             (local.set $0
              (local.get $5)
             )
             (br $__rjti$1)
            )
            (local.get $0)
           )
          )
          (br $__rjto$1)
         )
         (local.set $5
          (local.get $1)
         )
         (local.set $1
          (local.get $2)
         )
         (local.set $2
          (loop $while-in17 (result i32)
           (local.set $13
            (i32.lt_u
             (local.tee $16
              (i32.sub
               (i32.and
                (i32.load offset=4
                 (local.get $0)
                )
                (i32.const -8)
               )
               (local.get $4)
              )
             )
             (local.get $1)
            )
           )
           (local.set $1
            (select
             (local.get $16)
             (local.get $1)
             (local.get $13)
            )
           )
           (local.set $5
            (select
             (local.get $0)
             (local.get $5)
             (local.get $13)
            )
           )
           (if (result i32)
            (block (result i32)
             (if
              (i32.eqz
               (local.tee $2
                (i32.load offset=16
                 (local.get $0)
                )
               )
              )
              (local.set $2
               (i32.load offset=20
                (local.get $0)
               )
              )
             )
             (local.get $2)
            )
            (block
             (local.set $0
              (local.get $2)
             )
             (br $while-in17)
            )
            (local.get $1)
           )
          )
         )
        )
        (if (result i32)
         (local.get $5)
         (if (result i32)
          (i32.lt_u
           (local.get $2)
           (i32.sub
            (i32.load
             (i32.const 3868)
            )
            (local.get $4)
           )
          )
          (block
           (if
            (i32.gt_u
             (local.tee $17
              (i32.load
               (i32.const 3876)
              )
             )
             (local.get $5)
            )
            (call $_abort)
           )
           (if
            (i32.le_u
             (local.tee $8
              (i32.add
               (local.get $4)
               (local.get $5)
              )
             )
             (local.get $5)
            )
            (call $_abort)
           )
           (local.set $15
            (i32.load offset=24
             (local.get $5)
            )
           )
           (if
            (i32.eq
             (local.get $5)
             (local.tee $0
              (i32.load offset=12
               (local.get $5)
              )
             )
            )
            (block $do-once18
             (if
              (i32.eqz
               (local.tee $0
                (i32.load
                 (local.tee $1
                  (i32.add
                   (local.get $5)
                   (i32.const 20)
                  )
                 )
                )
               )
              )
              (br_if $do-once18
               (i32.eqz
                (local.tee $0
                 (i32.load
                  (local.tee $1
                   (i32.add
                    (local.get $5)
                    (i32.const 16)
                   )
                  )
                 )
                )
               )
              )
             )
             (loop $while-in21
              (block $while-out20
               (local.set $0
                (if (result i32)
                 (local.tee $11
                  (i32.load
                   (local.tee $10
                    (i32.add
                     (local.get $0)
                     (i32.const 20)
                    )
                   )
                  )
                 )
                 (block (result i32)
                  (local.set $1
                   (local.get $10)
                  )
                  (local.get $11)
                 )
                 (block (result i32)
                  (br_if $while-out20
                   (i32.eqz
                    (local.tee $11
                     (i32.load
                      (local.tee $10
                       (i32.add
                        (local.get $0)
                        (i32.const 16)
                       )
                      )
                     )
                    )
                   )
                  )
                  (local.set $1
                   (local.get $10)
                  )
                  (local.get $11)
                 )
                )
               )
               (br $while-in21)
              )
             )
             (if
              (i32.gt_u
               (local.get $17)
               (local.get $1)
              )
              (call $_abort)
              (block
               (i32.store
                (local.get $1)
                (i32.const 0)
               )
               (local.set $7
                (local.get $0)
               )
              )
             )
            )
            (block
             (if
              (i32.gt_u
               (local.get $17)
               (local.tee $1
                (i32.load offset=8
                 (local.get $5)
                )
               )
              )
              (call $_abort)
             )
             (if
              (i32.ne
               (i32.load
                (local.tee $10
                 (i32.add
                  (local.get $1)
                  (i32.const 12)
                 )
                )
               )
               (local.get $5)
              )
              (call $_abort)
             )
             (if
              (i32.eq
               (local.get $5)
               (i32.load
                (local.tee $11
                 (i32.add
                  (local.get $0)
                  (i32.const 8)
                 )
                )
               )
              )
              (block
               (i32.store
                (local.get $10)
                (local.get $0)
               )
               (i32.store
                (local.get $11)
                (local.get $1)
               )
               (local.set $7
                (local.get $0)
               )
              )
              (call $_abort)
             )
            )
           )
           (if
            (local.get $15)
            (block $label$break$L176
             (if
              (i32.eq
               (local.get $5)
               (i32.load
                (local.tee $1
                 (i32.add
                  (i32.shl
                   (local.tee $0
                    (i32.load offset=28
                     (local.get $5)
                    )
                   )
                   (i32.const 2)
                  )
                  (i32.const 4164)
                 )
                )
               )
              )
              (block
               (i32.store
                (local.get $1)
                (local.get $7)
               )
               (if
                (i32.eqz
                 (local.get $7)
                )
                (block
                 (i32.store
                  (i32.const 3864)
                  (local.tee $3
                   (i32.and
                    (local.get $6)
                    (i32.xor
                     (i32.shl
                      (i32.const 1)
                      (local.get $0)
                     )
                     (i32.const -1)
                    )
                   )
                  )
                 )
                 (br $label$break$L176)
                )
               )
              )
              (if
               (i32.gt_u
                (i32.load
                 (i32.const 3876)
                )
                (local.get $15)
               )
               (call $_abort)
               (block
                (i32.store
                 (select
                  (local.tee $0
                   (i32.add
                    (local.get $15)
                    (i32.const 16)
                   )
                  )
                  (i32.add
                   (local.get $15)
                   (i32.const 20)
                  )
                  (i32.eq
                   (local.get $5)
                   (i32.load
                    (local.get $0)
                   )
                  )
                 )
                 (local.get $7)
                )
                (if
                 (i32.eqz
                  (local.get $7)
                 )
                 (block
                  (local.set $3
                   (local.get $6)
                  )
                  (br $label$break$L176)
                 )
                )
               )
              )
             )
             (if
              (i32.gt_u
               (local.tee $1
                (i32.load
                 (i32.const 3876)
                )
               )
               (local.get $7)
              )
              (call $_abort)
             )
             (i32.store offset=24
              (local.get $7)
              (local.get $15)
             )
             (if
              (local.tee $0
               (i32.load offset=16
                (local.get $5)
               )
              )
              (if
               (i32.gt_u
                (local.get $1)
                (local.get $0)
               )
               (call $_abort)
               (block
                (i32.store offset=16
                 (local.get $7)
                 (local.get $0)
                )
                (i32.store offset=24
                 (local.get $0)
                 (local.get $7)
                )
               )
              )
             )
             (if
              (local.tee $0
               (i32.load offset=20
                (local.get $5)
               )
              )
              (if
               (i32.gt_u
                (i32.load
                 (i32.const 3876)
                )
                (local.get $0)
               )
               (call $_abort)
               (block
                (i32.store offset=20
                 (local.get $7)
                 (local.get $0)
                )
                (i32.store offset=24
                 (local.get $0)
                 (local.get $7)
                )
                (local.set $3
                 (local.get $6)
                )
               )
              )
              (local.set $3
               (local.get $6)
              )
             )
            )
            (local.set $3
             (local.get $6)
            )
           )
           (if
            (i32.lt_u
             (local.get $2)
             (i32.const 16)
            )
            (block
             (i32.store offset=4
              (local.get $5)
              (i32.or
               (local.tee $0
                (i32.add
                 (local.get $2)
                 (local.get $4)
                )
               )
               (i32.const 3)
              )
             )
             (i32.store
              (local.tee $0
               (i32.add
                (i32.add
                 (local.get $0)
                 (local.get $5)
                )
                (i32.const 4)
               )
              )
              (i32.or
               (i32.load
                (local.get $0)
               )
               (i32.const 1)
              )
             )
            )
            (block $label$break$L200
             (i32.store offset=4
              (local.get $5)
              (i32.or
               (local.get $4)
               (i32.const 3)
              )
             )
             (i32.store offset=4
              (local.get $8)
              (i32.or
               (local.get $2)
               (i32.const 1)
              )
             )
             (i32.store
              (i32.add
               (local.get $2)
               (local.get $8)
              )
              (local.get $2)
             )
             (local.set $1
              (i32.shr_u
               (local.get $2)
               (i32.const 3)
              )
             )
             (if
              (i32.lt_u
               (local.get $2)
               (i32.const 256)
              )
              (block
               (local.set $0
                (i32.add
                 (i32.shl
                  (local.get $1)
                  (i32.const 3)
                 )
                 (i32.const 3900)
                )
               )
               (if
                (i32.and
                 (local.tee $3
                  (i32.load
                   (i32.const 3860)
                  )
                 )
                 (local.tee $1
                  (i32.shl
                   (i32.const 1)
                   (local.get $1)
                  )
                 )
                )
                (if
                 (i32.gt_u
                  (i32.load
                   (i32.const 3876)
                  )
                  (local.tee $1
                   (i32.load
                    (local.tee $3
                     (i32.add
                      (local.get $0)
                      (i32.const 8)
                     )
                    )
                   )
                  )
                 )
                 (call $_abort)
                 (block
                  (local.set $12
                   (local.get $1)
                  )
                  (local.set $19
                   (local.get $3)
                  )
                 )
                )
                (block
                 (i32.store
                  (i32.const 3860)
                  (i32.or
                   (local.get $1)
                   (local.get $3)
                  )
                 )
                 (local.set $12
                  (local.get $0)
                 )
                 (local.set $19
                  (i32.add
                   (local.get $0)
                   (i32.const 8)
                  )
                 )
                )
               )
               (i32.store
                (local.get $19)
                (local.get $8)
               )
               (i32.store offset=12
                (local.get $12)
                (local.get $8)
               )
               (i32.store offset=8
                (local.get $8)
                (local.get $12)
               )
               (i32.store offset=12
                (local.get $8)
                (local.get $0)
               )
               (br $label$break$L200)
              )
             )
             (local.set $0
              (i32.add
               (i32.shl
                (local.tee $1
                 (if (result i32)
                  (local.tee $0
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 8)
                   )
                  )
                  (if (result i32)
                   (i32.gt_u
                    (local.get $2)
                    (i32.const 16777215)
                   )
                   (i32.const 31)
                   (i32.or
                    (i32.shl
                     (local.tee $0
                      (i32.add
                       (i32.sub
                        (i32.const 14)
                        (i32.or
                         (i32.or
                          (local.tee $0
                           (i32.and
                            (i32.shr_u
                             (i32.add
                              (local.tee $4
                               (i32.shl
                                (local.get $0)
                                (local.tee $1
                                 (i32.and
                                  (i32.shr_u
                                   (i32.add
                                    (local.get $0)
                                    (i32.const 1048320)
                                   )
                                   (i32.const 16)
                                  )
                                  (i32.const 8)
                                 )
                                )
                               )
                              )
                              (i32.const 520192)
                             )
                             (i32.const 16)
                            )
                            (i32.const 4)
                           )
                          )
                          (local.get $1)
                         )
                         (local.tee $1
                          (i32.and
                           (i32.shr_u
                            (i32.add
                             (local.tee $0
                              (i32.shl
                               (local.get $4)
                               (local.get $0)
                              )
                             )
                             (i32.const 245760)
                            )
                            (i32.const 16)
                           )
                           (i32.const 2)
                          )
                         )
                        )
                       )
                       (i32.shr_u
                        (i32.shl
                         (local.get $0)
                         (local.get $1)
                        )
                        (i32.const 15)
                       )
                      )
                     )
                     (i32.const 1)
                    )
                    (i32.and
                     (i32.shr_u
                      (local.get $2)
                      (i32.add
                       (local.get $0)
                       (i32.const 7)
                      )
                     )
                     (i32.const 1)
                    )
                   )
                  )
                  (i32.const 0)
                 )
                )
                (i32.const 2)
               )
               (i32.const 4164)
              )
             )
             (i32.store offset=28
              (local.get $8)
              (local.get $1)
             )
             (i32.store offset=4
              (local.tee $4
               (i32.add
                (local.get $8)
                (i32.const 16)
               )
              )
              (i32.const 0)
             )
             (i32.store
              (local.get $4)
              (i32.const 0)
             )
             (if
              (i32.eqz
               (i32.and
                (local.tee $4
                 (i32.shl
                  (i32.const 1)
                  (local.get $1)
                 )
                )
                (local.get $3)
               )
              )
              (block
               (i32.store
                (i32.const 3864)
                (i32.or
                 (local.get $3)
                 (local.get $4)
                )
               )
               (i32.store
                (local.get $0)
                (local.get $8)
               )
               (i32.store offset=24
                (local.get $8)
                (local.get $0)
               )
               (i32.store offset=12
                (local.get $8)
                (local.get $8)
               )
               (i32.store offset=8
                (local.get $8)
                (local.get $8)
               )
               (br $label$break$L200)
              )
             )
             (if
              (i32.eq
               (local.get $2)
               (i32.and
                (i32.load offset=4
                 (local.tee $0
                  (i32.load
                   (local.get $0)
                  )
                 )
                )
                (i32.const -8)
               )
              )
              (local.set $9
               (local.get $0)
              )
              (block $label$break$L218
               (local.set $1
                (i32.shl
                 (local.get $2)
                 (select
                  (i32.const 0)
                  (i32.sub
                   (i32.const 25)
                   (i32.shr_u
                    (local.get $1)
                    (i32.const 1)
                   )
                  )
                  (i32.eq
                   (local.get $1)
                   (i32.const 31)
                  )
                 )
                )
               )
               (loop $while-in30
                (if
                 (local.tee $3
                  (i32.load
                   (local.tee $4
                    (i32.add
                     (i32.add
                      (local.get $0)
                      (i32.const 16)
                     )
                     (i32.shl
                      (i32.shr_u
                       (local.get $1)
                       (i32.const 31)
                      )
                      (i32.const 2)
                     )
                    )
                   )
                  )
                 )
                 (block
                  (local.set $1
                   (i32.shl
                    (local.get $1)
                    (i32.const 1)
                   )
                  )
                  (if
                   (i32.eq
                    (local.get $2)
                    (i32.and
                     (i32.load offset=4
                      (local.get $3)
                     )
                     (i32.const -8)
                    )
                   )
                   (block
                    (local.set $9
                     (local.get $3)
                    )
                    (br $label$break$L218)
                   )
                   (block
                    (local.set $0
                     (local.get $3)
                    )
                    (br $while-in30)
                   )
                  )
                 )
                )
               )
               (if
                (i32.gt_u
                 (i32.load
                  (i32.const 3876)
                 )
                 (local.get $4)
                )
                (call $_abort)
                (block
                 (i32.store
                  (local.get $4)
                  (local.get $8)
                 )
                 (i32.store offset=24
                  (local.get $8)
                  (local.get $0)
                 )
                 (i32.store offset=12
                  (local.get $8)
                  (local.get $8)
                 )
                 (i32.store offset=8
                  (local.get $8)
                  (local.get $8)
                 )
                 (br $label$break$L200)
                )
               )
              )
             )
             (if
              (i32.and
               (i32.le_u
                (local.tee $0
                 (i32.load
                  (i32.const 3876)
                 )
                )
                (local.get $9)
               )
               (i32.le_u
                (local.get $0)
                (local.tee $0
                 (i32.load
                  (local.tee $3
                   (i32.add
                    (local.get $9)
                    (i32.const 8)
                   )
                  )
                 )
                )
               )
              )
              (block
               (i32.store offset=12
                (local.get $0)
                (local.get $8)
               )
               (i32.store
                (local.get $3)
                (local.get $8)
               )
               (i32.store offset=8
                (local.get $8)
                (local.get $0)
               )
               (i32.store offset=12
                (local.get $8)
                (local.get $9)
               )
               (i32.store offset=24
                (local.get $8)
                (i32.const 0)
               )
              )
              (call $_abort)
             )
            )
           )
           (global.set $STACKTOP
            (local.get $14)
           )
           (return
            (i32.add
             (local.get $5)
             (i32.const 8)
            )
           )
          )
          (local.get $4)
         )
         (local.get $4)
        )
       )
       (local.get $4)
      )
     )
    )
   )
  )
  (if
   (i32.ge_u
    (local.tee $1
     (i32.load
      (i32.const 3868)
     )
    )
    (local.get $3)
   )
   (block
    (local.set $0
     (i32.load
      (i32.const 3880)
     )
    )
    (if
     (i32.gt_u
      (local.tee $2
       (i32.sub
        (local.get $1)
        (local.get $3)
       )
      )
      (i32.const 15)
     )
     (block
      (i32.store
       (i32.const 3880)
       (local.tee $4
        (i32.add
         (local.get $0)
         (local.get $3)
        )
       )
      )
      (i32.store
       (i32.const 3868)
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $4)
       (i32.or
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.store
       (i32.add
        (local.get $0)
        (local.get $1)
       )
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $0)
       (i32.or
        (local.get $3)
        (i32.const 3)
       )
      )
     )
     (block
      (i32.store
       (i32.const 3868)
       (i32.const 0)
      )
      (i32.store
       (i32.const 3880)
       (i32.const 0)
      )
      (i32.store offset=4
       (local.get $0)
       (i32.or
        (local.get $1)
        (i32.const 3)
       )
      )
      (i32.store
       (local.tee $3
        (i32.add
         (i32.add
          (local.get $0)
          (local.get $1)
         )
         (i32.const 4)
        )
       )
       (i32.or
        (i32.load
         (local.get $3)
        )
        (i32.const 1)
       )
      )
     )
    )
    (global.set $STACKTOP
     (local.get $14)
    )
    (return
     (i32.add
      (local.get $0)
      (i32.const 8)
     )
    )
   )
  )
  (if
   (i32.gt_u
    (local.tee $1
     (i32.load
      (i32.const 3872)
     )
    )
    (local.get $3)
   )
   (block
    (i32.store
     (i32.const 3872)
     (local.tee $1
      (i32.sub
       (local.get $1)
       (local.get $3)
      )
     )
    )
    (i32.store
     (i32.const 3884)
     (local.tee $2
      (i32.add
       (local.get $3)
       (local.tee $0
        (i32.load
         (i32.const 3884)
        )
       )
      )
     )
    )
    (i32.store offset=4
     (local.get $2)
     (i32.or
      (local.get $1)
      (i32.const 1)
     )
    )
    (i32.store offset=4
     (local.get $0)
     (i32.or
      (local.get $3)
      (i32.const 3)
     )
    )
    (global.set $STACKTOP
     (local.get $14)
    )
    (return
     (i32.add
      (local.get $0)
      (i32.const 8)
     )
    )
   )
  )
  (local.set $0
   (local.get $14)
  )
  (if
   (i32.le_u
    (local.tee $4
     (i32.and
      (local.tee $5
       (i32.add
        (local.tee $6
         (i32.add
          (local.get $3)
          (i32.const 47)
         )
        )
        (local.tee $0
         (if (result i32)
          (i32.load
           (i32.const 4332)
          )
          (i32.load
           (i32.const 4340)
          )
          (block (result i32)
           (i32.store
            (i32.const 4340)
            (i32.const 4096)
           )
           (i32.store
            (i32.const 4336)
            (i32.const 4096)
           )
           (i32.store
            (i32.const 4344)
            (i32.const -1)
           )
           (i32.store
            (i32.const 4348)
            (i32.const -1)
           )
           (i32.store
            (i32.const 4352)
            (i32.const 0)
           )
           (i32.store
            (i32.const 4304)
            (i32.const 0)
           )
           (i32.store
            (i32.const 4332)
            (i32.xor
             (i32.and
              (local.get $0)
              (i32.const -16)
             )
             (i32.const 1431655768)
            )
           )
           (i32.const 4096)
          )
         )
        )
       )
      )
      (local.tee $7
       (i32.sub
        (i32.const 0)
        (local.get $0)
       )
      )
     )
    )
    (local.get $3)
   )
   (block
    (global.set $STACKTOP
     (local.get $14)
    )
    (return
     (i32.const 0)
    )
   )
  )
  (if
   (local.tee $0
    (i32.load
     (i32.const 4300)
    )
   )
   (if
    (i32.or
     (i32.le_u
      (local.tee $9
       (i32.add
        (local.get $4)
        (local.tee $2
         (i32.load
          (i32.const 4292)
         )
        )
       )
      )
      (local.get $2)
     )
     (i32.gt_u
      (local.get $9)
      (local.get $0)
     )
    )
    (block
     (global.set $STACKTOP
      (local.get $14)
     )
     (return
      (i32.const 0)
     )
    )
   )
  )
  (local.set $9
   (i32.add
    (local.get $3)
    (i32.const 48)
   )
  )
  (block $__rjto$7
   (block $__rjti$7
    (if
     (i32.and
      (i32.load
       (i32.const 4304)
      )
      (i32.const 4)
     )
     (local.set $1
      (i32.const 0)
     )
     (block
      (block $do-once37
       (block $__rjti$3
        (block $__rjti$2
         (br_if $__rjti$2
          (i32.eqz
           (local.tee $0
            (i32.load
             (i32.const 3884)
            )
           )
          )
         )
         (local.set $2
          (i32.const 4308)
         )
         (loop $while-in34
          (block $while-out33
           (if
            (i32.le_u
             (local.tee $12
              (i32.load
               (local.get $2)
              )
             )
             (local.get $0)
            )
            (br_if $while-out33
             (i32.gt_u
              (i32.add
               (local.get $12)
               (i32.load offset=4
                (local.get $2)
               )
              )
              (local.get $0)
             )
            )
           )
           (br_if $while-in34
            (local.tee $2
             (i32.load offset=8
              (local.get $2)
             )
            )
           )
           (br $__rjti$2)
          )
         )
         (if
          (i32.lt_u
           (local.tee $1
            (i32.and
             (local.get $7)
             (i32.sub
              (local.get $5)
              (local.get $1)
             )
            )
           )
           (i32.const 2147483647)
          )
          (block
           (local.set $5
            (i32.add
             (local.get $2)
             (i32.const 4)
            )
           )
           (br_if $__rjti$3
            (i32.ne
             (local.tee $0
              (call $_sbrk
               (local.get $1)
              )
             )
             (i32.add
              (i32.load
               (local.get $2)
              )
              (i32.load
               (local.get $5)
              )
             )
            )
           )
           (br_if $__rjti$7
            (i32.ne
             (local.get $0)
             (i32.const -1)
            )
           )
          )
          (local.set $1
           (i32.const 0)
          )
         )
         (br $do-once37)
        )
        (local.set $1
         (if (result i32)
          (i32.eq
           (local.tee $0
            (call $_sbrk
             (i32.const 0)
            )
           )
           (i32.const -1)
          )
          (i32.const 0)
          (block (result i32)
           (local.set $2
            (i32.add
             (local.tee $5
              (i32.load
               (i32.const 4292)
              )
             )
             (local.tee $1
              (i32.add
               (local.get $4)
               (select
                (i32.sub
                 (i32.and
                  (i32.add
                   (local.get $0)
                   (local.tee $2
                    (i32.add
                     (local.tee $1
                      (i32.load
                       (i32.const 4336)
                      )
                     )
                     (i32.const -1)
                    )
                   )
                  )
                  (i32.sub
                   (i32.const 0)
                   (local.get $1)
                  )
                 )
                 (local.get $0)
                )
                (i32.const 0)
                (i32.and
                 (local.get $0)
                 (local.get $2)
                )
               )
              )
             )
            )
           )
           (if (result i32)
            (i32.and
             (i32.lt_u
              (local.get $1)
              (i32.const 2147483647)
             )
             (i32.gt_u
              (local.get $1)
              (local.get $3)
             )
            )
            (block
             (if
              (local.tee $7
               (i32.load
                (i32.const 4300)
               )
              )
              (if
               (i32.or
                (i32.le_u
                 (local.get $2)
                 (local.get $5)
                )
                (i32.gt_u
                 (local.get $2)
                 (local.get $7)
                )
               )
               (block
                (local.set $1
                 (i32.const 0)
                )
                (br $do-once37)
               )
              )
             )
             (br_if $__rjti$7
              (i32.eq
               (local.get $0)
               (local.tee $2
                (call $_sbrk
                 (local.get $1)
                )
               )
              )
             )
             (local.set $0
              (local.get $2)
             )
             (br $__rjti$3)
            )
            (i32.const 0)
           )
          )
         )
        )
        (br $do-once37)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.and
           (i32.ne
            (local.get $0)
            (i32.const -1)
           )
           (i32.lt_u
            (local.get $1)
            (i32.const 2147483647)
           )
          )
          (i32.gt_u
           (local.get $9)
           (local.get $1)
          )
         )
        )
        (if
         (i32.eq
          (local.get $0)
          (i32.const -1)
         )
         (block
          (local.set $1
           (i32.const 0)
          )
          (br $do-once37)
         )
         (br $__rjti$7)
        )
       )
       (br_if $__rjti$7
        (i32.ge_u
         (local.tee $2
          (i32.and
           (i32.add
            (local.tee $2
             (i32.load
              (i32.const 4340)
             )
            )
            (i32.sub
             (local.get $6)
             (local.get $1)
            )
           )
           (i32.sub
            (i32.const 0)
            (local.get $2)
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (local.set $6
        (i32.sub
         (i32.const 0)
         (local.get $1)
        )
       )
       (local.set $1
        (if (result i32)
         (i32.eq
          (call $_sbrk
           (local.get $2)
          )
          (i32.const -1)
         )
         (block (result i32)
          (drop
           (call $_sbrk
            (local.get $6)
           )
          )
          (i32.const 0)
         )
         (block
          (local.set $1
           (i32.add
            (local.get $1)
            (local.get $2)
           )
          )
          (br $__rjti$7)
         )
        )
       )
      )
      (i32.store
       (i32.const 4304)
       (i32.or
        (i32.load
         (i32.const 4304)
        )
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.lt_u
      (local.get $4)
      (i32.const 2147483647)
     )
     (block
      (local.set $0
       (call $_sbrk
        (local.get $4)
       )
      )
      (local.set $4
       (i32.gt_u
        (local.tee $6
         (i32.sub
          (local.tee $2
           (call $_sbrk
            (i32.const 0)
           )
          )
          (local.get $0)
         )
        )
        (i32.add
         (local.get $3)
         (i32.const 40)
        )
       )
      )
      (local.set $1
       (select
        (local.get $6)
        (local.get $1)
        (local.get $4)
       )
      )
      (br_if $__rjti$7
       (i32.eqz
        (i32.or
         (i32.or
          (i32.xor
           (local.get $4)
           (i32.const 1)
          )
          (i32.eq
           (local.get $0)
           (i32.const -1)
          )
         )
         (i32.xor
          (i32.and
           (i32.and
            (i32.ne
             (local.get $0)
             (i32.const -1)
            )
            (i32.ne
             (local.get $2)
             (i32.const -1)
            )
           )
           (i32.lt_u
            (local.get $0)
            (local.get $2)
           )
          )
          (i32.const 1)
         )
        )
       )
      )
     )
    )
    (br $__rjto$7)
   )
   (i32.store
    (i32.const 4292)
    (local.tee $2
     (i32.add
      (local.get $1)
      (i32.load
       (i32.const 4292)
      )
     )
    )
   )
   (if
    (i32.gt_u
     (local.get $2)
     (i32.load
      (i32.const 4296)
     )
    )
    (i32.store
     (i32.const 4296)
     (local.get $2)
    )
   )
   (if
    (local.tee $6
     (i32.load
      (i32.const 3884)
     )
    )
    (block $label$break$L294
     (local.set $2
      (i32.const 4308)
     )
     (block $__rjto$4
      (block $__rjti$4
       (loop $while-in41
        (br_if $__rjti$4
         (i32.eq
          (local.get $0)
          (i32.add
           (local.tee $4
            (i32.load
             (local.get $2)
            )
           )
           (local.tee $5
            (i32.load offset=4
             (local.get $2)
            )
           )
          )
         )
        )
        (br_if $while-in41
         (local.tee $2
          (i32.load offset=8
           (local.get $2)
          )
         )
        )
       )
       (br $__rjto$4)
      )
      (local.set $7
       (i32.add
        (local.get $2)
        (i32.const 4)
       )
      )
      (if
       (i32.eqz
        (i32.and
         (i32.load offset=12
          (local.get $2)
         )
         (i32.const 8)
        )
       )
       (if
        (i32.and
         (i32.le_u
          (local.get $4)
          (local.get $6)
         )
         (i32.gt_u
          (local.get $0)
          (local.get $6)
         )
        )
        (block
         (i32.store
          (local.get $7)
          (i32.add
           (local.get $1)
           (local.get $5)
          )
         )
         (local.set $0
          (i32.add
           (local.get $6)
           (local.tee $2
            (select
             (i32.and
              (i32.sub
               (i32.const 0)
               (local.tee $0
                (i32.add
                 (local.get $6)
                 (i32.const 8)
                )
               )
              )
              (i32.const 7)
             )
             (i32.const 0)
             (i32.and
              (local.get $0)
              (i32.const 7)
             )
            )
           )
          )
         )
         (local.set $1
          (i32.sub
           (local.tee $4
            (i32.add
             (local.get $1)
             (i32.load
              (i32.const 3872)
             )
            )
           )
           (local.get $2)
          )
         )
         (i32.store
          (i32.const 3884)
          (local.get $0)
         )
         (i32.store
          (i32.const 3872)
          (local.get $1)
         )
         (i32.store offset=4
          (local.get $0)
          (i32.or
           (local.get $1)
           (i32.const 1)
          )
         )
         (i32.store offset=4
          (i32.add
           (local.get $4)
           (local.get $6)
          )
          (i32.const 40)
         )
         (i32.store
          (i32.const 3888)
          (i32.load
           (i32.const 4348)
          )
         )
         (br $label$break$L294)
        )
       )
      )
     )
     (if
      (i32.lt_u
       (local.get $0)
       (local.tee $2
        (i32.load
         (i32.const 3876)
        )
       )
      )
      (block
       (i32.store
        (i32.const 3876)
        (local.get $0)
       )
       (local.set $2
        (local.get $0)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $0)
       (local.get $1)
      )
     )
     (local.set $4
      (i32.const 4308)
     )
     (block $__rjto$5
      (block $__rjti$5
       (loop $while-in43
        (br_if $__rjti$5
         (i32.eq
          (local.get $5)
          (i32.load
           (local.get $4)
          )
         )
        )
        (br_if $while-in43
         (local.tee $4
          (i32.load offset=8
           (local.get $4)
          )
         )
        )
       )
       (br $__rjto$5)
      )
      (if
       (i32.eqz
        (i32.and
         (i32.load offset=12
          (local.get $4)
         )
         (i32.const 8)
        )
       )
       (block
        (i32.store
         (local.get $4)
         (local.get $0)
        )
        (i32.store
         (local.tee $4
          (i32.add
           (local.get $4)
           (i32.const 4)
          )
         )
         (i32.add
          (local.get $1)
          (i32.load
           (local.get $4)
          )
         )
        )
        (local.set $7
         (i32.add
          (local.get $3)
          (local.tee $8
           (i32.add
            (local.get $0)
            (select
             (i32.and
              (i32.sub
               (i32.const 0)
               (local.tee $0
                (i32.add
                 (local.get $0)
                 (i32.const 8)
                )
               )
              )
              (i32.const 7)
             )
             (i32.const 0)
             (i32.and
              (local.get $0)
              (i32.const 7)
             )
            )
           )
          )
         )
        )
        (local.set $4
         (i32.sub
          (i32.sub
           (local.tee $1
            (i32.add
             (local.get $5)
             (select
              (i32.and
               (i32.sub
                (i32.const 0)
                (local.tee $0
                 (i32.add
                  (local.get $5)
                  (i32.const 8)
                 )
                )
               )
               (i32.const 7)
              )
              (i32.const 0)
              (i32.and
               (local.get $0)
               (i32.const 7)
              )
             )
            )
           )
           (local.get $8)
          )
          (local.get $3)
         )
        )
        (i32.store offset=4
         (local.get $8)
         (i32.or
          (local.get $3)
          (i32.const 3)
         )
        )
        (if
         (i32.eq
          (local.get $1)
          (local.get $6)
         )
         (block
          (i32.store
           (i32.const 3872)
           (local.tee $0
            (i32.add
             (local.get $4)
             (i32.load
              (i32.const 3872)
             )
            )
           )
          )
          (i32.store
           (i32.const 3884)
           (local.get $7)
          )
          (i32.store offset=4
           (local.get $7)
           (i32.or
            (local.get $0)
            (i32.const 1)
           )
          )
         )
         (block $label$break$L317
          (if
           (i32.eq
            (local.get $1)
            (i32.load
             (i32.const 3880)
            )
           )
           (block
            (i32.store
             (i32.const 3868)
             (local.tee $0
              (i32.add
               (local.get $4)
               (i32.load
                (i32.const 3868)
               )
              )
             )
            )
            (i32.store
             (i32.const 3880)
             (local.get $7)
            )
            (i32.store offset=4
             (local.get $7)
             (i32.or
              (local.get $0)
              (i32.const 1)
             )
            )
            (i32.store
             (i32.add
              (local.get $0)
              (local.get $7)
             )
             (local.get $0)
            )
            (br $label$break$L317)
           )
          )
          (local.set $2
           (if (result i32)
            (i32.eq
             (i32.and
              (local.tee $0
               (i32.load offset=4
                (local.get $1)
               )
              )
              (i32.const 3)
             )
             (i32.const 1)
            )
            (block (result i32)
             (local.set $12
              (i32.and
               (local.get $0)
               (i32.const -8)
              )
             )
             (local.set $5
              (i32.shr_u
               (local.get $0)
               (i32.const 3)
              )
             )
             (block $label$break$L325
              (if
               (i32.lt_u
                (local.get $0)
                (i32.const 256)
               )
               (block
                (local.set $3
                 (i32.load offset=12
                  (local.get $1)
                 )
                )
                (if
                 (i32.ne
                  (local.tee $6
                   (i32.load offset=8
                    (local.get $1)
                   )
                  )
                  (local.tee $0
                   (i32.add
                    (i32.shl
                     (local.get $5)
                     (i32.const 3)
                    )
                    (i32.const 3900)
                   )
                  )
                 )
                 (block $do-once46
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.get $6)
                   )
                   (call $_abort)
                  )
                  (br_if $do-once46
                   (i32.eq
                    (local.get $1)
                    (i32.load offset=12
                     (local.get $6)
                    )
                   )
                  )
                  (call $_abort)
                 )
                )
                (if
                 (i32.eq
                  (local.get $3)
                  (local.get $6)
                 )
                 (block
                  (i32.store
                   (i32.const 3860)
                   (i32.and
                    (i32.load
                     (i32.const 3860)
                    )
                    (i32.xor
                     (i32.shl
                      (i32.const 1)
                      (local.get $5)
                     )
                     (i32.const -1)
                    )
                   )
                  )
                  (br $label$break$L325)
                 )
                )
                (if
                 (i32.eq
                  (local.get $0)
                  (local.get $3)
                 )
                 (local.set $20
                  (i32.add
                   (local.get $3)
                   (i32.const 8)
                  )
                 )
                 (block $do-once48
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.get $3)
                   )
                   (call $_abort)
                  )
                  (if
                   (i32.eq
                    (local.get $1)
                    (i32.load
                     (local.tee $0
                      (i32.add
                       (local.get $3)
                       (i32.const 8)
                      )
                     )
                    )
                   )
                   (block
                    (local.set $20
                     (local.get $0)
                    )
                    (br $do-once48)
                   )
                  )
                  (call $_abort)
                 )
                )
                (i32.store offset=12
                 (local.get $6)
                 (local.get $3)
                )
                (i32.store
                 (local.get $20)
                 (local.get $6)
                )
               )
               (block
                (local.set $9
                 (i32.load offset=24
                  (local.get $1)
                 )
                )
                (if
                 (i32.eq
                  (local.get $1)
                  (local.tee $0
                   (i32.load offset=12
                    (local.get $1)
                   )
                  )
                 )
                 (block $do-once50
                  (if
                   (local.tee $0
                    (i32.load
                     (local.tee $6
                      (i32.add
                       (local.tee $3
                        (i32.add
                         (local.get $1)
                         (i32.const 16)
                        )
                       )
                       (i32.const 4)
                      )
                     )
                    )
                   )
                   (local.set $3
                    (local.get $6)
                   )
                   (br_if $do-once50
                    (i32.eqz
                     (local.tee $0
                      (i32.load
                       (local.get $3)
                      )
                     )
                    )
                   )
                  )
                  (loop $while-in53
                   (block $while-out52
                    (local.set $0
                     (if (result i32)
                      (local.tee $5
                       (i32.load
                        (local.tee $6
                         (i32.add
                          (local.get $0)
                          (i32.const 20)
                         )
                        )
                       )
                      )
                      (block (result i32)
                       (local.set $3
                        (local.get $6)
                       )
                       (local.get $5)
                      )
                      (block (result i32)
                       (br_if $while-out52
                        (i32.eqz
                         (local.tee $5
                          (i32.load
                           (local.tee $6
                            (i32.add
                             (local.get $0)
                             (i32.const 16)
                            )
                           )
                          )
                         )
                        )
                       )
                       (local.set $3
                        (local.get $6)
                       )
                       (local.get $5)
                      )
                     )
                    )
                    (br $while-in53)
                   )
                  )
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.get $3)
                   )
                   (call $_abort)
                   (block
                    (i32.store
                     (local.get $3)
                     (i32.const 0)
                    )
                    (local.set $10
                     (local.get $0)
                    )
                   )
                  )
                 )
                 (block
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.tee $3
                     (i32.load offset=8
                      (local.get $1)
                     )
                    )
                   )
                   (call $_abort)
                  )
                  (if
                   (i32.ne
                    (i32.load
                     (local.tee $2
                      (i32.add
                       (local.get $3)
                       (i32.const 12)
                      )
                     )
                    )
                    (local.get $1)
                   )
                   (call $_abort)
                  )
                  (if
                   (i32.eq
                    (local.get $1)
                    (i32.load
                     (local.tee $6
                      (i32.add
                       (local.get $0)
                       (i32.const 8)
                      )
                     )
                    )
                   )
                   (block
                    (i32.store
                     (local.get $2)
                     (local.get $0)
                    )
                    (i32.store
                     (local.get $6)
                     (local.get $3)
                    )
                    (local.set $10
                     (local.get $0)
                    )
                   )
                   (call $_abort)
                  )
                 )
                )
                (br_if $label$break$L325
                 (i32.eqz
                  (local.get $9)
                 )
                )
                (if
                 (i32.eq
                  (local.get $1)
                  (i32.load
                   (local.tee $3
                    (i32.add
                     (i32.shl
                      (local.tee $0
                       (i32.load offset=28
                        (local.get $1)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.const 4164)
                    )
                   )
                  )
                 )
                 (block $do-once54
                  (i32.store
                   (local.get $3)
                   (local.get $10)
                  )
                  (br_if $do-once54
                   (local.get $10)
                  )
                  (i32.store
                   (i32.const 3864)
                   (i32.and
                    (i32.load
                     (i32.const 3864)
                    )
                    (i32.xor
                     (i32.shl
                      (i32.const 1)
                      (local.get $0)
                     )
                     (i32.const -1)
                    )
                   )
                  )
                  (br $label$break$L325)
                 )
                 (if
                  (i32.gt_u
                   (i32.load
                    (i32.const 3876)
                   )
                   (local.get $9)
                  )
                  (call $_abort)
                  (block
                   (i32.store
                    (select
                     (local.tee $0
                      (i32.add
                       (local.get $9)
                       (i32.const 16)
                      )
                     )
                     (i32.add
                      (local.get $9)
                      (i32.const 20)
                     )
                     (i32.eq
                      (local.get $1)
                      (i32.load
                       (local.get $0)
                      )
                     )
                    )
                    (local.get $10)
                   )
                   (br_if $label$break$L325
                    (i32.eqz
                     (local.get $10)
                    )
                   )
                  )
                 )
                )
                (if
                 (i32.gt_u
                  (local.tee $3
                   (i32.load
                    (i32.const 3876)
                   )
                  )
                  (local.get $10)
                 )
                 (call $_abort)
                )
                (i32.store offset=24
                 (local.get $10)
                 (local.get $9)
                )
                (if
                 (local.tee $0
                  (i32.load
                   (local.tee $2
                    (i32.add
                     (local.get $1)
                     (i32.const 16)
                    )
                   )
                  )
                 )
                 (if
                  (i32.gt_u
                   (local.get $3)
                   (local.get $0)
                  )
                  (call $_abort)
                  (block
                   (i32.store offset=16
                    (local.get $10)
                    (local.get $0)
                   )
                   (i32.store offset=24
                    (local.get $0)
                    (local.get $10)
                   )
                  )
                 )
                )
                (br_if $label$break$L325
                 (i32.eqz
                  (local.tee $0
                   (i32.load offset=4
                    (local.get $2)
                   )
                  )
                 )
                )
                (if
                 (i32.gt_u
                  (i32.load
                   (i32.const 3876)
                  )
                  (local.get $0)
                 )
                 (call $_abort)
                 (block
                  (i32.store offset=20
                   (local.get $10)
                   (local.get $0)
                  )
                  (i32.store offset=24
                   (local.get $0)
                   (local.get $10)
                  )
                 )
                )
               )
              )
             )
             (local.set $1
              (i32.add
               (local.get $1)
               (local.get $12)
              )
             )
             (i32.add
              (local.get $4)
              (local.get $12)
             )
            )
            (local.get $4)
           )
          )
          (i32.store
           (local.tee $0
            (i32.add
             (local.get $1)
             (i32.const 4)
            )
           )
           (i32.and
            (i32.load
             (local.get $0)
            )
            (i32.const -2)
           )
          )
          (i32.store offset=4
           (local.get $7)
           (i32.or
            (local.get $2)
            (i32.const 1)
           )
          )
          (i32.store
           (i32.add
            (local.get $2)
            (local.get $7)
           )
           (local.get $2)
          )
          (local.set $3
           (i32.shr_u
            (local.get $2)
            (i32.const 3)
           )
          )
          (if
           (i32.lt_u
            (local.get $2)
            (i32.const 256)
           )
           (block
            (local.set $0
             (i32.add
              (i32.shl
               (local.get $3)
               (i32.const 3)
              )
              (i32.const 3900)
             )
            )
            (if
             (i32.and
              (local.tee $1
               (i32.load
                (i32.const 3860)
               )
              )
              (local.tee $3
               (i32.shl
                (i32.const 1)
                (local.get $3)
               )
              )
             )
             (block $do-once58
              (if
               (i32.le_u
                (i32.load
                 (i32.const 3876)
                )
                (local.tee $1
                 (i32.load
                  (local.tee $3
                   (i32.add
                    (local.get $0)
                    (i32.const 8)
                   )
                  )
                 )
                )
               )
               (block
                (local.set $15
                 (local.get $1)
                )
                (local.set $21
                 (local.get $3)
                )
                (br $do-once58)
               )
              )
              (call $_abort)
             )
             (block
              (i32.store
               (i32.const 3860)
               (i32.or
                (local.get $1)
                (local.get $3)
               )
              )
              (local.set $15
               (local.get $0)
              )
              (local.set $21
               (i32.add
                (local.get $0)
                (i32.const 8)
               )
              )
             )
            )
            (i32.store
             (local.get $21)
             (local.get $7)
            )
            (i32.store offset=12
             (local.get $15)
             (local.get $7)
            )
            (i32.store offset=8
             (local.get $7)
             (local.get $15)
            )
            (i32.store offset=12
             (local.get $7)
             (local.get $0)
            )
            (br $label$break$L317)
           )
          )
          (local.set $0
           (i32.add
            (i32.shl
             (local.tee $3
              (if (result i32)
               (local.tee $0
                (i32.shr_u
                 (local.get $2)
                 (i32.const 8)
                )
               )
               (if (result i32)
                (i32.gt_u
                 (local.get $2)
                 (i32.const 16777215)
                )
                (i32.const 31)
                (i32.or
                 (i32.shl
                  (local.tee $0
                   (i32.add
                    (i32.sub
                     (i32.const 14)
                     (i32.or
                      (i32.or
                       (local.tee $0
                        (i32.and
                         (i32.shr_u
                          (i32.add
                           (local.tee $1
                            (i32.shl
                             (local.get $0)
                             (local.tee $3
                              (i32.and
                               (i32.shr_u
                                (i32.add
                                 (local.get $0)
                                 (i32.const 1048320)
                                )
                                (i32.const 16)
                               )
                               (i32.const 8)
                              )
                             )
                            )
                           )
                           (i32.const 520192)
                          )
                          (i32.const 16)
                         )
                         (i32.const 4)
                        )
                       )
                       (local.get $3)
                      )
                      (local.tee $3
                       (i32.and
                        (i32.shr_u
                         (i32.add
                          (local.tee $0
                           (i32.shl
                            (local.get $1)
                            (local.get $0)
                           )
                          )
                          (i32.const 245760)
                         )
                         (i32.const 16)
                        )
                        (i32.const 2)
                       )
                      )
                     )
                    )
                    (i32.shr_u
                     (i32.shl
                      (local.get $0)
                      (local.get $3)
                     )
                     (i32.const 15)
                    )
                   )
                  )
                  (i32.const 1)
                 )
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.add
                    (local.get $0)
                    (i32.const 7)
                   )
                  )
                  (i32.const 1)
                 )
                )
               )
               (i32.const 0)
              )
             )
             (i32.const 2)
            )
            (i32.const 4164)
           )
          )
          (i32.store offset=28
           (local.get $7)
           (local.get $3)
          )
          (i32.store offset=4
           (local.tee $1
            (i32.add
             (local.get $7)
             (i32.const 16)
            )
           )
           (i32.const 0)
          )
          (i32.store
           (local.get $1)
           (i32.const 0)
          )
          (if
           (i32.eqz
            (i32.and
             (local.tee $1
              (i32.load
               (i32.const 3864)
              )
             )
             (local.tee $4
              (i32.shl
               (i32.const 1)
               (local.get $3)
              )
             )
            )
           )
           (block
            (i32.store
             (i32.const 3864)
             (i32.or
              (local.get $1)
              (local.get $4)
             )
            )
            (i32.store
             (local.get $0)
             (local.get $7)
            )
            (i32.store offset=24
             (local.get $7)
             (local.get $0)
            )
            (i32.store offset=12
             (local.get $7)
             (local.get $7)
            )
            (i32.store offset=8
             (local.get $7)
             (local.get $7)
            )
            (br $label$break$L317)
           )
          )
          (if
           (i32.eq
            (local.get $2)
            (i32.and
             (i32.load offset=4
              (local.tee $0
               (i32.load
                (local.get $0)
               )
              )
             )
             (i32.const -8)
            )
           )
           (local.set $11
            (local.get $0)
           )
           (block $label$break$L410
            (local.set $1
             (i32.shl
              (local.get $2)
              (select
               (i32.const 0)
               (i32.sub
                (i32.const 25)
                (i32.shr_u
                 (local.get $3)
                 (i32.const 1)
                )
               )
               (i32.eq
                (local.get $3)
                (i32.const 31)
               )
              )
             )
            )
            (loop $while-in64
             (if
              (local.tee $3
               (i32.load
                (local.tee $4
                 (i32.add
                  (i32.add
                   (local.get $0)
                   (i32.const 16)
                  )
                  (i32.shl
                   (i32.shr_u
                    (local.get $1)
                    (i32.const 31)
                   )
                   (i32.const 2)
                  )
                 )
                )
               )
              )
              (block
               (local.set $1
                (i32.shl
                 (local.get $1)
                 (i32.const 1)
                )
               )
               (if
                (i32.eq
                 (local.get $2)
                 (i32.and
                  (i32.load offset=4
                   (local.get $3)
                  )
                  (i32.const -8)
                 )
                )
                (block
                 (local.set $11
                  (local.get $3)
                 )
                 (br $label$break$L410)
                )
                (block
                 (local.set $0
                  (local.get $3)
                 )
                 (br $while-in64)
                )
               )
              )
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3876)
              )
              (local.get $4)
             )
             (call $_abort)
             (block
              (i32.store
               (local.get $4)
               (local.get $7)
              )
              (i32.store offset=24
               (local.get $7)
               (local.get $0)
              )
              (i32.store offset=12
               (local.get $7)
               (local.get $7)
              )
              (i32.store offset=8
               (local.get $7)
               (local.get $7)
              )
              (br $label$break$L317)
             )
            )
           )
          )
          (if
           (i32.and
            (i32.le_u
             (local.tee $0
              (i32.load
               (i32.const 3876)
              )
             )
             (local.get $11)
            )
            (i32.le_u
             (local.get $0)
             (local.tee $0
              (i32.load
               (local.tee $3
                (i32.add
                 (local.get $11)
                 (i32.const 8)
                )
               )
              )
             )
            )
           )
           (block
            (i32.store offset=12
             (local.get $0)
             (local.get $7)
            )
            (i32.store
             (local.get $3)
             (local.get $7)
            )
            (i32.store offset=8
             (local.get $7)
             (local.get $0)
            )
            (i32.store offset=12
             (local.get $7)
             (local.get $11)
            )
            (i32.store offset=24
             (local.get $7)
             (i32.const 0)
            )
           )
           (call $_abort)
          )
         )
        )
        (global.set $STACKTOP
         (local.get $14)
        )
        (return
         (i32.add
          (local.get $8)
          (i32.const 8)
         )
        )
       )
      )
     )
     (local.set $2
      (i32.const 4308)
     )
     (loop $while-in66
      (block $while-out65
       (if
        (i32.le_u
         (local.tee $4
          (i32.load
           (local.get $2)
          )
         )
         (local.get $6)
        )
        (br_if $while-out65
         (i32.gt_u
          (local.tee $5
           (i32.add
            (local.get $4)
            (i32.load offset=4
             (local.get $2)
            )
           )
          )
          (local.get $6)
         )
        )
       )
       (local.set $2
        (i32.load offset=8
         (local.get $2)
        )
       )
       (br $while-in66)
      )
     )
     (local.set $4
      (i32.add
       (local.tee $2
        (select
         (local.get $6)
         (local.tee $2
          (i32.add
           (select
            (i32.and
             (i32.sub
              (i32.const 0)
              (local.tee $2
               (i32.add
                (local.tee $4
                 (i32.add
                  (local.get $5)
                  (i32.const -47)
                 )
                )
                (i32.const 8)
               )
              )
             )
             (i32.const 7)
            )
            (i32.const 0)
            (i32.and
             (local.get $2)
             (i32.const 7)
            )
           )
           (local.get $4)
          )
         )
         (i32.lt_u
          (local.get $2)
          (local.tee $10
           (i32.add
            (local.get $6)
            (i32.const 16)
           )
          )
         )
        )
       )
       (i32.const 8)
      )
     )
     (i32.store
      (i32.const 3884)
      (local.tee $9
       (i32.add
        (local.get $0)
        (local.tee $7
         (select
          (i32.and
           (i32.sub
            (i32.const 0)
            (local.tee $7
             (i32.add
              (local.get $0)
              (i32.const 8)
             )
            )
           )
           (i32.const 7)
          )
          (i32.const 0)
          (i32.and
           (local.get $7)
           (i32.const 7)
          )
         )
        )
       )
      )
     )
     (i32.store
      (i32.const 3872)
      (local.tee $7
       (i32.sub
        (local.tee $11
         (i32.add
          (local.get $1)
          (i32.const -40)
         )
        )
        (local.get $7)
       )
      )
     )
     (i32.store offset=4
      (local.get $9)
      (i32.or
       (local.get $7)
       (i32.const 1)
      )
     )
     (i32.store offset=4
      (i32.add
       (local.get $0)
       (local.get $11)
      )
      (i32.const 40)
     )
     (i32.store
      (i32.const 3888)
      (i32.load
       (i32.const 4348)
      )
     )
     (i32.store
      (local.tee $7
       (i32.add
        (local.get $2)
        (i32.const 4)
       )
      )
      (i32.const 27)
     )
     (i64.store align=4
      (local.get $4)
      (i64.load align=4
       (i32.const 4308)
      )
     )
     (i64.store offset=8 align=4
      (local.get $4)
      (i64.load align=4
       (i32.const 4316)
      )
     )
     (i32.store
      (i32.const 4308)
      (local.get $0)
     )
     (i32.store
      (i32.const 4312)
      (local.get $1)
     )
     (i32.store
      (i32.const 4320)
      (i32.const 0)
     )
     (i32.store
      (i32.const 4316)
      (local.get $4)
     )
     (local.set $0
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (loop $while-in68
      (i32.store
       (local.tee $1
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (i32.const 7)
      )
      (if
       (i32.lt_u
        (i32.add
         (local.get $0)
         (i32.const 8)
        )
        (local.get $5)
       )
       (block
        (local.set $0
         (local.get $1)
        )
        (br $while-in68)
       )
      )
     )
     (if
      (i32.ne
       (local.get $2)
       (local.get $6)
      )
      (block
       (i32.store
        (local.get $7)
        (i32.and
         (i32.load
          (local.get $7)
         )
         (i32.const -2)
        )
       )
       (i32.store offset=4
        (local.get $6)
        (i32.or
         (local.tee $4
          (i32.sub
           (local.get $2)
           (local.get $6)
          )
         )
         (i32.const 1)
        )
       )
       (i32.store
        (local.get $2)
        (local.get $4)
       )
       (local.set $1
        (i32.shr_u
         (local.get $4)
         (i32.const 3)
        )
       )
       (if
        (i32.lt_u
         (local.get $4)
         (i32.const 256)
        )
        (block
         (local.set $0
          (i32.add
           (i32.shl
            (local.get $1)
            (i32.const 3)
           )
           (i32.const 3900)
          )
         )
         (if
          (i32.and
           (local.tee $2
            (i32.load
             (i32.const 3860)
            )
           )
           (local.tee $1
            (i32.shl
             (i32.const 1)
             (local.get $1)
            )
           )
          )
          (if
           (i32.gt_u
            (i32.load
             (i32.const 3876)
            )
            (local.tee $2
             (i32.load
              (local.tee $1
               (i32.add
                (local.get $0)
                (i32.const 8)
               )
              )
             )
            )
           )
           (call $_abort)
           (block
            (local.set $17
             (local.get $2)
            )
            (local.set $22
             (local.get $1)
            )
           )
          )
          (block
           (i32.store
            (i32.const 3860)
            (i32.or
             (local.get $1)
             (local.get $2)
            )
           )
           (local.set $17
            (local.get $0)
           )
           (local.set $22
            (i32.add
             (local.get $0)
             (i32.const 8)
            )
           )
          )
         )
         (i32.store
          (local.get $22)
          (local.get $6)
         )
         (i32.store offset=12
          (local.get $17)
          (local.get $6)
         )
         (i32.store offset=8
          (local.get $6)
          (local.get $17)
         )
         (i32.store offset=12
          (local.get $6)
          (local.get $0)
         )
         (br $label$break$L294)
        )
       )
       (local.set $0
        (i32.add
         (i32.shl
          (local.tee $1
           (if (result i32)
            (local.tee $0
             (i32.shr_u
              (local.get $4)
              (i32.const 8)
             )
            )
            (if (result i32)
             (i32.gt_u
              (local.get $4)
              (i32.const 16777215)
             )
             (i32.const 31)
             (block (result i32)
              (local.set $0
               (i32.and
                (i32.shr_u
                 (i32.add
                  (local.tee $2
                   (i32.shl
                    (local.get $0)
                    (local.tee $1
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (local.get $0)
                        (i32.const 1048320)
                       )
                       (i32.const 16)
                      )
                      (i32.const 8)
                     )
                    )
                   )
                  )
                  (i32.const 520192)
                 )
                 (i32.const 16)
                )
                (i32.const 4)
               )
              )
              (i32.or
               (i32.shl
                (local.tee $0
                 (i32.add
                  (i32.sub
                   (i32.const 14)
                   (i32.or
                    (local.tee $5
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (local.tee $2
                         (i32.shl
                          (local.get $2)
                          (local.get $0)
                         )
                        )
                        (i32.const 245760)
                       )
                       (i32.const 16)
                      )
                      (i32.const 2)
                     )
                    )
                    (i32.or
                     (local.get $0)
                     (local.get $1)
                    )
                   )
                  )
                  (i32.shr_u
                   (i32.shl
                    (local.get $2)
                    (local.get $5)
                   )
                   (i32.const 15)
                  )
                 )
                )
                (i32.const 1)
               )
               (i32.and
                (i32.shr_u
                 (local.get $4)
                 (i32.add
                  (local.get $0)
                  (i32.const 7)
                 )
                )
                (i32.const 1)
               )
              )
             )
            )
            (i32.const 0)
           )
          )
          (i32.const 2)
         )
         (i32.const 4164)
        )
       )
       (i32.store offset=28
        (local.get $6)
        (local.get $1)
       )
       (i32.store offset=20
        (local.get $6)
        (i32.const 0)
       )
       (i32.store
        (local.get $10)
        (i32.const 0)
       )
       (if
        (i32.eqz
         (i32.and
          (local.tee $2
           (i32.load
            (i32.const 3864)
           )
          )
          (local.tee $5
           (i32.shl
            (i32.const 1)
            (local.get $1)
           )
          )
         )
        )
        (block
         (i32.store
          (i32.const 3864)
          (i32.or
           (local.get $2)
           (local.get $5)
          )
         )
         (i32.store
          (local.get $0)
          (local.get $6)
         )
         (i32.store offset=24
          (local.get $6)
          (local.get $0)
         )
         (i32.store offset=12
          (local.get $6)
          (local.get $6)
         )
         (i32.store offset=8
          (local.get $6)
          (local.get $6)
         )
         (br $label$break$L294)
        )
       )
       (if
        (i32.eq
         (i32.and
          (i32.load offset=4
           (local.tee $0
            (i32.load
             (local.get $0)
            )
           )
          )
          (i32.const -8)
         )
         (local.get $4)
        )
        (local.set $8
         (local.get $0)
        )
        (block $label$break$L451
         (local.set $2
          (i32.shl
           (local.get $4)
           (select
            (i32.const 0)
            (i32.sub
             (i32.const 25)
             (i32.shr_u
              (local.get $1)
              (i32.const 1)
             )
            )
            (i32.eq
             (local.get $1)
             (i32.const 31)
            )
           )
          )
         )
         (loop $while-in71
          (if
           (local.tee $1
            (i32.load
             (local.tee $5
              (i32.add
               (i32.add
                (local.get $0)
                (i32.const 16)
               )
               (i32.shl
                (i32.shr_u
                 (local.get $2)
                 (i32.const 31)
                )
                (i32.const 2)
               )
              )
             )
            )
           )
           (block
            (local.set $2
             (i32.shl
              (local.get $2)
              (i32.const 1)
             )
            )
            (if
             (i32.eq
              (i32.and
               (i32.load offset=4
                (local.get $1)
               )
               (i32.const -8)
              )
              (local.get $4)
             )
             (block
              (local.set $8
               (local.get $1)
              )
              (br $label$break$L451)
             )
             (block
              (local.set $0
               (local.get $1)
              )
              (br $while-in71)
             )
            )
           )
          )
         )
         (if
          (i32.gt_u
           (i32.load
            (i32.const 3876)
           )
           (local.get $5)
          )
          (call $_abort)
          (block
           (i32.store
            (local.get $5)
            (local.get $6)
           )
           (i32.store offset=24
            (local.get $6)
            (local.get $0)
           )
           (i32.store offset=12
            (local.get $6)
            (local.get $6)
           )
           (i32.store offset=8
            (local.get $6)
            (local.get $6)
           )
           (br $label$break$L294)
          )
         )
        )
       )
       (if
        (i32.and
         (i32.le_u
          (local.tee $0
           (i32.load
            (i32.const 3876)
           )
          )
          (local.get $8)
         )
         (i32.le_u
          (local.get $0)
          (local.tee $0
           (i32.load
            (local.tee $1
             (i32.add
              (local.get $8)
              (i32.const 8)
             )
            )
           )
          )
         )
        )
        (block
         (i32.store offset=12
          (local.get $0)
          (local.get $6)
         )
         (i32.store
          (local.get $1)
          (local.get $6)
         )
         (i32.store offset=8
          (local.get $6)
          (local.get $0)
         )
         (i32.store offset=12
          (local.get $6)
          (local.get $8)
         )
         (i32.store offset=24
          (local.get $6)
          (i32.const 0)
         )
        )
        (call $_abort)
       )
      )
     )
    )
    (block
     (if
      (i32.or
       (i32.eqz
        (local.tee $2
         (i32.load
          (i32.const 3876)
         )
        )
       )
       (i32.lt_u
        (local.get $0)
        (local.get $2)
       )
      )
      (i32.store
       (i32.const 3876)
       (local.get $0)
      )
     )
     (i32.store
      (i32.const 4308)
      (local.get $0)
     )
     (i32.store
      (i32.const 4312)
      (local.get $1)
     )
     (i32.store
      (i32.const 4320)
      (i32.const 0)
     )
     (i32.store
      (i32.const 3896)
      (i32.load
       (i32.const 4332)
      )
     )
     (i32.store
      (i32.const 3892)
      (i32.const -1)
     )
     (i32.store
      (i32.const 3912)
      (i32.const 3900)
     )
     (i32.store
      (i32.const 3908)
      (i32.const 3900)
     )
     (i32.store
      (i32.const 3920)
      (i32.const 3908)
     )
     (i32.store
      (i32.const 3916)
      (i32.const 3908)
     )
     (i32.store
      (i32.const 3928)
      (i32.const 3916)
     )
     (i32.store
      (i32.const 3924)
      (i32.const 3916)
     )
     (i32.store
      (i32.const 3936)
      (i32.const 3924)
     )
     (i32.store
      (i32.const 3932)
      (i32.const 3924)
     )
     (i32.store
      (i32.const 3944)
      (i32.const 3932)
     )
     (i32.store
      (i32.const 3940)
      (i32.const 3932)
     )
     (i32.store
      (i32.const 3952)
      (i32.const 3940)
     )
     (i32.store
      (i32.const 3948)
      (i32.const 3940)
     )
     (i32.store
      (i32.const 3960)
      (i32.const 3948)
     )
     (i32.store
      (i32.const 3956)
      (i32.const 3948)
     )
     (i32.store
      (i32.const 3968)
      (i32.const 3956)
     )
     (i32.store
      (i32.const 3964)
      (i32.const 3956)
     )
     (i32.store
      (i32.const 3976)
      (i32.const 3964)
     )
     (i32.store
      (i32.const 3972)
      (i32.const 3964)
     )
     (i32.store
      (i32.const 3984)
      (i32.const 3972)
     )
     (i32.store
      (i32.const 3980)
      (i32.const 3972)
     )
     (i32.store
      (i32.const 3992)
      (i32.const 3980)
     )
     (i32.store
      (i32.const 3988)
      (i32.const 3980)
     )
     (i32.store
      (i32.const 4000)
      (i32.const 3988)
     )
     (i32.store
      (i32.const 3996)
      (i32.const 3988)
     )
     (i32.store
      (i32.const 4008)
      (i32.const 3996)
     )
     (i32.store
      (i32.const 4004)
      (i32.const 3996)
     )
     (i32.store
      (i32.const 4016)
      (i32.const 4004)
     )
     (i32.store
      (i32.const 4012)
      (i32.const 4004)
     )
     (i32.store
      (i32.const 4024)
      (i32.const 4012)
     )
     (i32.store
      (i32.const 4020)
      (i32.const 4012)
     )
     (i32.store
      (i32.const 4032)
      (i32.const 4020)
     )
     (i32.store
      (i32.const 4028)
      (i32.const 4020)
     )
     (i32.store
      (i32.const 4040)
      (i32.const 4028)
     )
     (i32.store
      (i32.const 4036)
      (i32.const 4028)
     )
     (i32.store
      (i32.const 4048)
      (i32.const 4036)
     )
     (i32.store
      (i32.const 4044)
      (i32.const 4036)
     )
     (i32.store
      (i32.const 4056)
      (i32.const 4044)
     )
     (i32.store
      (i32.const 4052)
      (i32.const 4044)
     )
     (i32.store
      (i32.const 4064)
      (i32.const 4052)
     )
     (i32.store
      (i32.const 4060)
      (i32.const 4052)
     )
     (i32.store
      (i32.const 4072)
      (i32.const 4060)
     )
     (i32.store
      (i32.const 4068)
      (i32.const 4060)
     )
     (i32.store
      (i32.const 4080)
      (i32.const 4068)
     )
     (i32.store
      (i32.const 4076)
      (i32.const 4068)
     )
     (i32.store
      (i32.const 4088)
      (i32.const 4076)
     )
     (i32.store
      (i32.const 4084)
      (i32.const 4076)
     )
     (i32.store
      (i32.const 4096)
      (i32.const 4084)
     )
     (i32.store
      (i32.const 4092)
      (i32.const 4084)
     )
     (i32.store
      (i32.const 4104)
      (i32.const 4092)
     )
     (i32.store
      (i32.const 4100)
      (i32.const 4092)
     )
     (i32.store
      (i32.const 4112)
      (i32.const 4100)
     )
     (i32.store
      (i32.const 4108)
      (i32.const 4100)
     )
     (i32.store
      (i32.const 4120)
      (i32.const 4108)
     )
     (i32.store
      (i32.const 4116)
      (i32.const 4108)
     )
     (i32.store
      (i32.const 4128)
      (i32.const 4116)
     )
     (i32.store
      (i32.const 4124)
      (i32.const 4116)
     )
     (i32.store
      (i32.const 4136)
      (i32.const 4124)
     )
     (i32.store
      (i32.const 4132)
      (i32.const 4124)
     )
     (i32.store
      (i32.const 4144)
      (i32.const 4132)
     )
     (i32.store
      (i32.const 4140)
      (i32.const 4132)
     )
     (i32.store
      (i32.const 4152)
      (i32.const 4140)
     )
     (i32.store
      (i32.const 4148)
      (i32.const 4140)
     )
     (i32.store
      (i32.const 4160)
      (i32.const 4148)
     )
     (i32.store
      (i32.const 4156)
      (i32.const 4148)
     )
     (i32.store
      (i32.const 3884)
      (local.tee $4
       (i32.add
        (local.get $0)
        (local.tee $2
         (select
          (i32.and
           (i32.sub
            (i32.const 0)
            (local.tee $2
             (i32.add
              (local.get $0)
              (i32.const 8)
             )
            )
           )
           (i32.const 7)
          )
          (i32.const 0)
          (i32.and
           (local.get $2)
           (i32.const 7)
          )
         )
        )
       )
      )
     )
     (i32.store
      (i32.const 3872)
      (local.tee $2
       (i32.sub
        (local.tee $1
         (i32.add
          (local.get $1)
          (i32.const -40)
         )
        )
        (local.get $2)
       )
      )
     )
     (i32.store offset=4
      (local.get $4)
      (i32.or
       (local.get $2)
       (i32.const 1)
      )
     )
     (i32.store offset=4
      (i32.add
       (local.get $0)
       (local.get $1)
      )
      (i32.const 40)
     )
     (i32.store
      (i32.const 3888)
      (i32.load
       (i32.const 4348)
      )
     )
    )
   )
   (if
    (i32.gt_u
     (local.tee $0
      (i32.load
       (i32.const 3872)
      )
     )
     (local.get $3)
    )
    (block
     (i32.store
      (i32.const 3872)
      (local.tee $1
       (i32.sub
        (local.get $0)
        (local.get $3)
       )
      )
     )
     (i32.store
      (i32.const 3884)
      (local.tee $2
       (i32.add
        (local.get $3)
        (local.tee $0
         (i32.load
          (i32.const 3884)
         )
        )
       )
      )
     )
     (i32.store offset=4
      (local.get $2)
      (i32.or
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.store offset=4
      (local.get $0)
      (i32.or
       (local.get $3)
       (i32.const 3)
      )
     )
     (global.set $STACKTOP
      (local.get $14)
     )
     (return
      (i32.add
       (local.get $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (i32.store
   (i32.const 3844)
   (i32.const 12)
  )
  (global.set $STACKTOP
   (local.get $14)
  )
  (i32.const 0)
 )
 (func $_free (; 86 ;) (; has Stack IR ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (if
   (i32.eqz
    (local.get $0)
   )
   (return)
  )
  (if
   (i32.lt_u
    (local.tee $4
     (i32.add
      (local.get $0)
      (i32.const -8)
     )
    )
    (local.tee $12
     (i32.load
      (i32.const 3876)
     )
    )
   )
   (call $_abort)
  )
  (if
   (i32.eq
    (local.tee $11
     (i32.and
      (local.tee $0
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const -4)
        )
       )
      )
      (i32.const 3)
     )
    )
    (i32.const 1)
   )
   (call $_abort)
  )
  (local.set $7
   (i32.add
    (local.get $4)
    (local.tee $2
     (i32.and
      (local.get $0)
      (i32.const -8)
     )
    )
   )
  )
  (if
   (i32.and
    (local.get $0)
    (i32.const 1)
   )
   (block
    (local.set $1
     (local.get $2)
    )
    (local.set $5
     (local.tee $3
      (local.get $4)
     )
    )
   )
   (block $label$break$L10
    (local.set $9
     (i32.load
      (local.get $4)
     )
    )
    (if
     (i32.eqz
      (local.get $11)
     )
     (return)
    )
    (if
     (i32.lt_u
      (local.tee $0
       (i32.sub
        (local.get $4)
        (local.get $9)
       )
      )
      (local.get $12)
     )
     (call $_abort)
    )
    (local.set $4
     (i32.add
      (local.get $2)
      (local.get $9)
     )
    )
    (if
     (i32.eq
      (local.get $0)
      (i32.load
       (i32.const 3880)
      )
     )
     (block
      (if
       (i32.ne
        (i32.and
         (local.tee $3
          (i32.load
           (local.tee $1
            (i32.add
             (local.get $7)
             (i32.const 4)
            )
           )
          )
         )
         (i32.const 3)
        )
        (i32.const 3)
       )
       (block
        (local.set $3
         (local.get $0)
        )
        (local.set $1
         (local.get $4)
        )
        (local.set $5
         (local.get $0)
        )
        (br $label$break$L10)
       )
      )
      (i32.store
       (i32.const 3868)
       (local.get $4)
      )
      (i32.store
       (local.get $1)
       (i32.and
        (local.get $3)
        (i32.const -2)
       )
      )
      (i32.store
       (i32.add
        (local.get $0)
        (i32.const 4)
       )
       (i32.or
        (local.get $4)
        (i32.const 1)
       )
      )
      (i32.store
       (i32.add
        (local.get $0)
        (local.get $4)
       )
       (local.get $4)
      )
      (return)
     )
    )
    (local.set $2
     (i32.shr_u
      (local.get $9)
      (i32.const 3)
     )
    )
    (if
     (i32.lt_u
      (local.get $9)
      (i32.const 256)
     )
     (block
      (local.set $3
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 12)
        )
       )
      )
      (if
       (i32.ne
        (local.tee $5
         (i32.load
          (i32.add
           (local.get $0)
           (i32.const 8)
          )
         )
        )
        (local.tee $1
         (i32.add
          (i32.shl
           (local.get $2)
           (i32.const 3)
          )
          (i32.const 3900)
         )
        )
       )
       (block
        (if
         (i32.gt_u
          (local.get $12)
          (local.get $5)
         )
         (call $_abort)
        )
        (if
         (i32.ne
          (i32.load
           (i32.add
            (local.get $5)
            (i32.const 12)
           )
          )
          (local.get $0)
         )
         (call $_abort)
        )
       )
      )
      (if
       (i32.eq
        (local.get $3)
        (local.get $5)
       )
       (block
        (i32.store
         (i32.const 3860)
         (i32.and
          (i32.load
           (i32.const 3860)
          )
          (i32.xor
           (i32.shl
            (i32.const 1)
            (local.get $2)
           )
           (i32.const -1)
          )
         )
        )
        (local.set $3
         (local.get $0)
        )
        (local.set $1
         (local.get $4)
        )
        (local.set $5
         (local.get $0)
        )
        (br $label$break$L10)
       )
      )
      (if
       (i32.eq
        (local.get $1)
        (local.get $3)
       )
       (local.set $6
        (i32.add
         (local.get $3)
         (i32.const 8)
        )
       )
       (block
        (if
         (i32.gt_u
          (local.get $12)
          (local.get $3)
         )
         (call $_abort)
        )
        (if
         (i32.eq
          (local.get $0)
          (i32.load
           (local.tee $1
            (i32.add
             (local.get $3)
             (i32.const 8)
            )
           )
          )
         )
         (local.set $6
          (local.get $1)
         )
         (call $_abort)
        )
       )
      )
      (i32.store
       (i32.add
        (local.get $5)
        (i32.const 12)
       )
       (local.get $3)
      )
      (i32.store
       (local.get $6)
       (local.get $5)
      )
      (local.set $3
       (local.get $0)
      )
      (local.set $1
       (local.get $4)
      )
      (local.set $5
       (local.get $0)
      )
      (br $label$break$L10)
     )
    )
    (local.set $13
     (i32.load
      (i32.add
       (local.get $0)
       (i32.const 24)
      )
     )
    )
    (if
     (i32.eq
      (local.get $0)
      (local.tee $2
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 12)
        )
       )
      )
     )
     (block $do-once
      (if
       (local.tee $2
        (i32.load
         (local.tee $9
          (i32.add
           (local.tee $6
            (i32.add
             (local.get $0)
             (i32.const 16)
            )
           )
           (i32.const 4)
          )
         )
        )
       )
       (local.set $6
        (local.get $9)
       )
       (br_if $do-once
        (i32.eqz
         (local.tee $2
          (i32.load
           (local.get $6)
          )
         )
        )
       )
      )
      (loop $while-in
       (block $while-out
        (local.set $2
         (if (result i32)
          (local.tee $11
           (i32.load
            (local.tee $9
             (i32.add
              (local.get $2)
              (i32.const 20)
             )
            )
           )
          )
          (block (result i32)
           (local.set $6
            (local.get $9)
           )
           (local.get $11)
          )
          (block (result i32)
           (br_if $while-out
            (i32.eqz
             (local.tee $11
              (i32.load
               (local.tee $9
                (i32.add
                 (local.get $2)
                 (i32.const 16)
                )
               )
              )
             )
            )
           )
           (local.set $6
            (local.get $9)
           )
           (local.get $11)
          )
         )
        )
        (br $while-in)
       )
      )
      (if
       (i32.gt_u
        (local.get $12)
        (local.get $6)
       )
       (call $_abort)
       (block
        (i32.store
         (local.get $6)
         (i32.const 0)
        )
        (local.set $8
         (local.get $2)
        )
       )
      )
     )
     (block
      (if
       (i32.gt_u
        (local.get $12)
        (local.tee $6
         (i32.load
          (i32.add
           (local.get $0)
           (i32.const 8)
          )
         )
        )
       )
       (call $_abort)
      )
      (if
       (i32.ne
        (i32.load
         (local.tee $9
          (i32.add
           (local.get $6)
           (i32.const 12)
          )
         )
        )
        (local.get $0)
       )
       (call $_abort)
      )
      (if
       (i32.eq
        (local.get $0)
        (i32.load
         (local.tee $11
          (i32.add
           (local.get $2)
           (i32.const 8)
          )
         )
        )
       )
       (block
        (i32.store
         (local.get $9)
         (local.get $2)
        )
        (i32.store
         (local.get $11)
         (local.get $6)
        )
        (local.set $8
         (local.get $2)
        )
       )
       (call $_abort)
      )
     )
    )
    (if
     (local.get $13)
     (block
      (if
       (i32.eq
        (local.get $0)
        (i32.load
         (local.tee $6
          (i32.add
           (i32.shl
            (local.tee $2
             (i32.load
              (i32.add
               (local.get $0)
               (i32.const 28)
              )
             )
            )
            (i32.const 2)
           )
           (i32.const 4164)
          )
         )
        )
       )
       (block
        (i32.store
         (local.get $6)
         (local.get $8)
        )
        (if
         (i32.eqz
          (local.get $8)
         )
         (block
          (i32.store
           (i32.const 3864)
           (i32.and
            (i32.load
             (i32.const 3864)
            )
            (i32.xor
             (i32.shl
              (i32.const 1)
              (local.get $2)
             )
             (i32.const -1)
            )
           )
          )
          (local.set $3
           (local.get $0)
          )
          (local.set $1
           (local.get $4)
          )
          (local.set $5
           (local.get $0)
          )
          (br $label$break$L10)
         )
        )
       )
       (if
        (i32.gt_u
         (i32.load
          (i32.const 3876)
         )
         (local.get $13)
        )
        (call $_abort)
        (block
         (i32.store
          (select
           (local.tee $2
            (i32.add
             (local.get $13)
             (i32.const 16)
            )
           )
           (i32.add
            (local.get $13)
            (i32.const 20)
           )
           (i32.eq
            (local.get $0)
            (i32.load
             (local.get $2)
            )
           )
          )
          (local.get $8)
         )
         (if
          (i32.eqz
           (local.get $8)
          )
          (block
           (local.set $3
            (local.get $0)
           )
           (local.set $1
            (local.get $4)
           )
           (local.set $5
            (local.get $0)
           )
           (br $label$break$L10)
          )
         )
        )
       )
      )
      (if
       (i32.gt_u
        (local.tee $6
         (i32.load
          (i32.const 3876)
         )
        )
        (local.get $8)
       )
       (call $_abort)
      )
      (i32.store
       (i32.add
        (local.get $8)
        (i32.const 24)
       )
       (local.get $13)
      )
      (if
       (local.tee $2
        (i32.load
         (local.tee $9
          (i32.add
           (local.get $0)
           (i32.const 16)
          )
         )
        )
       )
       (if
        (i32.gt_u
         (local.get $6)
         (local.get $2)
        )
        (call $_abort)
        (block
         (i32.store
          (i32.add
           (local.get $8)
           (i32.const 16)
          )
          (local.get $2)
         )
         (i32.store
          (i32.add
           (local.get $2)
           (i32.const 24)
          )
          (local.get $8)
         )
        )
       )
      )
      (if
       (local.tee $2
        (i32.load
         (i32.add
          (local.get $9)
          (i32.const 4)
         )
        )
       )
       (if
        (i32.gt_u
         (i32.load
          (i32.const 3876)
         )
         (local.get $2)
        )
        (call $_abort)
        (block
         (i32.store
          (i32.add
           (local.get $8)
           (i32.const 20)
          )
          (local.get $2)
         )
         (i32.store
          (i32.add
           (local.get $2)
           (i32.const 24)
          )
          (local.get $8)
         )
         (local.set $3
          (local.get $0)
         )
         (local.set $1
          (local.get $4)
         )
         (local.set $5
          (local.get $0)
         )
        )
       )
       (block
        (local.set $3
         (local.get $0)
        )
        (local.set $1
         (local.get $4)
        )
        (local.set $5
         (local.get $0)
        )
       )
      )
     )
     (block
      (local.set $3
       (local.get $0)
      )
      (local.set $1
       (local.get $4)
      )
      (local.set $5
       (local.get $0)
      )
     )
    )
   )
  )
  (if
   (i32.ge_u
    (local.get $5)
    (local.get $7)
   )
   (call $_abort)
  )
  (if
   (i32.eqz
    (i32.and
     (local.tee $0
      (i32.load
       (local.tee $4
        (i32.add
         (local.get $7)
         (i32.const 4)
        )
       )
      )
     )
     (i32.const 1)
    )
   )
   (call $_abort)
  )
  (local.set $1
   (i32.shr_u
    (local.tee $5
     (if (result i32)
      (i32.and
       (local.get $0)
       (i32.const 2)
      )
      (block (result i32)
       (i32.store
        (local.get $4)
        (i32.and
         (local.get $0)
         (i32.const -2)
        )
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 4)
        )
        (i32.or
         (local.get $1)
         (i32.const 1)
        )
       )
       (i32.store
        (i32.add
         (local.get $1)
         (local.get $5)
        )
        (local.get $1)
       )
       (local.get $1)
      )
      (block (result i32)
       (if
        (i32.eq
         (local.get $7)
         (i32.load
          (i32.const 3884)
         )
        )
        (block
         (i32.store
          (i32.const 3872)
          (local.tee $0
           (i32.add
            (local.get $1)
            (i32.load
             (i32.const 3872)
            )
           )
          )
         )
         (i32.store
          (i32.const 3884)
          (local.get $3)
         )
         (i32.store
          (i32.add
           (local.get $3)
           (i32.const 4)
          )
          (i32.or
           (local.get $0)
           (i32.const 1)
          )
         )
         (if
          (i32.ne
           (i32.load
            (i32.const 3880)
           )
           (local.get $3)
          )
          (return)
         )
         (i32.store
          (i32.const 3880)
          (i32.const 0)
         )
         (i32.store
          (i32.const 3868)
          (i32.const 0)
         )
         (return)
        )
       )
       (if
        (i32.eq
         (local.get $7)
         (i32.load
          (i32.const 3880)
         )
        )
        (block
         (i32.store
          (i32.const 3868)
          (local.tee $0
           (i32.add
            (local.get $1)
            (i32.load
             (i32.const 3868)
            )
           )
          )
         )
         (i32.store
          (i32.const 3880)
          (local.get $5)
         )
         (i32.store
          (i32.add
           (local.get $3)
           (i32.const 4)
          )
          (i32.or
           (local.get $0)
           (i32.const 1)
          )
         )
         (i32.store
          (i32.add
           (local.get $0)
           (local.get $5)
          )
          (local.get $0)
         )
         (return)
        )
       )
       (local.set $4
        (i32.add
         (local.get $1)
         (i32.and
          (local.get $0)
          (i32.const -8)
         )
        )
       )
       (local.set $6
        (i32.shr_u
         (local.get $0)
         (i32.const 3)
        )
       )
       (block $label$break$L111
        (if
         (i32.lt_u
          (local.get $0)
          (i32.const 256)
         )
         (block
          (local.set $1
           (i32.load
            (i32.add
             (local.get $7)
             (i32.const 12)
            )
           )
          )
          (if
           (i32.ne
            (local.tee $2
             (i32.load
              (i32.add
               (local.get $7)
               (i32.const 8)
              )
             )
            )
            (local.tee $0
             (i32.add
              (i32.shl
               (local.get $6)
               (i32.const 3)
              )
              (i32.const 3900)
             )
            )
           )
           (block
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3876)
              )
              (local.get $2)
             )
             (call $_abort)
            )
            (if
             (i32.ne
              (i32.load
               (i32.add
                (local.get $2)
                (i32.const 12)
               )
              )
              (local.get $7)
             )
             (call $_abort)
            )
           )
          )
          (if
           (i32.eq
            (local.get $1)
            (local.get $2)
           )
           (block
            (i32.store
             (i32.const 3860)
             (i32.and
              (i32.load
               (i32.const 3860)
              )
              (i32.xor
               (i32.shl
                (i32.const 1)
                (local.get $6)
               )
               (i32.const -1)
              )
             )
            )
            (br $label$break$L111)
           )
          )
          (if
           (i32.eq
            (local.get $0)
            (local.get $1)
           )
           (local.set $16
            (i32.add
             (local.get $1)
             (i32.const 8)
            )
           )
           (block
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3876)
              )
              (local.get $1)
             )
             (call $_abort)
            )
            (if
             (i32.eq
              (local.get $7)
              (i32.load
               (local.tee $0
                (i32.add
                 (local.get $1)
                 (i32.const 8)
                )
               )
              )
             )
             (local.set $16
              (local.get $0)
             )
             (call $_abort)
            )
           )
          )
          (i32.store
           (i32.add
            (local.get $2)
            (i32.const 12)
           )
           (local.get $1)
          )
          (i32.store
           (local.get $16)
           (local.get $2)
          )
         )
         (block
          (local.set $8
           (i32.load
            (i32.add
             (local.get $7)
             (i32.const 24)
            )
           )
          )
          (if
           (i32.eq
            (local.get $7)
            (local.tee $0
             (i32.load
              (i32.add
               (local.get $7)
               (i32.const 12)
              )
             )
            )
           )
           (block $do-once6
            (if
             (local.tee $0
              (i32.load
               (local.tee $2
                (i32.add
                 (local.tee $1
                  (i32.add
                   (local.get $7)
                   (i32.const 16)
                  )
                 )
                 (i32.const 4)
                )
               )
              )
             )
             (local.set $1
              (local.get $2)
             )
             (br_if $do-once6
              (i32.eqz
               (local.tee $0
                (i32.load
                 (local.get $1)
                )
               )
              )
             )
            )
            (loop $while-in9
             (block $while-out8
              (local.set $0
               (if (result i32)
                (local.tee $6
                 (i32.load
                  (local.tee $2
                   (i32.add
                    (local.get $0)
                    (i32.const 20)
                   )
                  )
                 )
                )
                (block (result i32)
                 (local.set $1
                  (local.get $2)
                 )
                 (local.get $6)
                )
                (block (result i32)
                 (br_if $while-out8
                  (i32.eqz
                   (local.tee $6
                    (i32.load
                     (local.tee $2
                      (i32.add
                       (local.get $0)
                       (i32.const 16)
                      )
                     )
                    )
                   )
                  )
                 )
                 (local.set $1
                  (local.get $2)
                 )
                 (local.get $6)
                )
               )
              )
              (br $while-in9)
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3876)
              )
              (local.get $1)
             )
             (call $_abort)
             (block
              (i32.store
               (local.get $1)
               (i32.const 0)
              )
              (local.set $10
               (local.get $0)
              )
             )
            )
           )
           (block
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3876)
              )
              (local.tee $1
               (i32.load
                (i32.add
                 (local.get $7)
                 (i32.const 8)
                )
               )
              )
             )
             (call $_abort)
            )
            (if
             (i32.ne
              (i32.load
               (local.tee $2
                (i32.add
                 (local.get $1)
                 (i32.const 12)
                )
               )
              )
              (local.get $7)
             )
             (call $_abort)
            )
            (if
             (i32.eq
              (local.get $7)
              (i32.load
               (local.tee $6
                (i32.add
                 (local.get $0)
                 (i32.const 8)
                )
               )
              )
             )
             (block
              (i32.store
               (local.get $2)
               (local.get $0)
              )
              (i32.store
               (local.get $6)
               (local.get $1)
              )
              (local.set $10
               (local.get $0)
              )
             )
             (call $_abort)
            )
           )
          )
          (if
           (local.get $8)
           (block
            (if
             (i32.eq
              (local.get $7)
              (i32.load
               (local.tee $1
                (i32.add
                 (i32.shl
                  (local.tee $0
                   (i32.load
                    (i32.add
                     (local.get $7)
                     (i32.const 28)
                    )
                   )
                  )
                  (i32.const 2)
                 )
                 (i32.const 4164)
                )
               )
              )
             )
             (block
              (i32.store
               (local.get $1)
               (local.get $10)
              )
              (if
               (i32.eqz
                (local.get $10)
               )
               (block
                (i32.store
                 (i32.const 3864)
                 (i32.and
                  (i32.load
                   (i32.const 3864)
                  )
                  (i32.xor
                   (i32.shl
                    (i32.const 1)
                    (local.get $0)
                   )
                   (i32.const -1)
                  )
                 )
                )
                (br $label$break$L111)
               )
              )
             )
             (if
              (i32.gt_u
               (i32.load
                (i32.const 3876)
               )
               (local.get $8)
              )
              (call $_abort)
              (block
               (i32.store
                (select
                 (local.tee $0
                  (i32.add
                   (local.get $8)
                   (i32.const 16)
                  )
                 )
                 (i32.add
                  (local.get $8)
                  (i32.const 20)
                 )
                 (i32.eq
                  (local.get $7)
                  (i32.load
                   (local.get $0)
                  )
                 )
                )
                (local.get $10)
               )
               (br_if $label$break$L111
                (i32.eqz
                 (local.get $10)
                )
               )
              )
             )
            )
            (if
             (i32.gt_u
              (local.tee $1
               (i32.load
                (i32.const 3876)
               )
              )
              (local.get $10)
             )
             (call $_abort)
            )
            (i32.store
             (i32.add
              (local.get $10)
              (i32.const 24)
             )
             (local.get $8)
            )
            (if
             (local.tee $0
              (i32.load
               (local.tee $2
                (i32.add
                 (local.get $7)
                 (i32.const 16)
                )
               )
              )
             )
             (if
              (i32.gt_u
               (local.get $1)
               (local.get $0)
              )
              (call $_abort)
              (block
               (i32.store
                (i32.add
                 (local.get $10)
                 (i32.const 16)
                )
                (local.get $0)
               )
               (i32.store
                (i32.add
                 (local.get $0)
                 (i32.const 24)
                )
                (local.get $10)
               )
              )
             )
            )
            (if
             (local.tee $0
              (i32.load
               (i32.add
                (local.get $2)
                (i32.const 4)
               )
              )
             )
             (if
              (i32.gt_u
               (i32.load
                (i32.const 3876)
               )
               (local.get $0)
              )
              (call $_abort)
              (block
               (i32.store
                (i32.add
                 (local.get $10)
                 (i32.const 20)
                )
                (local.get $0)
               )
               (i32.store
                (i32.add
                 (local.get $0)
                 (i32.const 24)
                )
                (local.get $10)
               )
              )
             )
            )
           )
          )
         )
        )
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 4)
        )
        (i32.or
         (local.get $4)
         (i32.const 1)
        )
       )
       (i32.store
        (i32.add
         (local.get $4)
         (local.get $5)
        )
        (local.get $4)
       )
       (if (result i32)
        (i32.eq
         (local.get $3)
         (i32.load
          (i32.const 3880)
         )
        )
        (block
         (i32.store
          (i32.const 3868)
          (local.get $4)
         )
         (return)
        )
        (local.get $4)
       )
      )
     )
    )
    (i32.const 3)
   )
  )
  (if
   (i32.lt_u
    (local.get $5)
    (i32.const 256)
   )
   (block
    (local.set $0
     (i32.add
      (i32.shl
       (local.get $1)
       (i32.const 3)
      )
      (i32.const 3900)
     )
    )
    (if
     (i32.and
      (local.tee $5
       (i32.load
        (i32.const 3860)
       )
      )
      (local.tee $1
       (i32.shl
        (i32.const 1)
        (local.get $1)
       )
      )
     )
     (if
      (i32.gt_u
       (i32.load
        (i32.const 3876)
       )
       (local.tee $5
        (i32.load
         (local.tee $1
          (i32.add
           (local.get $0)
           (i32.const 8)
          )
         )
        )
       )
      )
      (call $_abort)
      (block
       (local.set $15
        (local.get $5)
       )
       (local.set $17
        (local.get $1)
       )
      )
     )
     (block
      (i32.store
       (i32.const 3860)
       (i32.or
        (local.get $1)
        (local.get $5)
       )
      )
      (local.set $15
       (local.get $0)
      )
      (local.set $17
       (i32.add
        (local.get $0)
        (i32.const 8)
       )
      )
     )
    )
    (i32.store
     (local.get $17)
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $15)
      (i32.const 12)
     )
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 8)
     )
     (local.get $15)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 12)
     )
     (local.get $0)
    )
    (return)
   )
  )
  (local.set $0
   (i32.add
    (i32.shl
     (local.tee $1
      (if (result i32)
       (local.tee $0
        (i32.shr_u
         (local.get $5)
         (i32.const 8)
        )
       )
       (if (result i32)
        (i32.gt_u
         (local.get $5)
         (i32.const 16777215)
        )
        (i32.const 31)
        (block (result i32)
         (local.set $0
          (i32.and
           (i32.shr_u
            (i32.add
             (local.tee $4
              (i32.shl
               (local.get $0)
               (local.tee $1
                (i32.and
                 (i32.shr_u
                  (i32.add
                   (local.get $0)
                   (i32.const 1048320)
                  )
                  (i32.const 16)
                 )
                 (i32.const 8)
                )
               )
              )
             )
             (i32.const 520192)
            )
            (i32.const 16)
           )
           (i32.const 4)
          )
         )
         (i32.or
          (i32.shl
           (local.tee $0
            (i32.add
             (i32.sub
              (i32.const 14)
              (i32.or
               (i32.or
                (local.get $0)
                (local.get $1)
               )
               (local.tee $1
                (i32.and
                 (i32.shr_u
                  (i32.add
                   (local.tee $0
                    (i32.shl
                     (local.get $4)
                     (local.get $0)
                    )
                   )
                   (i32.const 245760)
                  )
                  (i32.const 16)
                 )
                 (i32.const 2)
                )
               )
              )
             )
             (i32.shr_u
              (i32.shl
               (local.get $0)
               (local.get $1)
              )
              (i32.const 15)
             )
            )
           )
           (i32.const 1)
          )
          (i32.and
           (i32.shr_u
            (local.get $5)
            (i32.add
             (local.get $0)
             (i32.const 7)
            )
           )
           (i32.const 1)
          )
         )
        )
       )
       (i32.const 0)
      )
     )
     (i32.const 2)
    )
    (i32.const 4164)
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 28)
   )
   (local.get $1)
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 20)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 16)
   )
   (i32.const 0)
  )
  (if
   (i32.and
    (local.tee $4
     (i32.load
      (i32.const 3864)
     )
    )
    (local.tee $2
     (i32.shl
      (i32.const 1)
      (local.get $1)
     )
    )
   )
   (block $label$break$L197
    (if
     (i32.eq
      (local.get $5)
      (i32.and
       (i32.load
        (i32.add
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (i32.const 4)
        )
       )
       (i32.const -8)
      )
     )
     (local.set $14
      (local.get $0)
     )
     (block $label$break$L200
      (local.set $4
       (i32.shl
        (local.get $5)
        (select
         (i32.const 0)
         (i32.sub
          (i32.const 25)
          (i32.shr_u
           (local.get $1)
           (i32.const 1)
          )
         )
         (i32.eq
          (local.get $1)
          (i32.const 31)
         )
        )
       )
      )
      (loop $while-in17
       (if
        (local.tee $1
         (i32.load
          (local.tee $2
           (i32.add
            (i32.add
             (local.get $0)
             (i32.const 16)
            )
            (i32.shl
             (i32.shr_u
              (local.get $4)
              (i32.const 31)
             )
             (i32.const 2)
            )
           )
          )
         )
        )
        (block
         (local.set $4
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
         (if
          (i32.eq
           (local.get $5)
           (i32.and
            (i32.load
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (i32.const -8)
           )
          )
          (block
           (local.set $14
            (local.get $1)
           )
           (br $label$break$L200)
          )
          (block
           (local.set $0
            (local.get $1)
           )
           (br $while-in17)
          )
         )
        )
       )
      )
      (if
       (i32.gt_u
        (i32.load
         (i32.const 3876)
        )
        (local.get $2)
       )
       (call $_abort)
       (block
        (i32.store
         (local.get $2)
         (local.get $3)
        )
        (i32.store
         (i32.add
          (local.get $3)
          (i32.const 24)
         )
         (local.get $0)
        )
        (i32.store
         (i32.add
          (local.get $3)
          (i32.const 12)
         )
         (local.get $3)
        )
        (i32.store
         (i32.add
          (local.get $3)
          (i32.const 8)
         )
         (local.get $3)
        )
        (br $label$break$L197)
       )
      )
     )
    )
    (if
     (i32.and
      (i32.le_u
       (local.tee $0
        (i32.load
         (i32.const 3876)
        )
       )
       (local.get $14)
      )
      (i32.le_u
       (local.get $0)
       (local.tee $0
        (i32.load
         (local.tee $1
          (i32.add
           (local.get $14)
           (i32.const 8)
          )
         )
        )
       )
      )
     )
     (block
      (i32.store
       (i32.add
        (local.get $0)
        (i32.const 12)
       )
       (local.get $3)
      )
      (i32.store
       (local.get $1)
       (local.get $3)
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 8)
       )
       (local.get $0)
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 12)
       )
       (local.get $14)
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 24)
       )
       (i32.const 0)
      )
     )
     (call $_abort)
    )
   )
   (block
    (i32.store
     (i32.const 3864)
     (i32.or
      (local.get $2)
      (local.get $4)
     )
    )
    (i32.store
     (local.get $0)
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 24)
     )
     (local.get $0)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 12)
     )
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 8)
     )
     (local.get $3)
    )
   )
  )
  (i32.store
   (i32.const 3892)
   (local.tee $0
    (i32.add
     (i32.load
      (i32.const 3892)
     )
     (i32.const -1)
    )
   )
  )
  (if
   (local.get $0)
   (return)
  )
  (local.set $0
   (i32.const 4316)
  )
  (loop $while-in19
   (local.set $0
    (i32.add
     (local.tee $1
      (i32.load
       (local.get $0)
      )
     )
     (i32.const 8)
    )
   )
   (br_if $while-in19
    (local.get $1)
   )
  )
  (i32.store
   (i32.const 3892)
   (i32.const -1)
  )
 )
 (func $__ZN10__cxxabiv116__shim_type_infoD2Ev (; 87 ;) (; has Stack IR ;) (param $0 i32)
  (nop)
 )
 (func $__ZN10__cxxabiv117__class_type_infoD0Ev (; 88 ;) (; has Stack IR ;) (param $0 i32)
  (call $_free
   (local.get $0)
  )
 )
 (func $__ZNK10__cxxabiv117__class_type_info9can_catchEPKNS_16__shim_type_infoERPv (; 89 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $6
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.sub
    (global.get $STACKTOP)
    (i32.const -64)
   )
  )
  (local.set $3
   (local.get $6)
  )
  (local.set $0
   (if (result i32)
    (call $__ZL8is_equalPKSt9type_infoS1_b
     (local.get $0)
     (local.get $1)
     (i32.const 0)
    )
    (i32.const 1)
    (if (result i32)
     (local.get $1)
     (if (result i32)
      (local.tee $5
       (call $___dynamic_cast
        (local.get $1)
        (i32.const 1792)
       )
      )
      (block (result i32)
       (i32.store
        (local.get $3)
        (local.get $5)
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 4)
        )
        (i32.const 0)
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 8)
        )
        (local.get $0)
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 12)
        )
        (i32.const -1)
       )
       (local.set $1
        (i32.add
         (local.get $3)
         (i32.const 24)
        )
       )
       (i64.store align=4
        (local.tee $4
         (i32.add
          (local.get $3)
          (i32.const 16)
         )
        )
        (i64.const 0)
       )
       (i64.store offset=8 align=4
        (local.get $4)
        (i64.const 0)
       )
       (i64.store offset=16 align=4
        (local.get $4)
        (i64.const 0)
       )
       (i64.store offset=24 align=4
        (local.get $4)
        (i64.const 0)
       )
       (i32.store offset=32
        (local.get $4)
        (i32.const 0)
       )
       (i32.store16 offset=36
        (local.get $4)
        (i32.const 0)
       )
       (i32.store8 offset=38
        (local.get $4)
        (i32.const 0)
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 48)
        )
        (i32.const 1)
       )
       (local.set $0
        (i32.load
         (i32.add
          (i32.load
           (local.get $5)
          )
          (i32.const 28)
         )
        )
       )
       (call_indirect (type $i32_i32_i32_i32_=>_none)
        (local.get $5)
        (local.get $3)
        (i32.load
         (local.get $2)
        )
        (i32.const 1)
        (i32.add
         (i32.and
          (local.get $0)
          (i32.const 3)
         )
         (i32.const 25)
        )
       )
       (if (result i32)
        (i32.eq
         (i32.load
          (local.get $1)
         )
         (i32.const 1)
        )
        (block (result i32)
         (i32.store
          (local.get $2)
          (i32.load
           (local.get $4)
          )
         )
         (i32.const 1)
        )
        (i32.const 0)
       )
      )
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $6)
  )
  (local.get $0)
 )
 (func $__ZNK10__cxxabiv117__class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib (; 90 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (if
   (call $__ZL8is_equalPKSt9type_infoS1_b
    (local.get $0)
    (i32.load
     (i32.add
      (local.get $1)
      (i32.const 8)
     )
    )
    (local.get $5)
   )
   (call $__ZNK10__cxxabiv117__class_type_info29process_static_type_above_dstEPNS_19__dynamic_cast_infoEPKvS4_i
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
   )
  )
 )
 (func $__ZNK10__cxxabiv117__class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib (; 91 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (if
   (call $__ZL8is_equalPKSt9type_infoS1_b
    (local.get $0)
    (i32.load
     (i32.add
      (local.get $1)
      (i32.const 8)
     )
    )
    (local.get $4)
   )
   (call $__ZNK10__cxxabiv117__class_type_info29process_static_type_below_dstEPNS_19__dynamic_cast_infoEPKvi
    (local.get $1)
    (local.get $2)
    (local.get $3)
   )
   (if
    (call $__ZL8is_equalPKSt9type_infoS1_b
     (local.get $0)
     (i32.load
      (local.get $1)
     )
     (local.get $4)
    )
    (block $do-once
     (if
      (i32.ne
       (i32.load
        (i32.add
         (local.get $1)
         (i32.const 16)
        )
       )
       (local.get $2)
      )
      (if
       (i32.ne
        (i32.load
         (local.tee $0
          (i32.add
           (local.get $1)
           (i32.const 20)
          )
         )
        )
        (local.get $2)
       )
       (block
        (i32.store
         (i32.add
          (local.get $1)
          (i32.const 32)
         )
         (local.get $3)
        )
        (i32.store
         (local.get $0)
         (local.get $2)
        )
        (i32.store
         (local.tee $0
          (i32.add
           (local.get $1)
           (i32.const 40)
          )
         )
         (i32.add
          (i32.load
           (local.get $0)
          )
          (i32.const 1)
         )
        )
        (if
         (i32.eq
          (i32.load
           (i32.add
            (local.get $1)
            (i32.const 36)
           )
          )
          (i32.const 1)
         )
         (if
          (i32.eq
           (i32.load
            (i32.add
             (local.get $1)
             (i32.const 24)
            )
           )
           (i32.const 2)
          )
          (i32.store8
           (i32.add
            (local.get $1)
            (i32.const 54)
           )
           (i32.const 1)
          )
         )
        )
        (i32.store
         (i32.add
          (local.get $1)
          (i32.const 44)
         )
         (i32.const 4)
        )
        (br $do-once)
       )
      )
     )
     (if
      (i32.eq
       (local.get $3)
       (i32.const 1)
      )
      (i32.store
       (i32.add
        (local.get $1)
        (i32.const 32)
       )
       (i32.const 1)
      )
     )
    )
   )
  )
 )
 (func $__ZNK10__cxxabiv117__class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi (; 92 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (if
   (call $__ZL8is_equalPKSt9type_infoS1_b
    (local.get $0)
    (i32.load
     (i32.add
      (local.get $1)
      (i32.const 8)
     )
    )
    (i32.const 0)
   )
   (call $__ZNK10__cxxabiv117__class_type_info24process_found_base_classEPNS_19__dynamic_cast_infoEPvi
    (local.get $1)
    (local.get $2)
    (local.get $3)
   )
  )
 )
 (func $__ZL8is_equalPKSt9type_infoS1_b (; 93 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if (result i32)
   (local.get $2)
   (i32.eqz
    (call $_strcmp
     (i32.load
      (i32.add
       (local.get $0)
       (i32.const 4)
      )
     )
     (i32.load
      (i32.add
       (local.get $1)
       (i32.const 4)
      )
     )
    )
   )
   (i32.eq
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $__ZNK10__cxxabiv117__class_type_info24process_found_base_classEPNS_19__dynamic_cast_infoEPvi (; 94 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (local.tee $4
    (i32.load
     (local.tee $3
      (i32.add
       (local.get $0)
       (i32.const 16)
      )
     )
    )
   )
   (block $do-once
    (if
     (i32.ne
      (local.get $1)
      (local.get $4)
     )
     (block
      (i32.store
       (local.tee $3
        (i32.add
         (local.get $0)
         (i32.const 36)
        )
       )
       (i32.add
        (i32.load
         (local.get $3)
        )
        (i32.const 1)
       )
      )
      (i32.store offset=24
       (local.get $0)
       (i32.const 2)
      )
      (i32.store8 offset=54
       (local.get $0)
       (i32.const 1)
      )
      (br $do-once)
     )
    )
    (if
     (i32.eq
      (i32.load
       (local.tee $3
        (i32.add
         (local.get $0)
         (i32.const 24)
        )
       )
      )
      (i32.const 2)
     )
     (i32.store
      (local.get $3)
      (local.get $2)
     )
    )
   )
   (block
    (i32.store
     (local.get $3)
     (local.get $1)
    )
    (i32.store offset=24
     (local.get $0)
     (local.get $2)
    )
    (i32.store offset=36
     (local.get $0)
     (i32.const 1)
    )
   )
  )
 )
 (func $__ZNK10__cxxabiv117__class_type_info29process_static_type_below_dstEPNS_19__dynamic_cast_infoEPKvi (; 95 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (if
   (i32.eq
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
   (if
    (i32.ne
     (i32.load
      (local.tee $0
       (i32.add
        (local.get $0)
        (i32.const 28)
       )
      )
     )
     (i32.const 1)
    )
    (i32.store
     (local.get $0)
     (local.get $2)
    )
   )
  )
 )
 (func $__ZNK10__cxxabiv117__class_type_info29process_static_type_above_dstEPNS_19__dynamic_cast_infoEPKvS4_i (; 96 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (i32.store8 offset=53
   (local.get $0)
   (i32.const 1)
  )
  (if
   (i32.eq
    (local.get $2)
    (i32.load offset=4
     (local.get $0)
    )
   )
   (block $do-once
    (i32.store8 offset=52
     (local.get $0)
     (i32.const 1)
    )
    (if
     (i32.eqz
      (local.tee $2
       (i32.load
        (local.tee $4
         (i32.add
          (local.get $0)
          (i32.const 16)
         )
        )
       )
      )
     )
     (block
      (i32.store
       (local.get $4)
       (local.get $1)
      )
      (i32.store offset=24
       (local.get $0)
       (local.get $3)
      )
      (i32.store offset=36
       (local.get $0)
       (i32.const 1)
      )
      (br_if $do-once
       (i32.eqz
        (i32.and
         (i32.eq
          (i32.load offset=48
           (local.get $0)
          )
          (i32.const 1)
         )
         (i32.eq
          (local.get $3)
          (i32.const 1)
         )
        )
       )
      )
      (i32.store8 offset=54
       (local.get $0)
       (i32.const 1)
      )
      (br $do-once)
     )
    )
    (if
     (i32.ne
      (local.get $1)
      (local.get $2)
     )
     (block
      (i32.store
       (local.tee $4
        (i32.add
         (local.get $0)
         (i32.const 36)
        )
       )
       (i32.add
        (i32.load
         (local.get $4)
        )
        (i32.const 1)
       )
      )
      (i32.store8 offset=54
       (local.get $0)
       (i32.const 1)
      )
      (br $do-once)
     )
    )
    (if
     (i32.eq
      (local.tee $4
       (i32.load
        (local.tee $1
         (i32.add
          (local.get $0)
          (i32.const 24)
         )
        )
       )
      )
      (i32.const 2)
     )
     (i32.store
      (local.get $1)
      (local.get $3)
     )
     (local.set $3
      (local.get $4)
     )
    )
    (if
     (i32.and
      (i32.eq
       (i32.load offset=48
        (local.get $0)
       )
       (i32.const 1)
      )
      (i32.eq
       (local.get $3)
       (i32.const 1)
      )
     )
     (i32.store8 offset=54
      (local.get $0)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $___dynamic_cast (; 97 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local.set $6
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.sub
    (global.get $STACKTOP)
    (i32.const -64)
   )
  )
  (local.set $5
   (i32.add
    (local.get $0)
    (i32.load
     (i32.add
      (local.tee $2
       (i32.load
        (local.get $0)
       )
      )
      (i32.const -8)
     )
    )
   )
  )
  (local.set $4
   (i32.load
    (i32.add
     (local.get $2)
     (i32.const -4)
    )
   )
  )
  (i32.store
   (local.tee $2
    (local.get $6)
   )
   (local.get $1)
  )
  (i32.store offset=4
   (local.get $2)
   (local.get $0)
  )
  (i32.store offset=8
   (local.get $2)
   (i32.const 1808)
  )
  (i32.store offset=12
   (local.get $2)
   (i32.const 0)
  )
  (local.set $0
   (i32.add
    (local.get $2)
    (i32.const 20)
   )
  )
  (local.set $7
   (i32.add
    (local.get $2)
    (i32.const 24)
   )
  )
  (local.set $8
   (i32.add
    (local.get $2)
    (i32.const 28)
   )
  )
  (local.set $9
   (i32.add
    (local.get $2)
    (i32.const 32)
   )
  )
  (local.set $10
   (i32.add
    (local.get $2)
    (i32.const 40)
   )
  )
  (i64.store align=4
   (local.tee $3
    (i32.add
     (local.get $2)
     (i32.const 16)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=8 align=4
   (local.get $3)
   (i64.const 0)
  )
  (i64.store offset=16 align=4
   (local.get $3)
   (i64.const 0)
  )
  (i64.store offset=24 align=4
   (local.get $3)
   (i64.const 0)
  )
  (i32.store offset=32
   (local.get $3)
   (i32.const 0)
  )
  (i32.store16 offset=36
   (local.get $3)
   (i32.const 0)
  )
  (i32.store8 offset=38
   (local.get $3)
   (i32.const 0)
  )
  (local.set $0
   (if (result i32)
    (call $__ZL8is_equalPKSt9type_infoS1_b
     (local.get $4)
     (local.get $1)
     (i32.const 0)
    )
    (block (result i32)
     (i32.store offset=48
      (local.get $2)
      (i32.const 1)
     )
     (call_indirect (type $i32_i32_i32_i32_i32_i32_=>_none)
      (local.get $4)
      (local.get $2)
      (local.get $5)
      (local.get $5)
      (i32.const 1)
      (i32.const 0)
      (i32.add
       (i32.and
        (i32.load offset=20
         (i32.load
          (local.get $4)
         )
        )
        (i32.const 3)
       )
       (i32.const 33)
      )
     )
     (select
      (local.get $5)
      (i32.const 0)
      (i32.eq
       (i32.load
        (local.get $7)
       )
       (i32.const 1)
      )
     )
    )
    (block $label$break$L1 (result i32)
     (call_indirect (type $i32_i32_i32_i32_i32_=>_none)
      (local.get $4)
      (local.get $2)
      (local.get $5)
      (i32.const 1)
      (i32.const 0)
      (i32.add
       (i32.and
        (i32.load offset=24
         (i32.load
          (local.get $4)
         )
        )
        (i32.const 3)
       )
       (i32.const 29)
      )
     )
     (block $switch
      (block $switch-default
       (block $switch-case
        (br_table $switch-case $switch $switch-default
         (i32.load
          (i32.add
           (local.get $2)
           (i32.const 36)
          )
         )
        )
       )
       (br $label$break$L1
        (select
         (i32.load
          (local.get $0)
         )
         (i32.const 0)
         (i32.and
          (i32.and
           (i32.eq
            (i32.load
             (local.get $10)
            )
            (i32.const 1)
           )
           (i32.eq
            (i32.load
             (local.get $8)
            )
            (i32.const 1)
           )
          )
          (i32.eq
           (i32.load
            (local.get $9)
           )
           (i32.const 1)
          )
         )
        )
       )
      )
      (br $label$break$L1
       (i32.const 0)
      )
     )
     (if
      (i32.ne
       (i32.load
        (local.get $7)
       )
       (i32.const 1)
      )
      (drop
       (br_if $label$break$L1
        (i32.const 0)
        (i32.eqz
         (i32.and
          (i32.and
           (i32.eqz
            (i32.load
             (local.get $10)
            )
           )
           (i32.eq
            (i32.load
             (local.get $8)
            )
            (i32.const 1)
           )
          )
          (i32.eq
           (i32.load
            (local.get $9)
           )
           (i32.const 1)
          )
         )
        )
       )
      )
     )
     (i32.load
      (local.get $3)
     )
    )
   )
  )
  (global.set $STACKTOP
   (local.get $6)
  )
  (local.get $0)
 )
 (func $__ZNK10__cxxabiv120__si_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib (; 98 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (if
   (call $__ZL8is_equalPKSt9type_infoS1_b
    (local.get $0)
    (i32.load
     (i32.add
      (local.get $1)
      (i32.const 8)
     )
    )
    (local.get $5)
   )
   (call $__ZNK10__cxxabiv117__class_type_info29process_static_type_above_dstEPNS_19__dynamic_cast_infoEPKvS4_i
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
   )
   (block
    (local.set $6
     (i32.load
      (i32.add
       (i32.load
        (local.tee $0
         (i32.load
          (i32.add
           (local.get $0)
           (i32.const 8)
          )
         )
        )
       )
       (i32.const 20)
      )
     )
    )
    (call_indirect (type $i32_i32_i32_i32_i32_i32_=>_none)
     (local.get $0)
     (local.get $1)
     (local.get $2)
     (local.get $3)
     (local.get $4)
     (local.get $5)
     (i32.add
      (i32.and
       (local.get $6)
       (i32.const 3)
      )
      (i32.const 33)
     )
    )
   )
  )
 )
 (func $__ZNK10__cxxabiv120__si_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib (; 99 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (if
   (call $__ZL8is_equalPKSt9type_infoS1_b
    (local.get $0)
    (i32.load
     (i32.add
      (local.get $1)
      (i32.const 8)
     )
    )
    (local.get $4)
   )
   (call $__ZNK10__cxxabiv117__class_type_info29process_static_type_below_dstEPNS_19__dynamic_cast_infoEPKvi
    (local.get $1)
    (local.get $2)
    (local.get $3)
   )
   (block $label$break$L1
    (if
     (i32.eqz
      (call $__ZL8is_equalPKSt9type_infoS1_b
       (local.get $0)
       (i32.load
        (local.get $1)
       )
       (local.get $4)
      )
     )
     (block
      (local.set $5
       (i32.load
        (i32.add
         (i32.load
          (local.tee $0
           (i32.load
            (i32.add
             (local.get $0)
             (i32.const 8)
            )
           )
          )
         )
         (i32.const 24)
        )
       )
      )
      (call_indirect (type $i32_i32_i32_i32_i32_=>_none)
       (local.get $0)
       (local.get $1)
       (local.get $2)
       (local.get $3)
       (local.get $4)
       (i32.add
        (i32.and
         (local.get $5)
         (i32.const 3)
        )
        (i32.const 29)
       )
      )
      (br $label$break$L1)
     )
    )
    (if
     (i32.ne
      (i32.load
       (i32.add
        (local.get $1)
        (i32.const 16)
       )
      )
      (local.get $2)
     )
     (if
      (i32.ne
       (i32.load
        (local.tee $5
         (i32.add
          (local.get $1)
          (i32.const 20)
         )
        )
       )
       (local.get $2)
      )
      (block
       (i32.store
        (i32.add
         (local.get $1)
         (i32.const 32)
        )
        (local.get $3)
       )
       (if
        (i32.ne
         (i32.load
          (local.tee $3
           (i32.add
            (local.get $1)
            (i32.const 44)
           )
          )
         )
         (i32.const 4)
        )
        (block
         (i32.store8
          (local.tee $6
           (i32.add
            (local.get $1)
            (i32.const 52)
           )
          )
          (i32.const 0)
         )
         (i32.store8
          (local.tee $7
           (i32.add
            (local.get $1)
            (i32.const 53)
           )
          )
          (i32.const 0)
         )
         (local.set $8
          (i32.load
           (i32.add
            (i32.load
             (local.tee $0
              (i32.load
               (i32.add
                (local.get $0)
                (i32.const 8)
               )
              )
             )
            )
            (i32.const 20)
           )
          )
         )
         (call_indirect (type $i32_i32_i32_i32_i32_i32_=>_none)
          (local.get $0)
          (local.get $1)
          (local.get $2)
          (local.get $2)
          (i32.const 1)
          (local.get $4)
          (i32.add
           (i32.and
            (local.get $8)
            (i32.const 3)
           )
           (i32.const 33)
          )
         )
         (if
          (i32.load8_s
           (local.get $7)
          )
          (block
           (local.set $0
            (i32.eqz
             (i32.load8_s
              (local.get $6)
             )
            )
           )
           (i32.store
            (local.get $3)
            (i32.const 3)
           )
           (br_if $label$break$L1
            (i32.eqz
             (local.get $0)
            )
           )
          )
          (i32.store
           (local.get $3)
           (i32.const 4)
          )
         )
        )
       )
       (i32.store
        (local.get $5)
        (local.get $2)
       )
       (i32.store
        (local.tee $0
         (i32.add
          (local.get $1)
          (i32.const 40)
         )
        )
        (i32.add
         (i32.load
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (br_if $label$break$L1
        (i32.ne
         (i32.load
          (i32.add
           (local.get $1)
           (i32.const 36)
          )
         )
         (i32.const 1)
        )
       )
       (br_if $label$break$L1
        (i32.ne
         (i32.load
          (i32.add
           (local.get $1)
           (i32.const 24)
          )
         )
         (i32.const 2)
        )
       )
       (i32.store8
        (i32.add
         (local.get $1)
         (i32.const 54)
        )
        (i32.const 1)
       )
       (br $label$break$L1)
      )
     )
    )
    (if
     (i32.eq
      (local.get $3)
      (i32.const 1)
     )
     (i32.store
      (i32.add
       (local.get $1)
       (i32.const 32)
      )
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $__ZNK10__cxxabiv120__si_class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi (; 100 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (if
   (call $__ZL8is_equalPKSt9type_infoS1_b
    (local.get $0)
    (i32.load
     (i32.add
      (local.get $1)
      (i32.const 8)
     )
    )
    (i32.const 0)
   )
   (call $__ZNK10__cxxabiv117__class_type_info24process_found_base_classEPNS_19__dynamic_cast_infoEPvi
    (local.get $1)
    (local.get $2)
    (local.get $3)
   )
   (block
    (local.set $4
     (i32.load
      (i32.add
       (i32.load
        (local.tee $0
         (i32.load
          (i32.add
           (local.get $0)
           (i32.const 8)
          )
         )
        )
       )
       (i32.const 28)
      )
     )
    )
    (call_indirect (type $i32_i32_i32_i32_=>_none)
     (local.get $0)
     (local.get $1)
     (local.get $2)
     (local.get $3)
     (i32.add
      (i32.and
       (local.get $4)
       (i32.const 3)
      )
      (i32.const 25)
     )
    )
   )
  )
 )
 (func $___cxa_can_catch (; 101 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $3
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  (i32.store
   (local.tee $4
    (local.get $3)
   )
   (i32.load
    (local.get $2)
   )
  )
  (local.set $5
   (i32.load
    (i32.add
     (i32.load
      (local.get $0)
     )
     (i32.const 16)
    )
   )
  )
  (if
   (local.tee $0
    (call_indirect (type $i32_i32_i32_=>_i32)
     (local.get $0)
     (local.get $1)
     (local.get $3)
     (i32.add
      (i32.and
       (local.get $5)
       (i32.const 3)
      )
      (i32.const 6)
     )
    )
   )
   (i32.store
    (local.get $2)
    (i32.load
     (local.get $4)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $3)
  )
  (i32.and
   (local.get $0)
   (i32.const 1)
  )
 )
 (func $___cxa_is_pointer_type (; 102 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (if (result i32)
   (local.get $0)
   (i32.ne
    (call $___dynamic_cast
     (local.get $0)
     (i32.const 1864)
    )
    (i32.const 0)
   )
   (i32.const 0)
  )
 )
 (func $_memcpy (; 103 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.ge_s
    (local.get $2)
    (i32.const 8192)
   )
   (block
    (drop
     (call $_emscripten_memcpy_big
      (local.get $0)
      (local.get $1)
      (local.get $2)
     )
    )
    (return
     (local.get $0)
    )
   )
  )
  (local.set $4
   (local.get $0)
  )
  (local.set $3
   (i32.add
    (local.get $0)
    (local.get $2)
   )
  )
  (if
   (i32.eq
    (i32.and
     (local.get $0)
     (i32.const 3)
    )
    (i32.and
     (local.get $1)
     (i32.const 3)
    )
   )
   (block
    (loop $while-in
     (if
      (i32.and
       (local.get $0)
       (i32.const 3)
      )
      (block
       (if
        (i32.eqz
         (local.get $2)
        )
        (return
         (local.get $4)
        )
       )
       (i32.store8
        (local.get $0)
        (i32.load8_s
         (local.get $1)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (local.set $2
        (i32.sub
         (local.get $2)
         (i32.const 1)
        )
       )
       (br $while-in)
      )
     )
    )
    (local.set $5
     (i32.add
      (local.tee $2
       (i32.and
        (local.get $3)
        (i32.const -4)
       )
      )
      (i32.const -64)
     )
    )
    (loop $while-in1
     (if
      (i32.le_s
       (local.get $0)
       (local.get $5)
      )
      (block
       (i32.store
        (local.get $0)
        (i32.load
         (local.get $1)
        )
       )
       (i32.store offset=4
        (local.get $0)
        (i32.load offset=4
         (local.get $1)
        )
       )
       (i32.store offset=8
        (local.get $0)
        (i32.load offset=8
         (local.get $1)
        )
       )
       (i32.store offset=12
        (local.get $0)
        (i32.load offset=12
         (local.get $1)
        )
       )
       (i32.store offset=16
        (local.get $0)
        (i32.load offset=16
         (local.get $1)
        )
       )
       (i32.store offset=20
        (local.get $0)
        (i32.load offset=20
         (local.get $1)
        )
       )
       (i32.store offset=24
        (local.get $0)
        (i32.load offset=24
         (local.get $1)
        )
       )
       (i32.store offset=28
        (local.get $0)
        (i32.load offset=28
         (local.get $1)
        )
       )
       (i32.store offset=32
        (local.get $0)
        (i32.load offset=32
         (local.get $1)
        )
       )
       (i32.store offset=36
        (local.get $0)
        (i32.load offset=36
         (local.get $1)
        )
       )
       (i32.store offset=40
        (local.get $0)
        (i32.load offset=40
         (local.get $1)
        )
       )
       (i32.store offset=44
        (local.get $0)
        (i32.load offset=44
         (local.get $1)
        )
       )
       (i32.store offset=48
        (local.get $0)
        (i32.load offset=48
         (local.get $1)
        )
       )
       (i32.store offset=52
        (local.get $0)
        (i32.load offset=52
         (local.get $1)
        )
       )
       (i32.store offset=56
        (local.get $0)
        (i32.load offset=56
         (local.get $1)
        )
       )
       (i32.store offset=60
        (local.get $0)
        (i32.load offset=60
         (local.get $1)
        )
       )
       (local.set $0
        (i32.sub
         (local.get $0)
         (i32.const -64)
        )
       )
       (local.set $1
        (i32.sub
         (local.get $1)
         (i32.const -64)
        )
       )
       (br $while-in1)
      )
     )
    )
    (loop $while-in3
     (if
      (i32.lt_s
       (local.get $0)
       (local.get $2)
      )
      (block
       (i32.store
        (local.get $0)
        (i32.load
         (local.get $1)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 4)
        )
       )
       (br $while-in3)
      )
     )
    )
   )
   (block
    (local.set $2
     (i32.sub
      (local.get $3)
      (i32.const 4)
     )
    )
    (loop $while-in5
     (if
      (i32.lt_s
       (local.get $0)
       (local.get $2)
      )
      (block
       (i32.store8
        (local.get $0)
        (i32.load8_s
         (local.get $1)
        )
       )
       (i32.store8 offset=1
        (local.get $0)
        (i32.load8_s offset=1
         (local.get $1)
        )
       )
       (i32.store8 offset=2
        (local.get $0)
        (i32.load8_s offset=2
         (local.get $1)
        )
       )
       (i32.store8 offset=3
        (local.get $0)
        (i32.load8_s offset=3
         (local.get $1)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 4)
        )
       )
       (br $while-in5)
      )
     )
    )
   )
  )
  (loop $while-in7
   (if
    (i32.lt_s
     (local.get $0)
     (local.get $3)
    )
    (block
     (i32.store8
      (local.get $0)
      (i32.load8_s
       (local.get $1)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $while-in7)
    )
   )
  )
  (local.get $4)
 )
 (func $_memset (; 104 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (local.get $2)
   )
  )
  (local.set $1
   (i32.and
    (local.get $1)
    (i32.const 255)
   )
  )
  (if
   (i32.ge_s
    (local.get $2)
    (i32.const 67)
   )
   (block
    (loop $while-in
     (if
      (i32.and
       (local.get $0)
       (i32.const 3)
      )
      (block
       (i32.store8
        (local.get $0)
        (local.get $1)
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (br $while-in)
      )
     )
    )
    (local.set $3
     (i32.or
      (i32.or
       (i32.or
        (i32.shl
         (local.get $1)
         (i32.const 8)
        )
        (local.get $1)
       )
       (i32.shl
        (local.get $1)
        (i32.const 16)
       )
      )
      (i32.shl
       (local.get $1)
       (i32.const 24)
      )
     )
    )
    (local.set $6
     (i32.add
      (local.tee $5
       (i32.and
        (local.get $4)
        (i32.const -4)
       )
      )
      (i32.const -64)
     )
    )
    (loop $while-in1
     (if
      (i32.le_s
       (local.get $0)
       (local.get $6)
      )
      (block
       (i32.store
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=4
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=8
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=12
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=16
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=20
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=24
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=28
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=32
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=36
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=40
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=44
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=48
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=52
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=56
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=60
        (local.get $0)
        (local.get $3)
       )
       (local.set $0
        (i32.sub
         (local.get $0)
         (i32.const -64)
        )
       )
       (br $while-in1)
      )
     )
    )
    (loop $while-in3
     (if
      (i32.lt_s
       (local.get $0)
       (local.get $5)
      )
      (block
       (i32.store
        (local.get $0)
        (local.get $3)
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (br $while-in3)
      )
     )
    )
   )
  )
  (loop $while-in5
   (if
    (i32.lt_s
     (local.get $0)
     (local.get $4)
    )
    (block
     (i32.store8
      (local.get $0)
      (local.get $1)
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $while-in5)
    )
   )
  )
  (i32.sub
   (local.get $4)
   (local.get $2)
  )
 )
 (func $_sbrk (; 105 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $3
   (call $_emscripten_get_heap_size)
  )
  (if
   (i32.or
    (i32.and
     (i32.lt_s
      (local.tee $1
       (i32.add
        (local.get $0)
        (local.tee $2
         (i32.load
          (global.get $DYNAMICTOP_PTR$asm2wasm$import)
         )
        )
       )
      )
      (local.get $2)
     )
     (i32.gt_s
      (local.get $0)
      (i32.const 0)
     )
    )
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
   )
   (block
    (drop
     (call $abortOnCannotGrowMemory
      (local.get $1)
     )
    )
    (call $___setErrNo
     (i32.const 12)
    )
    (return
     (i32.const -1)
    )
   )
  )
  (if
   (i32.gt_s
    (local.get $1)
    (local.get $3)
   )
   (if
    (i32.eqz
     (call $_emscripten_resize_heap
      (local.get $1)
     )
    )
    (block
     (call $___setErrNo
      (i32.const 12)
     )
     (return
      (i32.const -1)
     )
    )
   )
  )
  (i32.store
   (global.get $DYNAMICTOP_PTR$asm2wasm$import)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $dynCall_ii (; 106 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (call_indirect (type $i32_=>_i32)
   (local.get $1)
   (i32.and
    (local.get $0)
    (i32.const 3)
   )
  )
 )
 (func $dynCall_iidiiii (; 107 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 f64) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (call_indirect (type $i32_f64_i32_i32_i32_i32_=>_i32)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
   (i32.add
    (i32.and
     (local.get $0)
     (i32.const 1)
    )
    (i32.const 4)
   )
  )
 )
 (func $dynCall_iiii (; 108 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (call_indirect (type $i32_i32_i32_=>_i32)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (i32.add
    (i32.and
     (local.get $0)
     (i32.const 3)
    )
    (i32.const 6)
   )
  )
 )
 (func $dynCall_v (; 109 ;) (; has Stack IR ;) (param $0 i32)
  (call_indirect (type $none_=>_none)
   (i32.const 14)
  )
 )
 (func $dynCall_vi (; 110 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (call_indirect (type $i32_=>_none)
   (local.get $1)
   (i32.add
    (i32.and
     (local.get $0)
     (i32.const 7)
    )
    (i32.const 15)
   )
  )
 )
 (func $dynCall_vii (; 111 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (call_indirect (type $i32_i32_=>_none)
   (local.get $1)
   (local.get $2)
   (i32.add
    (i32.and
     (local.get $0)
     (i32.const 1)
    )
    (i32.const 23)
   )
  )
 )
 (func $dynCall_viiii (; 112 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (call_indirect (type $i32_i32_i32_i32_=>_none)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (i32.add
    (i32.and
     (local.get $0)
     (i32.const 3)
    )
    (i32.const 25)
   )
  )
 )
 (func $dynCall_viiiii (; 113 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (call_indirect (type $i32_i32_i32_i32_i32_=>_none)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (i32.add
    (i32.and
     (local.get $0)
     (i32.const 3)
    )
    (i32.const 29)
   )
  )
 )
 (func $dynCall_viiiiii (; 114 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32)
  (call_indirect (type $i32_i32_i32_i32_i32_i32_=>_none)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
   (i32.add
    (i32.and
     (local.get $0)
     (i32.const 3)
    )
    (i32.const 33)
   )
  )
 )
 (func $b0 (; 115 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (call $abort
   (i32.const 0)
  )
  (i32.const 0)
 )
 (func $b1 (; 116 ;) (; has Stack IR ;) (param $0 i32) (param $1 f64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (call $abort
   (i32.const 1)
  )
  (i32.const 0)
 )
 (func $b2 (; 117 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $abort
   (i32.const 2)
  )
  (i32.const 0)
 )
 (func $b3 (; 118 ;) (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i64)
  (call $abort
   (i32.const 3)
  )
  (i64.const 0)
 )
 (func $b4 (; 119 ;) (; has Stack IR ;)
  (call $abort
   (i32.const 4)
  )
 )
 (func $b5 (; 120 ;) (; has Stack IR ;) (param $0 i32)
  (call $abort
   (i32.const 5)
  )
 )
 (func $b6 (; 121 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (call $abort
   (i32.const 6)
  )
 )
 (func $b7 (; 122 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (call $abort
   (i32.const 7)
  )
 )
 (func $b8 (; 123 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (call $abort
   (i32.const 8)
  )
 )
 (func $b9 (; 124 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (call $abort
   (i32.const 9)
  )
 )
 (func $legalstub$dynCall_jiji (; 125 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (call $setTempRet0
   (i32.wrap_i64
    (i64.shr_u
     (local.tee $5
      (call_indirect (type $i32_i64_i32_=>_i64)
       (local.get $1)
       (i64.or
        (i64.extend_i32_u
         (local.get $2)
        )
        (i64.shl
         (i64.extend_i32_u
          (local.get $3)
         )
         (i64.const 32)
        )
       )
       (local.get $4)
       (i32.add
        (i32.and
         (local.get $0)
         (i32.const 3)
        )
        (i32.const 10)
       )
      )
     )
     (i64.const 32)
    )
   )
  )
  (i32.wrap_i64
   (local.get $5)
  )
 )
)
