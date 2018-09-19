! Sum of Alernating Series code


MODULE simpson

CONTAINS

SUBROUTINE simp(N)

	implicit NONE
	INTEGER :: i, a, b, c, d, test
        REAL, intent(in) :: N
	REAL ::  h, x, y, z, part1, part2, oddsum, evensum, simp_result
	REAL :: start, fin

	CALL cpu_time(start)

	h = (1 / N)

	! f(x_0)
	part1 = sqrt(1-((0*h)**2))

	! f(x_N)
	part2 = sqrt(1-((N*h)**2))
	
	! summation 0 to N-1 of f(x_i) ODD
	oddsum = 0.0
	c = (N-1)
	do i=0,c
		test = mod(i,2)
		y = sqrt(1-((i*h)**2))

		if (test .EQ. 0) then
			y = 0.0
		endif

		oddsum = oddsum + y
	enddo

	! summation 0 to N-2 of f(x_i) EVEN
	evensum = 0.0
	d = (N-2)
	do i=0,d
		test = mod(i,2)
		z = sqrt(1-((i*h)**2))
		if (test .EQ. 1) then
			z = 0.0
		endif

		evensum = evensum + z
	enddo	

	CALL cpu_time(fin)
		

	simp_result = ( (h/3) * (part1 + part2 + 4*oddsum + 2*evensum) )

	write(*,*) 4*simp_result, 'time: ', fin-start
	WRITE(*,*)

END SUBROUTINE simp

END MODULE simpson

