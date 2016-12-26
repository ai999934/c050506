        .globl  main
        #.global  main -> External reference http://kozos.jp/asm-tanka/ (Added2016.12.26)
main:   pushl   %ebp
         # -> External reference ISBN-10: 4798116386 ISBN-13: 978-4798116389 (Added2016.12.26)
        movl    %esp,%ebp
        # -> External reference ISBN-10: 4798116386 ISBN-13: 978-4798116389 (Added2016.12.26)
        movl    $0xbf800000,%eax
        movl    %eax,%ebp
        movl    $0xffffffff,%eax
        movl    %eax,(%ebp)
        popl    %ebp
        ret
# gcc -g -O0 ./c050506.s
# -> Option '-g' '-O0' etc -> External reference https://rat.cis.k.hosei.ac.jp/article/devel/debugongccgdb1.html etc
#  -> Added2016.12.26
# gdb ./a.out
# break main
# run
# next
# x 0xbf800000
# next #->Added 2016.9.23
# next #->Added 2016.9.23
# next #->Added 2016.9.23
# x 0xbf800000 #->Added 2016.9.23
