DA_32 EQU 4000h
DA_C EQU 98h
DA_DRW EQU 92h
%macro Descriptor 3
  dw %2 & 0ffffh
  dw %1 & 0ffffh
  db (%1 >> 16) & 0ffh 
  dw ((%2>>8)&0f00h)|(%3 & 0f0ffh)
  db (%1 >>24) & 0ffffh
%endmacro