        .globl  main
main:   pushl   %ebp
        movl    %esp,%ebp
        movl    $0xbf800000,%eax
        movl    %eax,%ebp
        movl    $0xffffffff,%eax
        movl    %eax,(%ebp)
        popl    %ebp
        ret
# gcc -g -O0 ./c050506.s
# gdb ./a.out
# break main
# run
# next
# x 0xbf800000
