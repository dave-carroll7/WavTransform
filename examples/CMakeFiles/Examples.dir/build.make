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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.21.3_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.21.3_1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/davecarroll/Projects/Audio/FFT/AudioFile

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/davecarroll/Projects/Audio/FFT

# Include any dependencies generated for this target.
include examples/CMakeFiles/Examples.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/Examples.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/Examples.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/Examples.dir/flags.make

examples/CMakeFiles/Examples.dir/examples.cpp.o: examples/CMakeFiles/Examples.dir/flags.make
examples/CMakeFiles/Examples.dir/examples.cpp.o: AudioFile/examples/examples.cpp
examples/CMakeFiles/Examples.dir/examples.cpp.o: examples/CMakeFiles/Examples.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/davecarroll/Projects/Audio/FFT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/Examples.dir/examples.cpp.o"
	cd /Users/davecarroll/Projects/Audio/FFT/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/Examples.dir/examples.cpp.o -MF CMakeFiles/Examples.dir/examples.cpp.o.d -o CMakeFiles/Examples.dir/examples.cpp.o -c /Users/davecarroll/Projects/Audio/FFT/AudioFile/examples/examples.cpp

examples/CMakeFiles/Examples.dir/examples.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Examples.dir/examples.cpp.i"
	cd /Users/davecarroll/Projects/Audio/FFT/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/davecarroll/Projects/Audio/FFT/AudioFile/examples/examples.cpp > CMakeFiles/Examples.dir/examples.cpp.i

examples/CMakeFiles/Examples.dir/examples.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Examples.dir/examples.cpp.s"
	cd /Users/davecarroll/Projects/Audio/FFT/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/davecarroll/Projects/Audio/FFT/AudioFile/examples/examples.cpp -o CMakeFiles/Examples.dir/examples.cpp.s

# Object files for target Examples
Examples_OBJECTS = \
"CMakeFiles/Examples.dir/examples.cpp.o"

# External object files for target Examples
Examples_EXTERNAL_OBJECTS =

examples/Examples: examples/CMakeFiles/Examples.dir/examples.cpp.o
examples/Examples: examples/CMakeFiles/Examples.dir/build.make
examples/Examples: examples/CMakeFiles/Examples.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/davecarroll/Projects/Audio/FFT/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Examples"
	cd /Users/davecarroll/Projects/Audio/FFT/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Examples.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/Examples.dir/build: examples/Examples
.PHONY : examples/CMakeFiles/Examples.dir/build

examples/CMakeFiles/Examples.dir/clean:
	cd /Users/davecarroll/Projects/Audio/FFT/examples && $(CMAKE_COMMAND) -P CMakeFiles/Examples.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/Examples.dir/clean

examples/CMakeFiles/Examples.dir/depend:
	cd /Users/davecarroll/Projects/Audio/FFT && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/davecarroll/Projects/Audio/FFT/AudioFile /Users/davecarroll/Projects/Audio/FFT/AudioFile/examples /Users/davecarroll/Projects/Audio/FFT /Users/davecarroll/Projects/Audio/FFT/examples /Users/davecarroll/Projects/Audio/FFT/examples/CMakeFiles/Examples.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/Examples.dir/depend
