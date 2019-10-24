IDENTIFICATION DIVISION.
PROGRAM-ID. BSORT-DEV.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.

       01 TEMP PIC 9 VALUE 0.
       01 I PIC 9 VALUE 0.
       01 J PIC 9 VALUE 0.
       01 ARRLENGTH PIC 9 VALUE 5.

       01 ARRAY-TABLE.
	      02 ARR PIC 9 OCCURS 5 TIMES.
	    
       
PROCEDURE DIVISION.
DISPLAY "ENTER ANY FIVE NUMBERS (from 0 to 9): ".
       PERFORM UNTIL I = 5
          ADD 1 TO I 
          ACCEPT ARR(I)
       END-PERFORM.

DISPLAY "ORIGINAL ARRAY : " ARRAY-TABLE.

PERFORM VARYING I FROM 1 BY 1 UNTIL I > ARRLENGTH
       PERFORM VARYING J FROM 1 BY 1 UNTIL J > ARRLENGTH  
         IF ARR(J) > ARR(J + 1) 
           MOVE ARR(J) TO TEMP
           MOVE ARR(J + 1) TO ARR(J)
           MOVE TEMP TO ARR(J + 1)
         END-IF
        
    
       END-PERFORM
     
END-PERFORM.
DISPLAY "SORTED ARRAY: " ARRAY-TABLE.

STOP RUN.
