! Numerical Integration code


MODULE trapezoid

CONTAINS

SUBROUTINE trapz(N)

	implicit NONE
	INTEGER :: i, a, b, c
	REAL, intent(in) :: N
	REAL ::  h, x, y, part1, part2, trap_result, summation
	REAL :: start, fin


	CALL cpu_time(start)
	
	h = DBLE(1 / N)

	! 1/2 f(x_0)
	part1 = 0.5*sqrt(1-((0*h)**2))

	! 1/2 f(x_N)
	part2 = 0.5*sqrt(1-((N*h)**2))
	
	! summation 0 to N-1 of f(x_i)
	summation = 0.0
	c = (N-1)
	do i=1,c
		y = sqrt(1-((i*h)**2))
		summation = summation + y
	enddo

	CALL cpu_time(fin)
		

	trap_result = ( h * (part1 + part2 + summation) )
	write(*,*) 4*trap_result, 'time: ', fin-start
	WRITE(*,*)

END SUBROUTINE trapz

END MODULE trapezoid

