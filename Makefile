

RED=$(shell tput setaf 1)
GREEN=$(shell tput setaf 2)
NORMAL=$(shell tput sgr0)

# SILENCE ?= @

TARGET ?=cbaa.argos


.PHONY: all run clean


all:
	@ echo "$(GREEN)[Building $(TARGET)]$(NORMAL)"
	@ mkdir build
	@ cd build && cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo .. && make

run:
	@echo "$(GREEN)[Running $(TARGET)]$(NORMAL)"
	@export QT_STYLE_OVERRIDE=Windows && export BUZZ_INCLUDE_PATH=/usr/local/share/buzz/include && argos3 -c $(TARGET)

clean:
	@ echo "$(RED)[Cleaning]$(NORMAL)"
	-@rm -rf build
	-@rm data.dat
	-@rm *.bdb *.bo bzz.*