# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /mnt/c/Users/Admin/CLionProjects/grep

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Admin/CLionProjects/grep/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/grep.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/grep.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/grep.dir/flags.make

CMakeFiles/grep.dir/main.cpp.o: CMakeFiles/grep.dir/flags.make
CMakeFiles/grep.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Admin/CLionProjects/grep/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/grep.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/grep.dir/main.cpp.o -c /mnt/c/Users/Admin/CLionProjects/grep/main.cpp

CMakeFiles/grep.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grep.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Admin/CLionProjects/grep/main.cpp > CMakeFiles/grep.dir/main.cpp.i

CMakeFiles/grep.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grep.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Admin/CLionProjects/grep/main.cpp -o CMakeFiles/grep.dir/main.cpp.s

CMakeFiles/grep.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/grep.dir/main.cpp.o.requires

CMakeFiles/grep.dir/main.cpp.o.provides: CMakeFiles/grep.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/grep.dir/build.make CMakeFiles/grep.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/grep.dir/main.cpp.o.provides

CMakeFiles/grep.dir/main.cpp.o.provides.build: CMakeFiles/grep.dir/main.cpp.o


# Object files for target grep
grep_OBJECTS = \
"CMakeFiles/grep.dir/main.cpp.o"

# External object files for target grep
grep_EXTERNAL_OBJECTS =

grep: CMakeFiles/grep.dir/main.cpp.o
grep: CMakeFiles/grep.dir/build.make
grep: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
grep: /usr/lib/x86_64-linux-gnu/libboost_system.so
grep: CMakeFiles/grep.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Admin/CLionProjects/grep/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable grep"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/grep.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/grep.dir/build: grep

.PHONY : CMakeFiles/grep.dir/build

CMakeFiles/grep.dir/requires: CMakeFiles/grep.dir/main.cpp.o.requires

.PHONY : CMakeFiles/grep.dir/requires

CMakeFiles/grep.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/grep.dir/cmake_clean.cmake
.PHONY : CMakeFiles/grep.dir/clean

CMakeFiles/grep.dir/depend:
	cd /mnt/c/Users/Admin/CLionProjects/grep/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Admin/CLionProjects/grep /mnt/c/Users/Admin/CLionProjects/grep /mnt/c/Users/Admin/CLionProjects/grep/cmake-build-debug /mnt/c/Users/Admin/CLionProjects/grep/cmake-build-debug /mnt/c/Users/Admin/CLionProjects/grep/cmake-build-debug/CMakeFiles/grep.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/grep.dir/depend

