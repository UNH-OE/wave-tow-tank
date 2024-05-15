#/ Controller version = 2.40
#/ Date = 5/15/2024 1:37 PM
#/ User remarks = 
#0
!!!!!!!!!!!!!!! EtherCAT Setup Buffer !!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!
!!!
!!! Include all EtherCAT mapping statements in this buffer.
!!! Use this buffer to trigger any initialization routines
!!!
!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!! Variable Declaration
INT AXIS
GLOBAL INT homeCounter_tow, homeCounter_AKD, homeCounter_y, homeCounter_z
homeCounter_tow = 0
homeCounter_AKD = 0
homeCounter_y = 0
homeCounter_z = 0

AUTOEXEC:

!!! Stop all other buffers from running
!!! - Can be modified to only stop buffers that utilize EtherCAT variables
!!! - Also turns off all autoroutines as all buffers that run CiA402 state
!!!   machine code use autoroutines to prevent themselves from turning off
BLOCK
	PFLAGS(1).#NOAUTO = 1
	PFLAGS(2).#NOAUTO = 1
	PFLAGS(3).#NOAUTO = 1
	PFLAGS(4).#NOAUTO = 1
	PFLAGS(5).#NOAUTO = 1
	PFLAGS(6).#NOAUTO = 1
	PFLAGS(7).#NOAUTO = 1
	PFLAGS(8).#NOAUTO = 1
	PFLAGS(9).#NOAUTO = 1
	PFLAGS(10).#NOAUTO = 1
	PFLAGS(11).#NOAUTO = 1
	PFLAGS(12).#NOAUTO = 1
	PFLAGS(13).#NOAUTO = 1
	PFLAGS(14).#NOAUTO = 1
	PFLAGS(15).#NOAUTO = 1
	PFLAGS(16).#NOAUTO = 1
	PFLAGS(17).#NOAUTO = 1
	PFLAGS(18).#NOAUTO = 1
	PFLAGS(19).#NOAUTO = 1
	PFLAGS(20).#NOAUTO = 1
	PFLAGS(21).#NOAUTO = 1
	PFLAGS(22).#NOAUTO = 1
	PFLAGS(23).#NOAUTO = 1
	PFLAGS(24).#NOAUTO = 1
	PFLAGS(25).#NOAUTO = 1
	PFLAGS(26).#NOAUTO = 1
	PFLAGS(27).#NOAUTO = 1
	PFLAGS(28).#NOAUTO = 1
	PFLAGS(29).#NOAUTO = 1
	PFLAGS(30).#NOAUTO = 1
	PFLAGS(31).#NOAUTO = 1
END

BLOCK
	STOP 1; 
	STOP 2;
	STOP 3;
	STOP 4;
	STOP 5;
	STOP 6;
	STOP 7; 
	STOP 8;
	STOP 9;
	STOP 10;
	STOP 11;
	STOP 12;
	STOP 13;
	STOP 14;
	STOP 15; 
	STOP 16;
	STOP 17;
	STOP 18;
	STOP 19;
	STOP 20;
	STOP 21;
	STOP 22;
	STOP 23; 
	STOP 24;
	STOP 25;
	STOP 26;
	STOP 27;
	STOP 28;
	STOP 29;
	STOP 30;
	STOP 31;
END

!!! Initialize Constants
PI = ACOS(-1)
T = CTIME / 1000

!!! Unmap any current EtherCAT mappings
ECUNMAP

!!! Set AKD digital output mask
COEWRITE/4 (1, 0x60FE, 2, 196608)

!!! Map each 3rd party axis variables
!!! - User must go to each subroutine corresponding to a used axis and properly define ECIN / ECOUT offsets
!!! - Only uncomment axes that are actually used

!CALL MAP_AXIS0
!CALL MAP_AXIS1
!CALL MAP_AXIS2
!CALL MAP_AXIS3
!CALL MAP_AXIS4
CALL MAP_AXIS5
!CALL MAP_AXIS6
!CALL MAP_AXIS7
!CALL MAP_AXIS8
!CALL MAP_AXIS9
!CALL MAP_AXIS10
!CALL MAP_AXIS11
!CALL MAP_AXIS12
!CALL MAP_AXIS13
!CALL MAP_AXIS14
!CALL MAP_AXIS15
!CALL MAP_AXIS16
!CALL MAP_AXIS17
!CALL MAP_AXIS18
!CALL MAP_AXIS19
!CALL MAP_AXIS20
!CALL MAP_AXIS21
!CALL MAP_AXIS22
!CALL MAP_AXIS23
!CALL MAP_AXIS24
!CALL MAP_AXIS25
!CALL MAP_AXIS26
!CALL MAP_AXIS27
!CALL MAP_AXIS28
!CALL MAP_AXIS29
!CALL MAP_AXIS30
!CALL MAP_AXIS31

!!! Map other variables
!!! - User can use this section to define any other EtherCAT mapping (I/O, HMI, etc)
!CALL MAP_OTHER

!!! Start axis handling buffers and any other required buffers
BLOCK
	START 1,1
	!START 2,1
	!START 3,1
	!START 4,1
	!START 5,1
	!START 6,1
	!START 7,1
	!START 8,1
	!START 9,1
	!START 10,1
	!START 11,1
	!START 12,1
	!START 13,1
	!START 14,1
	!START 15,1
	!START 16,1
	!START 17,1
	!START 18,1
	!START 19,1
	START 20,1
	!START 21,1
	!START 22,1
	!START 23,1
	!START 24,1
	!START 25,1
	!START 26,1
	!START 27,1
	!START 28,1
	!START 29,1
	!START 30,1
	!START 31,1
END

!!! Turn autoroutines back on
BLOCK
	PFLAGS(1).#NOAUTO = 0
	PFLAGS(2).#NOAUTO = 0
	PFLAGS(3).#NOAUTO = 0
	PFLAGS(4).#NOAUTO = 0
	PFLAGS(5).#NOAUTO = 0
	PFLAGS(6).#NOAUTO = 0
	PFLAGS(7).#NOAUTO = 0
	PFLAGS(8).#NOAUTO = 0
	PFLAGS(9).#NOAUTO = 0
	PFLAGS(10).#NOAUTO = 0
	PFLAGS(11).#NOAUTO = 0
	PFLAGS(12).#NOAUTO = 0
	PFLAGS(13).#NOAUTO = 0
	PFLAGS(14).#NOAUTO = 0
	PFLAGS(15).#NOAUTO = 0
	PFLAGS(16).#NOAUTO = 0
	PFLAGS(17).#NOAUTO = 0
	PFLAGS(18).#NOAUTO = 0
	PFLAGS(19).#NOAUTO = 0
	PFLAGS(20).#NOAUTO = 0
	PFLAGS(21).#NOAUTO = 0
	PFLAGS(22).#NOAUTO = 0
	PFLAGS(23).#NOAUTO = 0
	PFLAGS(24).#NOAUTO = 0
	PFLAGS(25).#NOAUTO = 0
	PFLAGS(26).#NOAUTO = 0
	PFLAGS(27).#NOAUTO = 0
	PFLAGS(28).#NOAUTO = 0
	PFLAGS(29).#NOAUTO = 0
	PFLAGS(30).#NOAUTO = 0
	PFLAGS(31).#NOAUTO = 0
END

!invert direction of Z axis
MFLAGS(z).#INVDOUT = 1

STOP

MAP_AXIS1:
	AXIS = 1
	!!! Map inputs
	ECIN(38, SW(AXIS)) ! statusword
	ECIN(36, MoOD(AXIS)) ! modes of operation display
	!ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(26, F_POS(AXIS)) ! feedback position
	ECIN(32, P_ERR(AXIS)) ! position error
	!ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	!ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	!ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	!ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(38, CW(AXIS)) ! controlword
	ECOUT(36, MoO(AXIS)) ! modes of operation
	!ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(26, R_POS(AXIS)) ! reference position
	!ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	!ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS0:
	AXIS = 0
	!!! Map inputs
	ECIN(70, SW(AXIS)) ! statusword
!	ECIN(36, MoOD(AXIS)) ! modes of operation display
	ECIN(58, D_IN(AXIS)) ! digital inputs
	ECIN(46, F_POS(AXIS)) ! feedback position
	ECIN(62, P_ERR(AXIS)) ! position error
!	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
!	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
!	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
!	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 2 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(46, CW(AXIS)) ! controlword
!	ECOUT(36, MoO(AXIS)) ! modes of operation
	ECOUT(56, D_OUT(AXIS)) ! digital outputs
!	ECOUT(0, R_POS(AXIS)) ! reference position
!	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
!	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function

RET

MAP_AXIS2:
	AXIS = 2
	!!! Map inputs
	ECIN(84, SW(AXIS)) ! statusword
	ECIN(86, MoOD(AXIS)) ! modes of operation display
	ECIN(87, D_IN(AXIS)) ! digital inputs
	ECIN(91, F_POS(AXIS)) ! feedback position
	ECIN(95, P_ERR(AXIS)) ! position error
	ECIN(99, F_TORQUE(AXIS)) ! feedback torque
	!ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	!ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	!ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(84, CW(AXIS)) ! controlword
	ECOUT(86, MoO(AXIS)) ! modes of operation
	ECOUT(87, D_OUT(AXIS)) ! digital outputs
	ECOUT(89, R_POS(AXIS)) ! reference position
	ECOUT(93, R_TORQUE(AXIS)) ! reference torque
	!ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS3:
	AXIS = 3
	!!! Map inputs
	ECIN(145, SW(AXIS)) ! statusword
	ECIN(147, MoOD(AXIS)) ! modes of operation display
	ECIN(148, D_IN(AXIS)) ! digital inputs
	ECIN(152, F_POS(AXIS)) ! feedback position
	ECIN(156, P_ERR(AXIS)) ! position error
	ECIN(160, F_TORQUE(AXIS)) ! feedback torque
	!ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	!ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	!ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(120, CW(AXIS)) ! controlword
	ECOUT(122, MoO(AXIS)) ! modes of operation
	ECOUT(123, D_OUT(AXIS)) ! digital outputs
	ECOUT(127, R_POS(AXIS)) ! reference position
	ECOUT(131, R_TORQUE(AXIS)) ! reference torque
	!ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS4:
	AXIS = 4
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS5:
	AXIS = 5
	!!! Map inputs
	ECIN(ECGETOFFSET("Status word", 0), SW(AXIS)) ! statusword
	ECIN(ECGETOFFSET("Operation mode display", 0), MoOD(AXIS)) ! modes of operation display
	!ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(ECGETOFFSET("Position actual value", 0), F_POS(AXIS)) ! feedback position
	ECIN(ECGETOFFSET("Following error", 0), P_ERR(AXIS)) ! position error
	!ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	!ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	!ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	!ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(ECGETOFFSET("Control word", 0), CW(AXIS)) ! controlword
	ECOUT(ECGETOFFSET("Operation mode", 0), MoO(AXIS)) ! modes of operation
	!ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(ECGETOFFSET("Position demand value", 0), R_POS(AXIS)) ! reference position
	!ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	!ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS6:
	AXIS = 6
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS7:
	AXIS = 7
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS8:
	AXIS = 8
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS9:
	AXIS = 9
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS10:
	AXIS = 10
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS11:
	AXIS = 11
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS12:
	AXIS = 12
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS13:
	AXIS = 13
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS14:
	AXIS = 14
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS15:
	AXIS = 15
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS16:
	AXIS = 16
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS17:
	AXIS = 17
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS18:
	AXIS = 18
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS19:
	AXIS = 19
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS20:
	AXIS = 20
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS21:
	AXIS = 21
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS22:
	AXIS = 22
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS23:
	AXIS = 23
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS24:
	AXIS = 24
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS25:
	AXIS = 25
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS26:
	AXIS = 26
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS27:
	AXIS = 27
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS28:
	AXIS = 28
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS29:
	AXIS = 29
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS30:
	AXIS = 30
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET

MAP_AXIS31:
	AXIS = 31
	!!! Map inputs
	ECIN(0, SW(AXIS)) ! statusword
	ECIN(0, MoOD(AXIS)) ! modes of operation display
	ECIN(0, D_IN(AXIS)) ! digital inputs
	ECIN(0, F_POS(AXIS)) ! feedback position
	ECIN(0, P_ERR(AXIS)) ! position error
	ECIN(0, F_TORQUE(AXIS)) ! feedback torque
	ECIN(0, T_PROBE_STATUS(AXIS)) ! touch probe status
	ECIN(0, T_PROBE_POS(AXIS)) ! touch probe positive value
	ECIN(0, T_PROBE_NEG(AXIS)) ! touch probe negative value
	
	!!! Initialize outputs
	CW(AXIS) = 0
	MoO(AXIS) = 8 ! CSP mode
	D_OUT(AXIS) = 0
	R_POS(AXIS) = F_POS(AXIS)
	R_TORQUE(AXIS) = 0
	
	!!! Map outputs
	ECOUT(0, CW(AXIS)) ! controlword
	ECOUT(0, MoO(AXIS)) ! modes of operation
	ECOUT(0, D_OUT(AXIS)) ! digital outputs
	ECOUT(0, R_POS(AXIS)) ! reference position
	ECOUT(0, R_TORQUE(AXIS)) ! reference torque
	ECOUT(0, T_PROBE_FUNC(AXIS)) ! touch probe function
RET


MAP_OTHER:

RET


#1
!!!!!!! CiA402 Homing / CSP / Generic Code !!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!
!!! After initialization, this buffer code needs to 
!!! run continuously for proper low level operation 
!!! of CiA402 drive.
!!!
!!!

! Mask faults from AKD drive (axis 0)
! FMASK(0).#SP=0

!!! Variable Declaration
INT AXIS
INT SLAVE_ID
INT MoO_Latch
REAL E_OFFSET_LATCH
REAL TIMER
INT HOME_COUNTER
INT FAULT_CLEAR_COUNTER

GLOBAL INT ENABLE_AXIS(32)

!!! Variable Initialization
AXIS = 5
SLAVE_ID = 0

!!! Disable axis
DISABLE (AXIS)
CW(AXIS) = 0
M_ST(AXIS).#ENABLED = 0
M_ST(AXIS).#OPEN = 0
M_ST(AXIS).31 = 0
HOME_COUNTER = 0
FAULT_CLEAR_COUNTER = 0

!!! Motion Parameter Initialization
EFAC(AXIS) = 0.08/POW(2,20) ! meters, 8 cm /rev & 2^20 count/rev encoder
VEL(AXIS) = 0.2
ACC(AXIS) = 0.5
DEC(AXIS) = 0.5
JERK(AXIS) = 5
KDEC(AXIS) = 2
XVEL(AXIS) = 3
XACC(AXIS) = 2
FMASK(AXIS) = POW(2,16)
DCOM(AXIS) = 0
!E_OFFSET(AXIS) = 0
!E_OFFSET_LATCH = 0

!!! Fault Parameter Initialization
CERRI(AXIS) = 50

!!! Homing Parameters Initialization
!COEWRITE/1 (SLAVE_ID,0x6098,0,1)        ! Homing method
!COEWRITE/4 (SLAVE_ID,0x607C,0,0)         ! Homing offset
!COEWRITE/4 (SLAVE_ID,0x6099,1,VEL(AXIS)/EFAC(AXIS)) ! Homing velocity, fast
!COEWRITE/4 (SLAVE_ID,0x6099,2,VEL(AXIS)/EFAC(AXIS)) ! Homing velocity, slow
!COEWRITE/4 (SLAVE_ID,0x609A,0,ACC(AXIS)/EFAC(AXIS)) ! Homing acceleration


!!! Main Running Loop
MoO_Latch = MoO(AXIS)
WHILE 1; BLOCK

	IF (E_OFFSET(AXIS) <> E_OFFSET_LATCH)
		SET APOS(AXIS) = R_POS(AXIS) * EFAC(AXIS) + E_OFFSET(AXIS)
		E_OFFSET_LATCH = E_OFFSET(AXIS)
	END
	
	IF (MST(AXIS).#ENABLED = 0)
		! User commanded axis to be disabled
		! CiA Switch on disabled
		CW(AXIS).0 = 0 ! Switch on, off
		CW(AXIS).1 = 0 ! Enable voltage, off 
		CW(AXIS).2 = 0 ! Quick stop, activated (opposite logic)
		CW(AXIS).3 = 0 ! Enable operation, off
		CW(AXIS).4 = 0 ! Operation mode specific, off
		IF (SW(AXIS).3 = 1)
			FAULT_CLEAR_COUNTER = FAULT_CLEAR_COUNTER + 1
			IF (FAULT_CLEAR_COUNTER > 1000)
				CW(AXIS).7 = ^CW(AXIS).7
				FAULT_CLEAR_COUNTER = 0
			END
		ELSE
			FAULT_CLEAR_COUNTER = 0
		END
		CW(AXIS).11 = 0 ! S700 homing mode specific
		R_POS(AXIS) = F_POS(AXIS) ! Set reference position as feeback position
		SET APOS(AXIS) = R_POS(AXIS) * EFAC(AXIS) + E_OFFSET(AXIS) ! Update axis position according to reference position
		HOME_COUNTER = 0
		!DISP "CiA Switch on disabled"
		
	ELSEIF (SW(AXIS).3 = 1) ! Fault, on
		! CiA Fault
		DISABLE (AXIS), 5019
		CW(AXIS).0 = 0 ! Switch on, off
		CW(AXIS).1 = 0 ! Enable voltage, off 
		CW(AXIS).2 = 0 ! Quick stop, activated (opposite logic)
		CW(AXIS).3 = 0 ! Enable operation, off
		CW(AXIS).4 = 0 ! Operation mode specific, off
		CW(AXIS).7 = 1
		CW(AXIS).11 = 0 ! S700 homing mode specific
		R_POS(AXIS) = F_POS(AXIS) ! Set reference position as feeback position
		SET APOS(AXIS) = R_POS(AXIS) * EFAC(AXIS) + E_OFFSET(AXIS) ! Update axis position according to reference position
		!DISP "CiA Fault"
		
	ELSEIF (SW(AXIS).0 = 0) ! Ready to switch on, off
		! User commanded axis to be enabled, step 1
		! CiA move to Ready to switch on
		CW(AXIS).0 = 0 ! Switch on, off
		CW(AXIS).1 = 1 ! Enable voltage, on
		CW(AXIS).2 = 1 ! Quick stop, deactivated (opposite logic)
		CW(AXIS).3 = 0 ! Enable operation, off
		CW(AXIS).4 = 0 ! Operation mode specific, off
		CW(AXIS).7 = 0 ! Fault reset, off
		CW(AXIS).11 = 0 ! S700 homing mode specific
		R_POS(AXIS) = F_POS(AXIS) ! Set reference position as feeback position
		IF (MST(AXIS).#ENABLED = 0)
			SET APOS(AXIS) = R_POS(AXIS) * EFAC(AXIS) + E_OFFSET(AXIS) ! Update axis position according to reference position
		END
		DISP "CiA move to Ready to switch on"
		
	ELSEIF (SW(AXIS).1 = 0) ! Switched on, off
		! User commanded axis to be enabled, step 2
		! CiA move to Switched on
		CW(AXIS).0 = 1 ! Switch on, on
		CW(AXIS).1 = 1 ! Enable voltage, on
		CW(AXIS).2 = 1 ! Quick stop, deactivated (opposite logic)
		CW(AXIS).3 = 0 ! Enable operation, off
		CW(AXIS).4 = 0 ! Operation mode specific, off
		CW(AXIS).7 = 0 ! Fault reset, off
		CW(AXIS).11 = 0 ! S700 homing mode specific
		R_POS(AXIS) = F_POS(AXIS) ! Set reference position as feeback position
		IF (MST(AXIS).#ENABLED = 0)
			SET APOS(AXIS) = R_POS(AXIS) * EFAC(AXIS) + E_OFFSET(AXIS) ! Update axis position according to reference position
		END
		DISP "CiA move to Switched on"
		
	ELSEIF (SW(AXIS).2 = 0) ! Operation enabled, off
		! User commanded axis to be enabled, step 3
		! CiA move to Operation enabled
		CW(AXIS).0 = 1 ! Switch on, on
		CW(AXIS).1 = 1 ! Enable voltage, on
		CW(AXIS).2 = 1 ! Quick stop, deactivated (opposite logic)
		CW(AXIS).3 = 1 ! Enable operation, on
		CW(AXIS).4 = 0 ! Operation mode specific, off
		CW(AXIS).7 = 0 ! Fault reset, off
		CW(AXIS).11 = 0 ! S700 homing mode specific
		R_POS(AXIS) = F_POS(AXIS) ! Set reference position as feeback position
		IF (MST(AXIS).#ENABLED = 0)
			SET APOS(AXIS) = R_POS(AXIS) * EFAC(AXIS) + E_OFFSET(AXIS) ! Update axis position according to reference position
		END
		DISP "CiA move to Operation enabled"
	
	ELSEIF (SW(AXIS).12 = 0) ! Operation mode specific, off
		! User commanded axis to be enabled, step 4
		! CiA operation mode specific step
		CW(AXIS).0 = 1 ! Switch on, on
		CW(AXIS).1 = 1 ! Enable voltage, on
		CW(AXIS).2 = 1 ! Quick stop, deactivated (opposite logic)
		CW(AXIS).3 = 1 ! Enable operation, on
		CW(AXIS).4 = 1 ! Operation mode specific, on
		CW(AXIS).7 = 0 ! Fault reset, off
		CW(AXIS).11 = 0 ! S700 homing mode specific
		R_POS(AXIS) = F_POS(AXIS) ! Set reference position as feeback position
		IF (MST(AXIS).#ENABLED = 0)	
			SET APOS(AXIS) = R_POS(AXIS) * EFAC(AXIS) + E_OFFSET(AXIS) ! Update axis position according to reference position
		END
		DISP "CiA operation mode specific step"
		
	ELSE
		IF ((MoOD(AXIS) = 8) & (M_ST(AXIS).#ENABLED = 1)) ! CSP mode and enabled
			! update reference position according to axis position
			! need to handle roll-over for when R_POS goes beyond +/- 2^31
			R_POS(AXIS) = ROLL((APOS(AXIS) - E_OFFSET(AXIS)) / EFAC(AXIS) + 2147483648, 4294967296) - 2147483648
			IF ((SW(AXIS).13 = 1)&(SW(AXIS).11 = 0)) ! CSP mode specific following error, on
				DISABLE (AXIS), 5023
			END
			IF (SW(AXIS).11 = 1)
				IF (RVEL(AXIS) > 0)
					KILL (AXIS), 5010
				ELSE
					KILL (AXIS), 5011
				END
				!R_POS(AXIS) = F_POS(AXIS)
				!SET APOS(AXIS) = R_POS(AXIS) * EFAC(AXIS) + E_OFFSET(AXIS) ! Update axis position according to reference position
			END
			!DISP "CSP mode"
		ELSEIF ((MoOD(AXIS) = 6) & (M_ST(AXIS).#ENABLED = 1))
			! Homing mode
			CW(AXIS).4 = 1 ! Homing mode specific start, on
			CW(AXIS).11 = 1 ! S700 specific implementation detail
			R_POS(AXIS) = F_POS(AXIS) ! Set reference position as feeback position
			SET APOS(AXIS) = R_POS(AXIS) * EFAC(AXIS) + E_OFFSET(AXIS) ! Update axis position according to reference position
			IF (SW(AXIS).8 = 1) ! S700 Homing mode specific error, on
				DISABLE (AXIS), 5019
			ELSEIF (SW(AXIS).10 = 1) ! S700 Homing mode specific success, on
				HOME_COUNTER = HOME_COUNTER + 1
			END
			IF (HOME_COUNTER = 2)
				HOME_COUNTER = 0
				MoO(AXIS) = 8 ! Automatically change mode of operation to CSP
				MoO_Latch = 8 ! Update mode of operation latch to CSP
			END
		ELSE ! Unsupported modes
			R_POS(AXIS) = F_POS(AXIS) ! Set reference position as feeback position
			SET APOS(AXIS) = R_POS(AXIS) * EFAC(AXIS) + E_OFFSET(AXIS) ! Update axis position according to reference position
		END
	END
	
	! If mode of operation is changed, disable axis
	IF (MoO(AXIS) <> MoO_Latch)
		DISABLE (AXIS), 5004
		MoO_Latch = MoO(AXIS) ! update mode of operation latch
	END
	
	! Ready to switch on, switched on, and operation enabled
	IF ((SW(AXIS).0 = 1) & (SW(AXIS).1 = 1) & (SW(AXIS).2 = 1))
		! If all statusword bits are set, signal enabled
		M_ST(AXIS).#ENABLED = 1
	ELSE ! Else, signal disabled
		M_ST(AXIS).#ENABLED = 0
	END
	
	! In motion but not enabled
	IF ((RVEL(AXIS) <> 0) & (M_ST(AXIS).#ENABLED = 0))
		DISABLE (AXIS), 5005 ! disable axis
	END
	
	! User set axis enabled, set timer
	IF (EDGE(MST(AXIS).#ENABLED = 1))
		TIMER = TIME ! latch time
	END
	
	! Monitor timeout if axis doesn't get enabled within 500 msec
	IF ((MST(AXIS).#ENABLED = 1) & (M_ST(AXIS).#ENABLED = 0) & (TIME > (TIMER+500)))
		DISABLE (AXIS), 5019
	END
	
	! Update position error, in user units
	IF (MoO(AXIS) = 8) ! CSP mode, use position error from objection dictionary entry 0x60F4
		P_E(AXIS) = (P_ERR(AXIS)) * EFAC(AXIS)
	ELSE ! Other modes, use position error according to difference between reference and feedback
		P_E(AXIS) = (R_POS(AXIS) - F_POS(AXIS)) * EFAC(AXIS)
	END
	
END; END

STOP

ON PST(SYSINFO(3)).#RUN = 0; START SYSINFO(3), 1; RET

#2
! This buffer calls the tow drive's homing routine

GLOBAL INT homeCounter_tow

DISABLE tow

MoO(tow) = 6
TILL MoOD(tow) = 6
ENABLE (tow)
TILL MoOD(tow) = 8

! Set soft limits
FMASK5.#SRL = 1
SRLIMIT5 = 24.9
FMASK5.#SLL = 1
SLLIMIT5 = 0.0

homeCounter_tow = homeCounter_tow + 1

STOP

#3
! This program does a back and forth move on the tow axis

GLOBAL INT move
LOCAL INT iteration

ACC(tow) = 0.1
DEC(tow) = 0.1
VEL(tow) = 0.1
JERK(tow) = 1

move = 1

WHILE move
	ptp/r tow, 1.0 ! relative move
	ptp/r tow, -1.0 ! relative move
END

STOP

#4
! This program does a single point to point move in absolute coordinates
! If axis has been properly homed using buffer 2, 
! the platform is at 10.2 m, 26.1 is approximately max positive travel
! All units are in meters and seconds
! Remember to enable the axis before running!

local real target 	! Initialize variable target

ACC(tow) = 0.2
DEC(tow) = 0.2
VEL(tow) = 0.3
JERK(tow)= ACC(tow)*10

target = 9

ptp/e tow, target 	! Point-to-point move on axis 1, to 'target' /r makes move relative, /e is absolute

STOP

#5
! Jogging Program

global int JogMode
int AKD_Inputs 
real JogVel

JogVel = 0.2

ACC(tow) = 0.2
DEC(tow) = 0.3
JERK(tow) = ACC(tow)*10

JogMode = 1

WHILE JogMode=1 
	AKD_Inputs = COEREAD/4 (1,0x60fd,0)
	IF((AKD_Inputs & 65536) = 65536)
		DISP "JOG PLUS"
		JOG/v tow, JogVel
		TILL ((COEREAD/4 (1,0x60fd,0) & 65536) = 0)
		HALT tow
	END
	IF((AKD_Inputs & 131072) = 131072)
		DISP "JOG MINUS"
		JOG/v tow, -JogVel
		TILL ((COEREAD/4 (1,0x60fd,0) & 131072) = 0)
		HALT tow
	END
	
END

STOP

#6
! This program is for turbine towing, using the AKD to control turbine RPM

local real target, offset, tsr, U, rpm, tacc, endpos

tsr = 2.0
U = 1.0
rpm = tsr*U/0.5*60/6.28318530718

offset = 0 		! Offset caused by ADV traverse (m)
target = 24.5 	! Do not exceed 24.9 for traverse at x/D = 1
endpos = 0		! Where to move carriage at end of tow
tacc = 5		! Time (in seconds) for turbine angular acceleration

ACC(tow) = 1
DEC(tow) = 0.5
VEL(tow) = U
JERK(tow)= ACC(tow)*10

ACC(turbine) = rpm/tacc
VEL(turbine) = rpm
DEC(turbine) = ACC(turbine)
JERK(turbine)= ACC(turbine)*10

jog/v turbine, rpm
wait (tacc)*1000
ptp/e tow, target-offset
HALT(turbine)
VEL(tow) = 0.5
VEL(turbine) = 10
ptp tow, endpos
ptp/e turbine, 0

STOP

#7
! This program is a typical towing cycle with different velocities 
! for each half

local real target1, target2, vel1, vel2

target1 = 4
target2 = -4
vel1 = 0.5
vel2 = 0.5

ACC(tow) = 0.5
DEC(tow) = 0.5
JERK(tow)= ACC(tow)*10

VEL(tow) = vel1
ptp/e tow, target1
VEL(tow) = vel2
ptp/e tow, target2

STOP

#8
! This program initializes the parameters for the AKD (Turbine) axis
! Units are RPM and seconds
! 1 FPOS unit = 6 degrees
! DO NOT PUT ANY MOTION COMMANDS IN THIS BUFFER
global int homeCounter_AKD

DISABLE(turbine)

EFAC(turbine) = 60/(20*(POW(2,20)))
VEL(turbine) = 10
ACC(turbine) = 10
DEC(turbine) = 10
KDEC(turbine) = 20
JERK(turbine) = 100

SLPMAX(turbine) = 60
SLPMIN(turbine) = 0
MFLAGS(turbine).#MODULO = 1

SET FPOS(turbine) = 0
SET RPOS(turbine) = 0
SET APOS(turbine) = 0

homeCounter_AKD = homeCounter_AKD + 1

ENABLE(turbine)

STOP

#9
! This buffer is a test for the turbine axis
GLOBAL INT homeCounter_AKD
REAL tsr, U, rpm, tacc

tsr = 1.9
U = 1
rpm = tsr*U/0.5*60/6.28318530718
tacc = 2

ACC(turbine) = rpm/tacc
DEC(turbine) = ACC(turbine)
VEL(turbine) = rpm
JERK(turbine) = ACC(turbine)*10

IF homeCounter_AKD > 0
	jog/v turbine, rpm
END

WAIT 32*1000
! HALT turbine
ptp/e turbine, 60

STOP

#10
! Jogging Program for traverse's z axis

global int JogMode_z
int AKD_Inputs 
real JogVel

enable z
JogVel = 0.015

ACC(z) = 100
DEC(z) = 100
JERK(z) = 1000

JogMode_z = 1

WHILE JogMode_z 
	AKD_Inputs = COEREAD/4 (1,0x60fd,0)
	IF((AKD_Inputs & 65536) = 65536)
		DISP "JOG MINUS"
		JOG/v z, -JogVel
		TILL ((COEREAD/4 (1,0x60fd,0) & 65536) = 0)
		HALT z
	END
	IF((AKD_Inputs & 131072) = 131072)
		DISP "JOG PLUS"
		JOG/v z, JogVel
		TILL ((COEREAD/4 (1,0x60fd,0) & 131072) = 0)
		HALT z
	END
	
END

STOP

#11
! Homing for the z-axis
! 1.183 is with the Vectrino out of the water

global int homeCounter_z
real jogvel, offset

enable z
offset = -0.0360 ! -0.00287 for previous setting, -0.0360 revised

jogvel = 0.015
VEL(z) = jogvel
ACC(z) = 100
DEC(z) = 100
JERK(z) = 1000


JOG/v z, -jogvel
TILL FAULT(1).#LL = 1
KILL(z)
FCLEAR(z)
DISABLE(z)

SET RPOS(z) = offset

ENABLE z

homeCounter_z = homeCounter_z + 1

STOP

#12
! Homing for the y-axis

global int homeCounter_y
local real jogvel, offset

enable y
offset = -1.5263

jogvel = 0.015
VEL(y) = jogvel
ACC(y) = 100
DEC(y) = 100
JERK(y) = 1000


JOG/v 0, -jogvel
TILL FAULT(0).#LL = 1
KILL(y)
FCLEAR(y)
DISABLE(y)

SET RPOS(y) = offset

ENABLE y

homeCounter_y = homeCounter_y + 1

STOP

#13
! Jogging Program for traverse's y axis

global int JogMode_y
int AKD_Inputs 
real JogVel

enable y
JogVel = 0.02

ACC(y) = 100
DEC(y) = 100
JERK(y) = 1000

JogMode_y = 1

WHILE JogMode_y 
	AKD_Inputs = COEREAD/4 (1,0x60fd,0)
	IF((AKD_Inputs & 65536) = 65536)
		DISP "JOG MINUS"
		JOG/v y, -JogVel
		TILL ((COEREAD/4 (1,0x60fd,0) & 65536) = 0)
		HALT y
	END
	IF((AKD_Inputs & 131072) = 131072)
		DISP "JOG PLUS"
		JOG/v y, JogVel
		TILL ((COEREAD/4 (1,0x60fd,0) & 131072) = 0)
		HALT y
	END
	
END

#14
! This program does a back and forth move on the traverse y axis

global int DoWork
local int iteration

ACC(y) = 0.05
DEC(y) = 0.05
VEL(y) = 0.02
JERK(y) = 5

DoWork=1

while DoWork
	ptp/re y, 0.1 ! relative move
	ptp/re y, -0.1 ! relative move
	
	! ptp/e 1, 2
	! ptp/e 1, 0
	
END

STOP

#15
! Circular motion using the y- and z-axes
! To stop just type "move = 0" in the terminal
! z = 1.44 m is nice and out of the water

GLOBAL INT move, homeCounter_y, homeCounter_z
LOCAL REAL velocity
move = 1
velocity = 0.026

IF homeCounter_y < 1
	START 12, 1
END

IF homeCounter_z < 1
	START 11, 1
END

TILL homeCounter_y > 0 & homeCounter_z > 0

VEL(0) = velocity
VEL(1) = velocity
ACC(0) = 0.02
DEC(0) = 0.02
ACC(1) = 0.02
DEC(1) = 0.02

ENABLE y
ENABLE z

PTP/e (0,1), 0, 0.8
START 3, 1 ! Starts reciprocating motion on tow axis (buffer 3)

MSEG/c (0,1), 0, 0.8
ARC1 (0,1), 0, 0.7, 0, 0.8,-
ENDS (0,1)

TILL move <> 1

HALT(0,1,5)
PTP (0,1), 0, 0.8
PTP tow, 0

STOP

#16
! This program just sets move = 0 
! Just used for the demo
GLOBAL INT move

move = 0

STOP

#17

! AUTO-GENERATED -- CHANGES WILL BE OVERWRITTEN
! Here we will try to continuously collect data from the INF4
global int inf4_data(8)(100) ! 8 columns and 100 rows
global int collect_data
global real start_time
local int sample_period_ms
sample_period_ms = 2
global real ch1_force, ch2_force, ch3_force, ch4_force
global real inf4_data_processed(5)(100)

local int subtract_value
subtract_value = 16777215
local int sign_value

ECIN(ECGETOFFSET("1 Byte In (0)", 4), DI0) ! CH1, Byte 1 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (1)", 4), DI1) ! CH1, Byte 2 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (2)", 4), DI2) ! CH1, Byte 3 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (3)", 4), DI3) ! CH1, Byte 4 in Hi-Res Mode

ECIN(ECGETOFFSET("1 Byte In (4)", 4), DI4) ! CH2, Byte 1 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (5)", 4), DI5) ! CH2, Byte 2 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (6)", 4), DI6) ! CH2, Byte 3 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (7)", 4), DI7) ! CH2, Byte 4 in Hi-Res Mode

ECIN(ECGETOFFSET("1 Byte In (8)", 4), DI8) ! CH3, Byte 1 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (9)", 4), DI9) ! CH3, Byte 2 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (10)", 4), DI10) ! CH3, Byte 3 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (11)", 4), DI11) ! CH3, Byte 4 in Hi-Res Mode

ECIN(ECGETOFFSET("1 Byte In (12)", 4), DI12) ! CH4, Byte 1 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (13)", 4), DI13) ! CH4, Byte 2 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (14)", 4), DI14) ! CH4, Byte 3 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (15)", 4), DI15) ! CH4, Byte 4 in Hi-Res Mode

ECIN(ECGETOFFSET("1 Byte In (16)", 4), DI16) ! Digital Outputs 1st Byte in Default Mode
ECIN(ECGETOFFSET("1 Byte In (17)", 4), DI17) ! Digital Outputs 2nd Byte in Default Mode

! Mapping all digital outputs from INF4 to ASCPL+ variables

ECOUT(ECGETOFFSET("1 Byte Out (0)", 4), DO0) ! Command Register 1st Byte
ECOUT(ECGETOFFSET("1 Byte Out (1)", 4), DO1) ! Command Register 2nd Byte

ECOUT(ECGETOFFSET("1 Byte Out (2)", 4), DO2) ! Digital Outputs Command 1st Byte
ECOUT(ECGETOFFSET("1 Byte Out (3)", 4), DO3) ! Digital Outputs Command 2nd Byte

ECOUT(ECGETOFFSET("1 Byte Out (4)", 4), DO4) ! Exchange Register 1st Byte
ECOUT(ECGETOFFSET("1 Byte Out (5)", 4), DO5) ! Exchange Register 2nd Byte
ECOUT(ECGETOFFSET("1 Byte Out (6)", 4), DO6) ! Exchange Register 3rd Byte
ECOUT(ECGETOFFSET("1 Byte Out (7)", 4), DO7) ! Exchange Register 4th Byte

! Put into high res mode
DO1 = 25

BLOCK
    ! Define start time from now
    start_time = TIME
    collect_data = 1
    ! TODO: We probably want to collect FPOS and FVEL from the AFT axis as well
    DC/c inf4_data_processed, 100, sample_period_ms, TIME, ch1_force, ch2_force, ch3_force, ch4_force
END

! Continuously compute processed force values from the INF4
WHILE collect_data
    BLOCK
        ! Compute all force values in the same controller cycle
        ! Channel 1
        ch1_force = (DI1 * POW(2,16)) | (DI2 * POW(2,8)) | DI3
        if DI0
            sign_value = -1
            ch1_force = subtract_value - ch1_force
        else
            sign_value = 1
        end
        ! Convert to mV
        ch1_force = 5e-6 * ch1_force
        ! Convert to engineering units [N-m]
        ch1_force = ch1_force * 15.7085561 * sign_value
        
        ! Channel 2
        ch2_force = (DI5 * POW(2,16)) | (DI6 * POW(2,8)) | DI7
        if DI4
            sign_value = -1
            ch2_force = subtract_value - ch2_force
        else
            sign_value = 1
        end
        ! Convert to mV
        ch2_force = 5e-6 * ch2_force 
        ! Convert to engineering units [N-m]
        ch2_force = ch2_force * 15.7617411 * sign_value
        
        ! Channel 3
        ch3_force = (DI9 * POW(2,16)) | (DI10 * POW(2,8)) | DI11
        if DI8
            sign_value = 1
            ch3_force = subtract_value - ch3_force
        else
            sign_value = -1
        end
        ! Convert to mV
        ch3_force = 5e-6 * ch3_force
        ! Convert to engineering units [N]
        ch3_force = ch3_force * 390.354011 * sign_value

        ! Channel 4
        ch4_force = (DI13 * POW(2,16)) | (DI14 * POW(2,8)) | DI15
        if DI12
            sign_value = -1
            ch4_force = subtract_value - ch4_force
        else
            sign_value = 1
        end
        ! Convert to mV
        ch4_force = 5e-6 * ch4_force
        ! Convert to engineering units [N-m]
        ch4_force = ch4_force * 23.0479813 * sign_value
    END
END

STOPDC
STOP
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  

#18
REAL trigger_pos

trigger_pos = 4.0

WHILE 1
	IF RPOS(5) > trigger_pos
		OUT1.16 = 1
	ELSE
		OUT1.16 = 0
	END
END

STOP

#19
local real target, tsr, U, rpm, tacc, endpos, tzero 
global real data(3)(100) 
global real start_time 
global int collect_data 
collect_data = 0 
 
tsr = 1.9
U = 1.2

rpm = tsr*U/0.5*60/6.28318530718

target = 24.5   ! Do not exceed 24.9 for traverse at x/D = 1
endpos = 0      ! Where to move carriage at end of tow
tacc = 5        ! Time (in seconds) for turbine angular acceleration
tzero = 2.5       ! Time (in seconds) to wait before starting

VEL(5) = 0.5
ptp/e 5, 0

ACC(5) = 1
DEC(5) = 0.5
VEL(5) = U
JERK(5)= ACC(5)*10

! Set modulo on turbine axis (only needed if using simulator)
! DISABLE 4
! SLPMAX(4) = 60
! SLPMIN(4) = 0
! MFLAGS(4).#MODULO = 1

ACC(4) = rpm/tacc
VEL(4) = rpm
DEC(4) = ACC(4)
JERK(4)= ACC(4)*10

! Move turbine to zero if necessary
if RPOS(4) <> 60 & RPOS(4) <> 0
    ptp 4, 0
end

! Allow oscillations in shaft to damp out
wait 3000

! Start controller data acquisition and send trigger pulse in same cycle
BLOCK
    ! Define start time from now
    start_time = TIME
    collect_data = 1
    DC/c data, 100, 1.0, TIME, FVEL(5), FVEL(4)
    ! Send trigger pulse for data acquisition
    OUT1.16 = 0
END

wait tzero*1000
jog/v 4, rpm
wait tacc*1000
ptp/e 5, target
HALT(4)
VEL(5) = 0.5
VEL(4) = 10
ptp 4, 0
ptp/e 5, 0
STOPDC
collect_data = 0
OUT1.16 = 1

STOP
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    

#20
! Here we will continuously process data from the INF4
global real ch1_force, ch2_force, ch3_force, ch4_force

local int subtract_value
subtract_value = 16777215
local int sign_value

ECIN(ECGETOFFSET("1 Byte In (0)", 4), DI0) ! CH1, Byte 1 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (1)", 4), DI1) ! CH1, Byte 2 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (2)", 4), DI2) ! CH1, Byte 3 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (3)", 4), DI3) ! CH1, Byte 4 in Hi-Res Mode

ECIN(ECGETOFFSET("1 Byte In (4)", 4), DI4) ! CH2, Byte 1 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (5)", 4), DI5) ! CH2, Byte 2 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (6)", 4), DI6) ! CH2, Byte 3 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (7)", 4), DI7) ! CH2, Byte 4 in Hi-Res Mode

ECIN(ECGETOFFSET("1 Byte In (8)", 4), DI8) ! CH3, Byte 1 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (9)", 4), DI9) ! CH3, Byte 2 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (10)", 4), DI10) ! CH3, Byte 3 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (11)", 4), DI11) ! CH3, Byte 4 in Hi-Res Mode

ECIN(ECGETOFFSET("1 Byte In (12)", 4), DI12) ! CH4, Byte 1 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (13)", 4), DI13) ! CH4, Byte 2 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (14)", 4), DI14) ! CH4, Byte 3 in Hi-Res Mode
ECIN(ECGETOFFSET("1 Byte In (15)", 4), DI15) ! CH4, Byte 4 in Hi-Res Mode

ECIN(ECGETOFFSET("1 Byte In (16)", 4), DI16) ! Digital Outputs 1st Byte in Default Mode
ECIN(ECGETOFFSET("1 Byte In (17)", 4), DI17) ! Digital Outputs 2nd Byte in Default Mode

! Mapping all digital outputs from INF4 to ASCPL+ variables

ECOUT(ECGETOFFSET("1 Byte Out (0)", 4), DO0) ! Command Register 1st Byte
ECOUT(ECGETOFFSET("1 Byte Out (1)", 4), DO1) ! Command Register 2nd Byte

ECOUT(ECGETOFFSET("1 Byte Out (2)", 4), DO2) ! Digital Outputs Command 1st Byte
ECOUT(ECGETOFFSET("1 Byte Out (3)", 4), DO3) ! Digital Outputs Command 2nd Byte

ECOUT(ECGETOFFSET("1 Byte Out (4)", 4), DO4) ! Exchange Register 1st Byte
ECOUT(ECGETOFFSET("1 Byte Out (5)", 4), DO5) ! Exchange Register 2nd Byte
ECOUT(ECGETOFFSET("1 Byte Out (6)", 4), DO6) ! Exchange Register 3rd Byte
ECOUT(ECGETOFFSET("1 Byte Out (7)", 4), DO7) ! Exchange Register 4th Byte

! Put into high res mode
DO1 = 25

! Continuously compute processed force values from the INF4
WHILE 1
    BLOCK
        ! Compute all force values in the same controller cycle
        ! Channel 1
        ch1_force = (DI1 * POW(2,16)) | (DI2 * POW(2,8)) | DI3
        if DI0
            sign_value = -1
            ch1_force = subtract_value - ch1_force
        else
            sign_value = 1
        end
        ! Convert to mV
        ch1_force = 5e-6 * ch1_force
        ! Convert to engineering units [N-m]
        ch1_force = ch1_force * 15.7085561 * sign_value
        
        ! Channel 2
        ch2_force = (DI5 * POW(2,16)) | (DI6 * POW(2,8)) | DI7
        if DI4
            sign_value = -1
            ch2_force = subtract_value - ch2_force
        else
            sign_value = 1
        end
        ! Convert to mV
        ch2_force = 5e-6 * ch2_force 
        ! Convert to engineering units [N-m]
        ch2_force = ch2_force * 15.7617411 * sign_value
        
        ! Channel 3
        ch3_force = (DI9 * POW(2,16)) | (DI10 * POW(2,8)) | DI11
        if DI8
            sign_value = 1
            ch3_force = subtract_value - ch3_force
        else
            sign_value = -1
        end
        ! Convert to mV
        ch3_force = 5e-6 * ch3_force
        ! Convert to engineering units [N]
        ch3_force = ch3_force * 390.354011 * sign_value

        ! Channel 4
        ch4_force = (DI13 * POW(2,16)) | (DI14 * POW(2,8)) | DI15
        if DI12
            sign_value = -1
            ch4_force = subtract_value - ch4_force
        else
            sign_value = 1
        end
        ! Convert to mV
        ch4_force = 5e-6 * ch4_force
        ! Convert to engineering units [N-m]
        ch4_force = ch4_force * 23.0479813 * sign_value
    END
END

STOP

#A
!axisdef X=0,Y=1,Z=2,T=3,A=4,B=5,C=6,D=7
!axisdef x=0,y=1,z=2,t=3,a=4,b=5,c=6,d=7
global int I(100),I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I90,I91,I92,I93,I94,I95,I96,I97,I98,I99
global real V(100),V0,V1,V2,V3,V4,V5,V6,V7,V8,V9,V90,V91,V92,V93,V94,V95,V96,V97,V98,V99

global int DI0, DI1, DI2, DI3, DI4, DI5, DI6, DI7, DI8, DI9, DI10, DI11, DI12, DI13, DI14, DI15, DI16, DI17
global int DO0, DO1, DO2, DO3, DO4, DO5, DO6, DO7

axisdef tow=5, turbine=4, y=0, z=1

!!! EtherCAT / CiA402 Variables
global int M_ST(32)           ! Motor state for 3rd party drives
global int CW(32)             ! CiA402 Controlword
global int SW(32)             ! CiA402 Statusword
global int MoO(32)            ! CiA402 Mode of operation
global int MoOD(32)           ! CiA402 Mode of operation display
global int R_POS(32)          ! CiA402 Reference Position
global int F_POS(32)          ! CiA402 Feedback Position
global int P_ERR(32)          ! CiA402 Position Error
global int R_TORQUE(32)       ! CiA402 Reference Torque
global int F_TORQUE(32)       ! CiA402 Feedback Torque
global int D_IN(32)           ! CiA402 Digital Inputs
global int D_OUT(32)          ! CiA402 Digital Outputs
global int T_PROBE_FUNC(32)   ! CiA402 Touch Probe Function
global int T_PROBE_STATUS(32) ! CiA402 Touch Probe Status
global int T_PROBE_POS(32)    ! CiA402 Touch Probe Positive Edge
global int T_PROBE_NEG(32)    ! CiA402 Touch Probe Negative Edge
global real E_OFFSET(32)      ! Encoder offset
global real P_E(32)           ! Position error
   

!!! PID Variables
GLOBAL REAL KD(32)
GLOBAL REAL KI(32)
GLOBAL REAL KP(32)
GLOBAL REAL ERR(32)
GLOBAL REAL PREV_ERR(32)
GLOBAL REAL KI_(32)
GLOBAL REAL KD_(32)
GLOBAL REAL LPF_A(32)
GLOBAL REAL LPF_F(32)
GLOBAL REAL D_COM(32)

!!! General Constants
GLOBAL REAL T
GLOBAL REAL PI

!!! FRF Variables
GLOBAL REAL EXCITE_AMP
GLOBAL REAL START_FRQ
GLOBAL REAL END_FRQ
GLOBAL REAL FRQ_PER_DECADE
GLOBAL REAL BODE_DATA(1000)(3)
GLOBAL REAL FRF_SINE_WAVE

!!! AKD digital I/O (already mapped to OUT1, so commented out
! GLOBAL INT AKD_IN, AKD_OUT

