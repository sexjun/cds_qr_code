# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.21.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.21.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chendongsheng/github/cds_qr_code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chendongsheng/github/cds_qr_code/build

# Include any dependencies generated for this target.
include libqrencode/tests/CMakeFiles/rscode.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libqrencode/tests/CMakeFiles/rscode.dir/compiler_depend.make

# Include the progress variables for this target.
include libqrencode/tests/CMakeFiles/rscode.dir/progress.make

# Include the compile flags for this target's objects.
include libqrencode/tests/CMakeFiles/rscode.dir/flags.make

libqrencode/tests/CMakeFiles/rscode.dir/rscode.c.o: libqrencode/tests/CMakeFiles/rscode.dir/flags.make
libqrencode/tests/CMakeFiles/rscode.dir/rscode.c.o: ../libqrencode/tests/rscode.c
libqrencode/tests/CMakeFiles/rscode.dir/rscode.c.o: libqrencode/tests/CMakeFiles/rscode.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chendongsheng/github/cds_qr_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libqrencode/tests/CMakeFiles/rscode.dir/rscode.c.o"
	cd /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libqrencode/tests/CMakeFiles/rscode.dir/rscode.c.o -MF CMakeFiles/rscode.dir/rscode.c.o.d -o CMakeFiles/rscode.dir/rscode.c.o -c /Users/chendongsheng/github/cds_qr_code/libqrencode/tests/rscode.c

libqrencode/tests/CMakeFiles/rscode.dir/rscode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rscode.dir/rscode.c.i"
	cd /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chendongsheng/github/cds_qr_code/libqrencode/tests/rscode.c > CMakeFiles/rscode.dir/rscode.c.i

libqrencode/tests/CMakeFiles/rscode.dir/rscode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rscode.dir/rscode.c.s"
	cd /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chendongsheng/github/cds_qr_code/libqrencode/tests/rscode.c -o CMakeFiles/rscode.dir/rscode.c.s

# Object files for target rscode
rscode_OBJECTS = \
"CMakeFiles/rscode.dir/rscode.c.o"

# External object files for target rscode
rscode_EXTERNAL_OBJECTS =

libqrencode/tests/librscode.dylib: libqrencode/tests/CMakeFiles/rscode.dir/rscode.c.o
libqrencode/tests/librscode.dylib: libqrencode/tests/CMakeFiles/rscode.dir/build.make
libqrencode/tests/librscode.dylib: libqrencode/tests/libcommon.dylib
libqrencode/tests/librscode.dylib: libqrencode/libqrencode.4.1.1.dylib
libqrencode/tests/librscode.dylib: libqrencode/tests/CMakeFiles/rscode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chendongsheng/github/cds_qr_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library librscode.dylib"
	cd /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rscode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libqrencode/tests/CMakeFiles/rscode.dir/build: libqrencode/tests/librscode.dylib
.PHONY : libqrencode/tests/CMakeFiles/rscode.dir/build

libqrencode/tests/CMakeFiles/rscode.dir/clean:
	cd /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests && $(CMAKE_COMMAND) -P CMakeFiles/rscode.dir/cmake_clean.cmake
.PHONY : libqrencode/tests/CMakeFiles/rscode.dir/clean

libqrencode/tests/CMakeFiles/rscode.dir/depend:
	cd /Users/chendongsheng/github/cds_qr_code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chendongsheng/github/cds_qr_code /Users/chendongsheng/github/cds_qr_code/libqrencode/tests /Users/chendongsheng/github/cds_qr_code/build /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests/CMakeFiles/rscode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libqrencode/tests/CMakeFiles/rscode.dir/depend

