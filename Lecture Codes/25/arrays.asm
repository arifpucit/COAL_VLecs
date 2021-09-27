// for (i=0; i<n; i++)
//	arr[i] = -1;
// Suppose that arr=20 and n=5

// Let arr = 20  
@20
D=A
@arr  
M=D

// Let n = 5  
@5
D=A
@n  
M=D

// Let i = 0  
@i
M=0


(LOOP)
// if (i==n) goto END  
  @i
  D=M
  @n  
  D=D-M  
  @END  
  D;JEQ
// RAM[arr+i] = -1  
  @arr
  D=M
  @i  
  A=D+M  
  M=-1
// i++  
  @i  
  M=M+1
  @LOOP  
  0;JMP
(END)
  @END  
  0;JMP
