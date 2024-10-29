ORG 100h

MOV AH, 01h       
INT 21h            
SUB AL, 30h       
MOV BL, AL         

MOV AH, 01h        
INT 21h          
SUB AL, 30h        

CMP BL, AL         
JE EQUAL          
JMP NOTEQUAL       

EQUAL:
MOV DX, OFFSET MSG_EQUAL 
JMP DISPLAY_MSG          

NOTEQUAL:
MOV DX, OFFSET MSG_NOTEQUAL 

DISPLAY_MSG:
MOV AH, 09h        
INT 21h           
INT 20h            

MSG_EQUAL DB 'Numbers are equal$', 0
MSG_NOTEQUAL DB 'Numbers are not equal$', 0

END
