! Sum of Alernating Series code


MODULE series

CONTAINS

SUBROUTINE ser(N)

	implicit NONE
	INTEGER, intent(in) :: N
	INTEGER :: i, a, b, c,M
	REAL :: x,y,z,y0,y1,y2, series_result
        REAL :: start, fin

        CALL cpu_time(start)

        x=1.0
        call arctan( N, x, y0 )
	! summation 0 to N of (-1)^(N+1) * (x^(2N-1)) / (2N-1)

        print*,'N, approx pi:', N, 4.0*y0
        print*

	y = (1.0/5)
	z = (1.0/239)

       	do m=1,5
		call arctan( m, y, y1 ) 
        	call arctan( m, z, y2 )
		series_result = 16*y1 - 4*y2
		write(*,*) m, series_result
      	enddo 

        CALL cpu_time(fin)
        WRITE(*,*) 'time: ', fin-start 
        WRITE(*,*)

END SUBROUTINE ser


subroutine arctan( N, x, y )
	implicit NONE
	
        INTEGER, intent(in) :: N 
        REAL, intent(in) :: x
        REAL, intent(out) :: y
        INTEGER :: i
	REAL :: sumx, temp

	
	! summation 0 to N of (-1)^(N+1) * (x^(2N-1)) / (2N-1)

	sumx = 0.0
	do i=1,N
		temp = (((-1.0)**(i+1)) * (x**((2*i) -1))) / ((2*i) - 1)
		sumx = sumx + temp
	enddo 
        y=sumx
	
return  
end subroutine arctan  

END MODULE series
