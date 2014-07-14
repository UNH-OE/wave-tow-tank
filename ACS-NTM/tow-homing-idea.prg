#2
! This buffer calls the tow drive's homing routine

GLOBAL INT homeCounter_tow

MoO(tow) = 6
TILL MoOD(tow) = 6
ENABLE (tow)
TILL MoOD(tow) = 8

homeCounter_tow = homeCounter_tow + 1

! Set negative limit to zero
SLLIMIT(tow) = 0

! Set positive limit to 26.1?
! SRLIMIT(tow) = 26.1

! Have carriage go find positive limit switch and reset its soft limit value
! then return to platform
! PTP tow, 24
! VEL(tow) = 0.1
! JOG tow
! TILL FAULT(tow).#RL = 1
! KILL(tow)
! FCLEAR(tow)
! DISABLE(tow)
! SRLIMIT(tow) = RPOS(tow) - 0.05
! VEL(tow) = 0.5
! PTP tow, SRLIMIT(tow) - 26.1 + 10.2

STOP
