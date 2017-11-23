
test.o:     file format elf32-i386


Disassembly of section .text:

00000000 <second_func>:
   0:	55                   	push   ebp
   1:	89 e5                	mov    ebp,esp
   3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
   6:	8b 10                	mov    edx,DWORD PTR [eax]
   8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
   b:	01 c2                	add    edx,eax
   d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  10:	89 10                	mov    DWORD PTR [eax],edx
  12:	90                   	nop
  13:	5d                   	pop    ebp
  14:	c3                   	ret    

00000015 <first_func>:
  15:	55                   	push   ebp
  16:	89 e5                	mov    ebp,esp
  18:	83 ec 18             	sub    esp,0x18
  1b:	c7 45 f4 03 00 00 00 	mov    DWORD PTR [ebp-0xc],0x3
  22:	83 ec 0c             	sub    esp,0xc
  25:	68 00 00 00 00       	push   0x0
  2a:	e8 fc ff ff ff       	call   2b <first_func+0x16>
  2f:	83 c4 10             	add    esp,0x10
  32:	83 ec 08             	sub    esp,0x8
  35:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
  38:	8d 45 08             	lea    eax,[ebp+0x8]
  3b:	50                   	push   eax
  3c:	e8 bf ff ff ff       	call   0 <second_func>
  41:	83 c4 10             	add    esp,0x10
  44:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  47:	c9                   	leave  
  48:	c3                   	ret    

00000049 <main>:
  49:	8d 4c 24 04          	lea    ecx,[esp+0x4]
  4d:	83 e4 f0             	and    esp,0xfffffff0
  50:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
  53:	55                   	push   ebp
  54:	89 e5                	mov    ebp,esp
  56:	51                   	push   ecx
  57:	83 ec 04             	sub    esp,0x4
  5a:	83 ec 0c             	sub    esp,0xc
  5d:	6a 0f                	push   0xf
  5f:	e8 b1 ff ff ff       	call   15 <first_func>
  64:	83 c4 10             	add    esp,0x10
  67:	83 ec 08             	sub    esp,0x8
  6a:	50                   	push   eax
  6b:	68 0e 00 00 00       	push   0xe
  70:	e8 fc ff ff ff       	call   71 <main+0x28>
  75:	83 c4 10             	add    esp,0x10
  78:	b8 00 00 00 00       	mov    eax,0x0
  7d:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  80:	c9                   	leave  
  81:	8d 61 fc             	lea    esp,[ecx-0x4]
  84:	c3                   	ret    
