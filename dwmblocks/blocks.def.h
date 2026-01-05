//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "/home/williamc/documentos/suckless/scripts/blocks/cpu.sh",	3,		0},
	{"", "/home/williamc/documentos/suckless/scripts/blocks/ram.sh",	3,		0},
	{"", "/home/williamc/documentos/suckless/scripts/blocks/wifi.sh",	3,		0},
	{"", "/home/williamc/documentos/suckless/scripts/blocks/bat.sh",	3,		0},
	{"", "/home/williamc/documentos/suckless/scripts/blocks/date.sh",	30,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
