# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2019.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2019.1.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\cpp\pro_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\cpp\pro_cpp\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/leetcode_572.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/leetcode_572.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/leetcode_572.dir/flags.make

CMakeFiles/leetcode_572.dir/leetcode_572.cpp.obj: CMakeFiles/leetcode_572.dir/flags.make
CMakeFiles/leetcode_572.dir/leetcode_572.cpp.obj: ../leetcode_572.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\cpp\pro_cpp\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/leetcode_572.dir/leetcode_572.cpp.obj"
	D:\Dev-Cpp\MinGW64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\leetcode_572.dir\leetcode_572.cpp.obj -c D:\cpp\pro_cpp\leetcode_572.cpp

CMakeFiles/leetcode_572.dir/leetcode_572.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/leetcode_572.dir/leetcode_572.cpp.i"
	D:\Dev-Cpp\MinGW64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\cpp\pro_cpp\leetcode_572.cpp > CMakeFiles\leetcode_572.dir\leetcode_572.cpp.i

CMakeFiles/leetcode_572.dir/leetcode_572.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/leetcode_572.dir/leetcode_572.cpp.s"
	D:\Dev-Cpp\MinGW64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\cpp\pro_cpp\leetcode_572.cpp -o CMakeFiles\leetcode_572.dir\leetcode_572.cpp.s

# Object files for target leetcode_572
leetcode_572_OBJECTS = \
"CMakeFiles/leetcode_572.dir/leetcode_572.cpp.obj"

# External object files for target leetcode_572
leetcode_572_EXTERNAL_OBJECTS =

leetcode_572.exe: CMakeFiles/leetcode_572.dir/leetcode_572.cpp.obj
leetcode_572.exe: CMakeFiles/leetcode_572.dir/build.make
leetcode_572.exe: CMakeFiles/leetcode_572.dir/linklibs.rsp
leetcode_572.exe: CMakeFiles/leetcode_572.dir/objects1.rsp
leetcode_572.exe: CMakeFiles/leetcode_572.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\cpp\pro_cpp\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable leetcode_572.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\leetcode_572.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/leetcode_572.dir/build: leetcode_572.exe

.PHONY : CMakeFiles/leetcode_572.dir/build

CMakeFiles/leetcode_572.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\leetcode_572.dir\cmake_clean.cmake
.PHONY : CMakeFiles/leetcode_572.dir/clean

CMakeFiles/leetcode_572.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\cpp\pro_cpp D:\cpp\pro_cpp D:\cpp\pro_cpp\cmake-build-debug D:\cpp\pro_cpp\cmake-build-debug D:\cpp\pro_cpp\cmake-build-debug\CMakeFiles\leetcode_572.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/leetcode_572.dir/depend
