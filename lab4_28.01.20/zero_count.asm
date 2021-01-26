;Finding number of 0's in a given number and store the count in a register
.model small
.stack
.data
num db 10h
.code
.startup
mov bl,00h
mov al,num
mov cx,0008h
loop1: rcl al,1         ;the msb in every iteration is copied into CF
jb exit                 ;so no need fo cmp,if cf=1,jb becomes true
inc bl                  ;number of zeroes in binary form
exit: loop loop1
.exit
End