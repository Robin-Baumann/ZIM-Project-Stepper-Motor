/*
 * TMC_4361A_Register_Settings.h
 *
 *  Created on: 23 Nov 2021
 *      Author: Robin Baumann
 */

#ifndef INC_TMC_4361A_REGISTER_SETTINGS_H_
#define INC_TMC_4361A_REGISTER_SETTINGS_H_

// Register access permissions:
//     0x00: none (reserved)
//     0x01: read
//     0x02: write
//     0x03: read/write
//     0x13: read/write, separate functions/values for reading or writing
//     0x23: read/write, holds read or write to clear flags
//     0x42: write, has hardware presets on reset
//     0x43: read/write, has hardware presets on reset
//     0x53: read/write, has hardware presets on reset, separate functions/values for reading or writing
static const uint8_t TMC4361A_RegisterAccess[128] =
{
//  0     1     2     3     4     5     6     7     8     9     A     B     C     D     E     F
	0x43, 0x03, 0x03, 0x03, 0x03, 0x03, 0x43, 0x43, 0x03, 0x03, 0x43, 0x43, 0x03, 0x03, 0x23, 0x01, // 0x00 - 0x0F
	0x03, 0x03, 0x43, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x43, 0x03, 0x03, 0x43, // 0x10 - 0x1F
	0x03, 0x03, 0x01, 0x01, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, // 0x20 - 0x2F
	0x03, 0x43, 0x03, 0x03, 0x03, 0x03, 0x13, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, // 0x30 - 0x3F
	0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, // 0x40 - 0x4F
	0x03, 0x13, 0x13, 0x42, 0x13, 0x02, 0x42, 0x42, 0x42, 0x03, 0x13, 0x13, 0x02, 0x13, 0x02, 0x02, // 0x50 - 0x5F
	0x02, 0x02, 0x42, 0x02, 0x00, 0x01, 0x01, 0x02, 0x02, 0x02, 0x01, 0x01, 0x13, 0x13, 0x01, 0x01, // 0x60 - 0x6F
	0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x13, 0x01, 0x13, 0x13, 0x02, 0x42, 0x01  // 0x70 - 0x7F
};

static const int32_t TMC4361A_defaultRegisterState[128] =
{
//		  0,   		 1,   		2,   	   3,   	  4,   		 5,   		6,   	   7,   	  8,   		 9,   		A,   	   B,   	  C,   		 D,   		E,   	   F
 0x00006020,0x00000000,0x00000000,0x00000000,0x4440004C,0x00000003,0x00000000,0x00000400,0x00000000,0x00000000,0x00FB0C80,0x82029805,0x00000000,0x00000000,		    0,         0, // 0x00 - 0x0F
 0x00040001,0x00000000,0x01000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00FF00FF,0x00000000,0x00000000,0x00000280, // 0x10 - 0x1F
 0x00000001,0x00000000,	       0,	       0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000, // 0x20 - 0x2F
 0x00000000,0x00927C00,0x00000000,0x00000000,0x00000000,0x00000000,	        0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000, // 0x30 - 0x3F
 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000, // 0x40 - 0x4F
 0x00000000,	     0,	        0,0xFFFFFFFF,	      0,0x00000000,0x00A000A0,0x00F00000,0x00000190,0x00000000,	        0,	       0,0x00000000,	     0,0x00000000,0x00000000, // 0x50 - 0x5F
 0x00000000,0x00000000,0x00FFFFFF,0x00000000,	      0,	     0,	        0,0x00000000,0x00000000,0x00000000,	        0,	       0,	      0,	     0,	        0,	       0, // 0x60 - 0x6F
 0xAAAAB554,0x4A9554AA,0x24492929,0x10104222,0xFBFFFFFF,0xB5BB777D,0x49295556,0x00404222,0xFFFF8056,	     0,	        0,	       0,	      0,0x00000000,0x00F70000,	       0 // 0x70 - 0x7F
};



#endif /* INC_TMC_4361A_REGISTER_SETTINGS_H_ */