# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/pi/labembedded/keypad

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/labembedded/keypad/build

# Include any dependencies generated for this target.
include CMakeFiles/Keypad.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Keypad.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Keypad.dir/flags.make

CMakeFiles/Keypad.dir/main.c.o: CMakeFiles/Keypad.dir/flags.make
CMakeFiles/Keypad.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/labembedded/keypad/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Keypad.dir/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Keypad.dir/main.c.o   -c /home/pi/labembedded/keypad/main.c

CMakeFiles/Keypad.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Keypad.dir/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/labembedded/keypad/main.c > CMakeFiles/Keypad.dir/main.c.i

CMakeFiles/Keypad.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Keypad.dir/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/labembedded/keypad/main.c -o CMakeFiles/Keypad.dir/main.c.s

CMakeFiles/Keypad.dir/main.c.o.requires:

.PHONY : CMakeFiles/Keypad.dir/main.c.o.requires

CMakeFiles/Keypad.dir/main.c.o.provides: CMakeFiles/Keypad.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/Keypad.dir/build.make CMakeFiles/Keypad.dir/main.c.o.provides.build
.PHONY : CMakeFiles/Keypad.dir/main.c.o.provides

CMakeFiles/Keypad.dir/main.c.o.provides.build: CMakeFiles/Keypad.dir/main.c.o


# Object files for target Keypad
Keypad_OBJECTS = \
"CMakeFiles/Keypad.dir/main.c.o"

# External object files for target Keypad
Keypad_EXTERNAL_OBJECTS =

Keypad: CMakeFiles/Keypad.dir/main.c.o
Keypad: CMakeFiles/Keypad.dir/build.make
Keypad: CMakeFiles/Keypad.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/labembedded/keypad/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Keypad"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Keypad.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Keypad.dir/build: Keypad

.PHONY : CMakeFiles/Keypad.dir/build

CMakeFiles/Keypad.dir/requires: CMakeFiles/Keypad.dir/main.c.o.requires

.PHONY : CMakeFiles/Keypad.dir/requires

CMakeFiles/Keypad.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Keypad.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Keypad.dir/clean

CMakeFiles/Keypad.dir/depend:
	cd /home/pi/labembedded/keypad/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/labembedded/keypad /home/pi/labembedded/keypad /home/pi/labembedded/keypad/build /home/pi/labembedded/keypad/build /home/pi/labembedded/keypad/build/CMakeFiles/Keypad.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Keypad.dir/depend

