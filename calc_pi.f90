! --------------------------------------------------- !
! Fall Project
! --------------------------------------------------- !

! --------------------------------------------------- !
! The purpose of this project is to approximate pi,
! using a few different methods.
!
! First, numerical integration.
! Second, using a sum of alternating series.
! Third, using Machin's formula.
! Lastly, using a dartboard algorithm.
! --------------------------------------------------- !

PROGRAM calc_pi

! Modules
USE dartboard
USE series
USE machin
USE trapezoid
USE simpson

  IMPLICIT NONE
  
  ! Warning
  WRITE(*,*) 'Please wait for approximately 15 seconds. Computation happening.'

  ! Call modules
  WRITE(*,*)'--- DARTBOARD ---'
  CALL dart()
  WRITE(*,*)'--- SERIES ---'
  CALL ser(100000)
  WRITE(*,*)'--- MACHINS ---'
  CALL mach()
  WRITE(*,*)'--- TRAPEZOID ---'
  CALL trapz(500000.0)
  WRITE(*,*)'--- SIMPSON ---'
  CALL simp(500000.0)

END PROGRAM calc_pi
