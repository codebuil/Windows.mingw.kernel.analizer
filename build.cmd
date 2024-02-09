@cls
@color 60
@del *.bin 2> temp
@del *.o   2> temp
@.\as -o boot.o boot.s
@.\gcc -c -nostdlib kernel.c -o kernel.o
@.\ld --entry start > -nostdlib -e 102000 -qmagic  -T link.ld  boot.o kernel.o -o kernel.exe 
@.\objdump -M intel  -d kernel.exe 