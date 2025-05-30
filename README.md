# SingularityOS
⚠️ Note: This repository is a collection of basic boot sector programs created while learning x86 assembly and exploring low-level system programming concepts.

## 📚 About
This project documents my personal journey into understanding how operating systems interact with hardware at the bare-metal level. It primarily consists of small boot sector programs, created as exercises.

### The name SingularityOS reflects my long-term aspiration to one day build a minimalist operating system from scratch. These experiments are early foundational steps in that direction.

## 🛠️ What’s Inside?
Each .asm file represents a standalone experiment or tutorial exercise. The focus is on:

- Writing basic bootloaders that fit into the 512-byte MBR

- Understanding BIOS interrupts (like INT 10h, INT 13h)

- Displaying text on screen in real mode

- Reading from the disk directly

- Experimenting with keyboard input/output

- Basic file I/O within boot sectors (where possible)


## Requirements
- NASM — Assembler for x86 architecture

- QEMU or Bochs — Virtual machine/emulator to test boot images

Assemble and Run
- Assemble a bootloader:

``` bash
nasm -f bin asm/filename.asm -o bin/filename.img
```
- Run with QEMU:
``` bash 
qemu-system-i386 -fda bin/filename.img
```

## 🌱 Purpose
The goal of this repository is purely educational:
- To understand how bootloaders work

- To explore low-level programming in assembly

- To build a foundation for developing more complex systems in the future
