!_____________________________________________________________________!
!----------------------------------------------------------------------!
  PROGRAM MAIN
      use func
      use iomod
      use bisect

        IMPLICIT NONE 
        REAL::a,b,TOL,x
        integer::n
         
        CALL INPUT ( a, b, TOL )
        PRINT*,'read from the dat file successfully!' 
        PRINT 5, a, b, TOL 
    5   FORMAT('Searching for root in [',f5.2,' , ',f5.2,'], with TOL=',e15.8)
        PRINT*,'--------------------------------------------------------------'
        CALL BISECTION ( H, a, b, x, TOL )
        CALL OUTPUT ( x )

        STOP

  END PROGRAM MAIN
!____._________________________________________________________________!
!----------------------------------------------------------------------!
