

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
	@ argos3 -c $(TARGET)

clean:
	@ echo "$(GREEN)[Cleaning]$(NORMAL)"
	@ rm -rf build
	@ rm data.dat