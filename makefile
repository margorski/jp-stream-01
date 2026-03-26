EMUBIN=atari800
K65=${K65_PATH}/out/k65.exe
FilesList=files.lst

all: main

main: 
	$(K65) @$(FilesList)
	
run:
	$(EMUBIN) bin/example.xex
