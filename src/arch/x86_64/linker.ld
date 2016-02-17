/* Copied from http://blog.phil-opp.com/rust-os/multiboot-kernel.html */

ENTRY(start)

SECTIONS {
  . = 1M;

  .boot :
  {
    /* ensure that the multiboot header is a the beginning */
    KEEP(*(.multiboot_header))
  }

  .text :
  {
    *(.text .text.*)
  }

  .rodata :
  {
    *(.rodata .rodata.*)
  }

  .data.rel.ro :
  {
    *(.data.rel.ro.local*) *(.data.rel.ro .data.rel.ro.*)
  }
}
