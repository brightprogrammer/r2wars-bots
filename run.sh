#!/bin/bash
radare2 -c "e asm.arch=x86; e asm.bits=32; aei; aeim; wx $(rasm2 -a x86 -b 32 -f newbot.x86-32.asm) @100; aer PC=100; aer SP=SP+100; Vpp" malloc://1024