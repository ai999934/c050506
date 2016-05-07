        .globl  main
        #.global  main -> http://kozos.jp/asm-tanka/ (Added2016.5.7)
main:   pushl   %ebp
         # -> ISBN-10: 4798116386 ISBN-13: 978-4798116389
         #  -> Added2016.5.8
        movl    %esp,%ebp
        # -> ISBN-10: 4798116386 ISBN-13: 978-4798116389 -> Added2016.5.8
        movl    $0xbf800000,%eax
        movl    %eax,%ebp
        movl    $0xffffffff,%eax
        movl    %eax,(%ebp)
        popl    %ebp
        ret
# gcc -g -O0 ./c050506.s
# Option '-g' '-O0' etc -> https://rat.cis.k.hosei.ac.jp/article/devel/debugongccgdb1.html etc
#  Added2016.5.7
# gdb ./a.out
# break main
# run
# next
# x 0xbf800000
