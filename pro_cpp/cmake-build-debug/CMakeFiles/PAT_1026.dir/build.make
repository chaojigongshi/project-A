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
include CMakeFiles/PAT_1026.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PAT_1026.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PAT_1026.dir/flags.make

CMakeFiles/PAT_1026.dir/PAT_1026.cpp.obj: CMakeFiles/PAT_1026.dir/flags.make
CMakeFiles/PAT_1026.dir/PAT_1026.cpp.obj: ../PAT_1026.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\cpp\pro_cpp\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PAT_1026.dir/PAT_1026.cpp.obj"
	D:\Dev-Cpp\MinGW64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\PAT_1026.dir\PAT_1026.cpp.obj -c D:\cpp\pro_cpp\PAT_1026.cpp

CMakeFiles/PAT_1026.dir/PAT_1026.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PAT_1026.dir/PAT_1026.cpp.i"
	D:\Dev-Cpp\MinGW64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\cpp\pro_cpp\PAT_1026.cpp > CMakeFiles\PAT_1026.dir\PAT_1026.cpp.i

CMakeFiles/PAT_1026.dir/PAT_1026.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PAT_1026.dir/PAT_1026.cpp.s"
	D:\Dev-Cpp\MinGW64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\cpp\pro_cpp\PAT_1026.cpp -o CMakeFiles\PAT_1026.dir\PAT_1026.cpp.s

# Object files for target PAT_1026
PAT_1026_OBJECTS = \
"CMakeFiles/PAT_1026.dir/PAT_1026.cpp.obj"

# External object files for target PAT_1026
PAT_1026_EXTERNAL_OBJECTS =

PAT_1026.exe: CMakeFiles/PAT_1026.dir/PAT_1026.cpp.obj
PAT_1026.exe: CMakeFiles/PAT_1026.dir/build.make
PAT_1026.exe: CMakeFiles/PAT_1026.dir/linklibs.rsp
PAT_1026.exe: CMakeFiles/PAT_1026.dir/objects1.rsp
PAT_1026.exe: CMakeFiles/PAT_1026.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\cpp\pro_cpp\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PAT_1026.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\PAT_1026.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PAT_1026.dir/build: PAT_1026.exe

.PHONY : CMakeFiles/PAT_1026.dir/build

CMakeFiles/PAT_1026.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\PAT_1026.dir\cmake_clean.cmake
.PHONY : CMakeFiles/PAT_1026.dir/clean

CMakeFiles/PAT_1026.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\cpp\pro_cpp D:\cpp\pro_cpp D:\cpp\pro_cpp\cmake-build-debug D:\cpp\pro_cpp\cmake-build-debug D:\cpp\pro_cpp\cmake-build-debug\CMakeFiles\PAT_1026.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PAT_1026.dir/depend

