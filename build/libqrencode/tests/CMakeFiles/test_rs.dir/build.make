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
include libqrencode/tests/CMakeFiles/test_rs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libqrencode/tests/CMakeFiles/test_rs.dir/compiler_depend.make

# Include the progress variables for this target.
include libqrencode/tests/CMakeFiles/test_rs.dir/progress.make

# Include the compile flags for this target's objects.
include libqrencode/tests/CMakeFiles/test_rs.dir/flags.make

libqrencode/tests/CMakeFiles/test_rs.dir/test_rs.c.o: libqrencode/tests/CMakeFiles/test_rs.dir/flags.make
libqrencode/tests/CMakeFiles/test_rs.dir/test_rs.c.o: ../libqrencode/tests/test_rs.c
libqrencode/tests/CMakeFiles/test_rs.dir/test_rs.c.o: libqrencode/tests/CMakeFiles/test_rs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chendongsheng/github/cds_qr_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libqrencode/tests/CMakeFiles/test_rs.dir/test_rs.c.o"
	cd /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libqrencode/tests/CMakeFiles/test_rs.dir/test_rs.c.o -MF CMakeFiles/test_rs.dir/test_rs.c.o.d -o CMakeFiles/test_rs.dir/test_rs.c.o -c /Users/chendongsheng/github/cds_qr_code/libqrencode/tests/test_rs.c

libqrencode/tests/CMakeFiles/test_rs.dir/test_rs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_rs.dir/test_rs.c.i"
	cd /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chendongsheng/github/cds_qr_code/libqrencode/tests/test_rs.c > CMakeFiles/test_rs.dir/test_rs.c.i

libqrencode/tests/CMakeFiles/test_rs.dir/test_rs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_rs.dir/test_rs.c.s"
	cd /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chendongsheng/github/cds_qr_code/libqrencode/tests/test_rs.c -o CMakeFiles/test_rs.dir/test_rs.c.s

# Object files for target test_rs
test_rs_OBJECTS = \
"CMakeFiles/test_rs.dir/test_rs.c.o"

# External object files for target test_rs
test_rs_EXTERNAL_OBJECTS =

libqrencode/tests/test_rs: libqrencode/tests/CMakeFiles/test_rs.dir/test_rs.c.o
libqrencode/tests/test_rs: libqrencode/tests/CMakeFiles/test_rs.dir/build.make
libqrencode/tests/test_rs: libqrencode/tests/librscode.dylib
libqrencode/tests/test_rs: libqrencode/tests/libdecoder.a
libqrencode/tests/test_rs: libqrencode/tests/libcommon.dylib
libqrencode/tests/test_rs: libqrencode/libqrencode.4.1.1.dylib
libqrencode/tests/test_rs: /Users/chendongsheng/opt/anaconda3/lib/libiconv.dylib
libqrencode/tests/test_rs: libqrencode/tests/CMakeFiles/test_rs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chendongsheng/github/cds_qr_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_rs"
	cd /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_rs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libqrencode/tests/CMakeFiles/test_rs.dir/build: libqrencode/tests/test_rs
.PHONY : libqrencode/tests/CMakeFiles/test_rs.dir/build

libqrencode/tests/CMakeFiles/test_rs.dir/clean:
	cd /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_rs.dir/cmake_clean.cmake
.PHONY : libqrencode/tests/CMakeFiles/test_rs.dir/clean

libqrencode/tests/CMakeFiles/test_rs.dir/depend:
	cd /Users/chendongsheng/github/cds_qr_code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chendongsheng/github/cds_qr_code /Users/chendongsheng/github/cds_qr_code/libqrencode/tests /Users/chendongsheng/github/cds_qr_code/build /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests /Users/chendongsheng/github/cds_qr_code/build/libqrencode/tests/CMakeFiles/test_rs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libqrencode/tests/CMakeFiles/test_rs.dir/depend

