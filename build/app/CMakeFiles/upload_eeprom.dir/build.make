# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maike/Github/AVR_PROJECT_TEMPLATE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maike/Github/AVR_PROJECT_TEMPLATE/build

# Utility rule file for upload_eeprom.

# Include the progress variables for this target.
include app/CMakeFiles/upload_eeprom.dir/progress.make

app/CMakeFiles/upload_eeprom: app/MAIN-eeprom.hex
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/maike/Github/AVR_PROJECT_TEMPLATE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Uploading MAIN-eeprom.hex to atmega328p using arduino"
	cd /home/maike/Github/AVR_PROJECT_TEMPLATE/build/app && avrdude -p atmega328p -c arduino -b115200 -D -V -U eeprom:w:MAIN-eeprom.hex -P /dev/ttyACM0

app/MAIN-eeprom.hex: app/MAIN.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/maike/Github/AVR_PROJECT_TEMPLATE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating MAIN-eeprom.hex"
	cd /home/maike/Github/AVR_PROJECT_TEMPLATE/build/app && avr-objcopy -j .eeprom --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0 --no-change-warnings -O ihex MAIN.elf MAIN-eeprom.hex

upload_eeprom: app/CMakeFiles/upload_eeprom
upload_eeprom: app/MAIN-eeprom.hex
upload_eeprom: app/CMakeFiles/upload_eeprom.dir/build.make

.PHONY : upload_eeprom

# Rule to build all files generated by this target.
app/CMakeFiles/upload_eeprom.dir/build: upload_eeprom

.PHONY : app/CMakeFiles/upload_eeprom.dir/build

app/CMakeFiles/upload_eeprom.dir/clean:
	cd /home/maike/Github/AVR_PROJECT_TEMPLATE/build/app && $(CMAKE_COMMAND) -P CMakeFiles/upload_eeprom.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/upload_eeprom.dir/clean

app/CMakeFiles/upload_eeprom.dir/depend:
	cd /home/maike/Github/AVR_PROJECT_TEMPLATE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maike/Github/AVR_PROJECT_TEMPLATE /home/maike/Github/AVR_PROJECT_TEMPLATE/app /home/maike/Github/AVR_PROJECT_TEMPLATE/build /home/maike/Github/AVR_PROJECT_TEMPLATE/build/app /home/maike/Github/AVR_PROJECT_TEMPLATE/build/app/CMakeFiles/upload_eeprom.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/upload_eeprom.dir/depend
