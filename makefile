ifeq ($(OS), Windows_NT)
  EMULATOR=${K65_PATH}\bin\Altirra.exe
  OUTBIN=bin\example.xex
  K65=${K65_PATH}\bin\k65.exe
  FilesList=files_win.lst
endif
ifeq ($(shell uname), Linux)
  EMULATOR=atari800
  OUTBIN=$(PWD)/bin/example.xex
  K65=${K65_PATH}/bin/k65
  FilesList=files_linux.lst
endif

all: main run

main:
	$(K65) @$(FilesList)

run:
	$(EMULATOR) $(OUTBIN)
