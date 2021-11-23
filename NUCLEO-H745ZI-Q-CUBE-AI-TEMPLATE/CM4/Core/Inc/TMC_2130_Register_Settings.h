/*
 * TMC_2130_Register_Settings.h
 *
 *  Created on: 23 Nov 2021
 *      Author: Robin Baumann
 */

#ifndef INC_TMC_2130_REGISTER_SETTINGS_H_
#define INC_TMC_2130_REGISTER_SETTINGS_H_

// Register access permissions:
//   0x00: none (reserved)
//   0x01: read
//   0x02: write
//   0x03: read/write
//   0x21: read, flag register (read to clear)
//   0x42: write, has hardware presets on reset
static const uint8_t TMC2130_RegisterAccess[128] =
{
//  0     1     2     3     4     5     6     7     8     9     A     B     C     D     E     F
	0x03, 0x21, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x00 - 0x0F
	0x02, 0x02, 0x01, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x10 - 0x1F
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, // 0x20 - 0x2F
	0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x30 - 0x3F
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x40 - 0x4F
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x50 - 0x5F
	0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x01, 0x01, 0x03, 0x02, 0x02, 0x01, // 0x60 - 0x6F
	0x42, 0x01, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00  // 0x70 - 0x7F
};

static const int32_t TMC2130_defaultRegisterState[128] =
{
//		  0,   		 1,   		2,   	   3,   	  4,   		 5,   		6,   	   7,   	  8,   		 9,   		A,   	   B,   	  C,   		 D,   		E,   	   F
 0x00000000,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,		    0,         0, // 0x00 - 0x0F
 0x00071703,0x00000000,         0,0x00000000,0x00000000,0x00000000,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0, // 0x10 - 0x1F
          0,         0,	        0,	       0,         0,         0,         0,         0,         0,         0,         0,         0,         0,0x00000000,         0,         0, // 0x20 - 0x2F
          0,         0,         0,0x00000000,         0,         0,	        0,         0,         0,         0,         0,         0,         0,         0,         0,         0, // 0x30 - 0x3F
          0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0, // 0x40 - 0x4F
          0,	     0,	        0,         0,	      0,         0,         0,         0,         0,         0,	        0,	       0,         0,	     0,         0,         0, // 0x50 - 0x5F
 0xAAAAB554,0x4A9554AA,0x24492929,0x10104222,0xFBFFFFFF,0xB5BB777D,0x49295556,0x00404222,0xFFFF8056,0x00F70000,	        0,	       0,0x000101D5,0x00000000,0x00000000,	       0, // 0x60 - 0x6F
 0x000504C8,         0,0x00000000,         0,         0,         0,         0,         0,         0,	     0,	        0,	       0,	      0,         0,         0,	       0  // 0x70 - 0x7F
};

#endif /* INC_TMC_2130_REGISTER_SETTINGS_H_ */
