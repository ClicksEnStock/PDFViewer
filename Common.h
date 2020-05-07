#pragma once

// #define TGFEXT       // TGF2, MMF2, MMF2 Dev
 #define MMFEXT       // MMF2, MMF2 Dev
// #define PROEXT       // MMF2 Dev only

#include    "Edif.h"
#include	"Resource.h"
#include	"atlstr.h"

// edPtr : Used at edittime and saved in the MFA/CCN/EXE files

struct EDITDATA
{
	// Header - required
	extHeader		eHeader;

	// Object's data
//	short			swidth;
//	short			sheight;

};

#define MAX_STRING          256
#define MAX_ERROR_STRING          2048

#include "Extension.h"
