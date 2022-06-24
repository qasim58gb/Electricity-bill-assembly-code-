include irvine32.inc
.data
msg1 byte "Enter your consumed electricity unit  :",0
msg2 byte "Your bill is  :",0
ULE100 dword 7
ULE200 dword 9
ULE300 dword 11          ;ULE =unit lessthan or equal
ULE400 dword 13
ULE500 dword 15
UG500 dword 17
.code
main proc


mov edx,offset msg1
call writestring
call readint
cmp eax, 100
jle U100
cmp eax,200
jle U200
cmp eax,300
jle U300
cmp eax,400
jle U400
cmp eax,500
jle U500
jmp above500

U100:
mov ebx,ULE100
imul eax,ebx          ;100*7=700
JMP yourbill

U200:
mov ebx,ULE200
imul eax,ebx
JMP yourbill


U300:
mov ebx,ULE300
imul eax,ebx
JMP yourbill


U400:
mov ebx,ULE400
imul eax,ebx
JMP yourbill

U500:
mov ebx,ULE500
imul eax,ebx
JMP yourbill

above500:
mov ebx,UG500
imul eax,ebx
JMP yourbill


yourbill:
MOV EDX,OFFSET msg2
CALL WRITESTRING
CALL WRITEdec          
call crlf



quit:
exit 
main endp
end main