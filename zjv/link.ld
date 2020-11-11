OUTPUT_ARCH("riscv")

ENTRY(_start)

BASE_ADDR = 0x80000000;

/* MEMORY {
  ram (wxa!ri) : ORIGIN = BASE_ADDR, LENGTH = BASE_ADDR
} */

SECTIONS {
	. = BASE_ADDR;
	.text : {
		*(.text)
	}
	
    .rodata : { 
        *(.rodata) 
    }
	
    .data : { 
        *(.data) 
    }
	
    .bss : {
        *(.bss)
    }
	
	. += 0xF0000;
	. = ALIGN(0x1000);
	
    stack_top = .;
	
    _end = .;
}