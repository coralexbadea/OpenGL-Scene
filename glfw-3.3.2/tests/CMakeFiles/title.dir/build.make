# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2

# Include any dependencies generated for this target.
include tests/CMakeFiles/title.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/title.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/title.dir/flags.make

tests/CMakeFiles/title.dir/title.c.o: tests/CMakeFiles/title.dir/flags.make
tests/CMakeFiles/title.dir/title.c.o: tests/title.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/title.dir/title.c.o"
	cd /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/title.dir/title.c.o   -c /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests/title.c

tests/CMakeFiles/title.dir/title.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/title.dir/title.c.i"
	cd /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests/title.c > CMakeFiles/title.dir/title.c.i

tests/CMakeFiles/title.dir/title.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/title.dir/title.c.s"
	cd /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests/title.c -o CMakeFiles/title.dir/title.c.s

tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o: tests/CMakeFiles/title.dir/flags.make
tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o: deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o"
	cd /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/title.dir/__/deps/glad_gl.c.o   -c /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/deps/glad_gl.c

tests/CMakeFiles/title.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/title.dir/__/deps/glad_gl.c.i"
	cd /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/deps/glad_gl.c > CMakeFiles/title.dir/__/deps/glad_gl.c.i

tests/CMakeFiles/title.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/title.dir/__/deps/glad_gl.c.s"
	cd /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/deps/glad_gl.c -o CMakeFiles/title.dir/__/deps/glad_gl.c.s

# Object files for target title
title_OBJECTS = \
"CMakeFiles/title.dir/title.c.o" \
"CMakeFiles/title.dir/__/deps/glad_gl.c.o"

# External object files for target title
title_EXTERNAL_OBJECTS =

tests/title: tests/CMakeFiles/title.dir/title.c.o
tests/title: tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o
tests/title: tests/CMakeFiles/title.dir/build.make
tests/title: src/libglfw3.a
tests/title: /usr/lib/x86_64-linux-gnu/libm.so
tests/title: /usr/lib/x86_64-linux-gnu/librt.so
tests/title: /usr/lib/x86_64-linux-gnu/libm.so
tests/title: /usr/lib/x86_64-linux-gnu/libX11.so
tests/title: tests/CMakeFiles/title.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable title"
	cd /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/title.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/title.dir/build: tests/title

.PHONY : tests/CMakeFiles/title.dir/build

tests/CMakeFiles/title.dir/clean:
	cd /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests && $(CMAKE_COMMAND) -P CMakeFiles/title.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/title.dir/clean

tests/CMakeFiles/title.dir/depend:
	cd /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2 /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2 /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests /home/cristina/Downloads/Laboratory_7_resources_part_1/glfw-3.3.2/tests/CMakeFiles/title.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/title.dir/depend

