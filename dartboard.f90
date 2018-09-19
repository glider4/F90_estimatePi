! --------------------------------------------------- !

! --------------------------------------------------- !
! The purpose of this module is to provide an algorithm
! for finding the value of pi using a dartboard
! method, also known as Monte Carlo integration.
! --------------------------------------------------- !

MODULE dartboard

CONTAINS

SUBROUTINE dart()

  ! Variables and attributes
  IMPLICIT NONE
  INTEGER :: i, throws = 1000000000, dartsInCircle = 0
  REAL :: randX, randY, pi
  REAL :: startTime, finishTime

  CALL cpu_time(startTIME)

  ! Iterate through throws
  DO i = 0, throws-1
    CALL random_number(randX)
    CALL random_number(randY)

    ! If the throw is inside the circle, iterate the number
    ! of darts in the circle
    IF ((randX*randX + randY*randY) < 1.0) THEN
      dartsInCircle = dartsInCircle + 1
    ENDIF
  ENDDO

  CALL cpu_time(finishTime)

  ! Find pi
  pi = 4 * DBLE(dartsInCircle) / DBLE(throws)
  WRITE(*,*) pi, ' - Seconds taken: ', finishTime-startTime
  WRITE(*,*)

END SUBROUTINE dart

END MODULE dartboard
