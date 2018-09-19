! Machin code part

MODULE machin

CONTAINS

SUBROUTINE mach()

	implicit NONE
	REAL :: p, p2, x, y
        REAL :: start, fin

	CALL cpu_time(start)
        
	p = 4 * ( 4*atan(0.2) - atan(0.00418410041) )
  
        CALL cpu_time(fin)
      
	write(*,*) 'Calculation using arctan formula:', p, 'time: ', fin-start
	WRITE(*,*)
	
END SUBROUTINE mach

END MODULE machin


