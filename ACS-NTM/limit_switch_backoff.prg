#/ Controller version = 2.27
#/ Date = 1/7/2015 8:19 AM
#/ User remarks = 
#0
! UNH Tow Tank 

INT LeftLimit 
INT RightLimit 
INT BothLimits 

LeftLimit = COEREAD/1(1,0x60FD,0) !LeftLimit (Din4) is at Bit 3 (= 1 when not tripped (normally closed))
RightLimit = COEREAD/1(1,0x60FD,0) !RightLimit (Din3) is at Bit 4 (= 1 when not tripped (normally closed))
BothLimits = LeftLimit.3 & RightLimit.4

CALL QuickStopEnable	
CALL ReadDins

WHILE (BothLimits = 1) 	! If neither limit switch is hit, Bit 3 (Din4) and Bit 4 (Din3) are both high (switches are normally closed)
	! Allow Movement
	CALL ReadDins
END

IF (BothLimits = 0)	! If a limit switch is hit, value of BothLimits = 0
	CALL LimitsOff	! Change drive mode so motor can back off limit switch
	! Move off limit
END

STOP


QuickStopEnable: ! Quick Stop Mode prevents drive from faulting when limit is hit
COEWRITE/1(1,0X3568,0,27) ! Write 27 (Quick Stop) to IN3MODE (index 0x3568, subindex 0), Slave 1
COEWRITE/1(1,0X356B,0,27) ! Write 27 (Quick Stop) to IN4MODE (index 0x356B, subindex 0), Slave 1
RET


ReadDins:
LeftLimit = COEREAD/1(1,0x60FD,0)	!LeftLimit (Din4) is at bit 3 (= 1 when not tripped (normally closed))
RightLimit = COEREAD/1(1,0x60FD,0)	!RightLimit (Din3) is at bit 4 (= 1 when not tripped (normally closed))
BothLimits = LeftLimit.3 & RightLimit.4	!access bit 3 of LeftLimit and bit 4 of RightLimit
RET


LimitsOff:
COEWRITE/1(1,0X3568,0,0) ! Write value of 0 to IN3MODE (index 0x3568, subindex 0), Slave 1
						 ! so that drive will let motor move
COEWRITE/1(1,0X356B,0,0) ! Write value of 0 to IN4MODE (index 0x356B, subindex 0), Slave 1
						 ! so that drive will let motor move
RET





#A
!axisdef X=0,Y=1,Z=2,T=3,A=4,B=5,C=6,D=7
!axisdef x=0,y=1,z=2,t=3,a=4,b=5,c=6,d=7
global int I(100),I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I90,I91,I92,I93,I94,I95,I96,I97,I98,I99
global real V(100),V0,V1,V2,V3,V4,V5,V6,V7,V8,V9,V90,V91,V92,V93,V94,V95,V96,V97,V98,V99

