# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build

# Include any dependencies generated for this target.
include tst/CMakeFiles/MyList_tst.dir/depend.make

# Include the progress variables for this target.
include tst/CMakeFiles/MyList_tst.dir/progress.make

# Include the compile flags for this target's objects.
include tst/CMakeFiles/MyList_tst.dir/flags.make

tst/CMakeFiles/MyList_tst.dir/main.cpp.o: tst/CMakeFiles/MyList_tst.dir/flags.make
tst/CMakeFiles/MyList_tst.dir/main.cpp.o: ../tst/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tst/CMakeFiles/MyList_tst.dir/main.cpp.o"
	cd /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/tst && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyList_tst.dir/main.cpp.o -c /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/tst/main.cpp

tst/CMakeFiles/MyList_tst.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyList_tst.dir/main.cpp.i"
	cd /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/tst && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/tst/main.cpp > CMakeFiles/MyList_tst.dir/main.cpp.i

tst/CMakeFiles/MyList_tst.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyList_tst.dir/main.cpp.s"
	cd /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/tst && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/tst/main.cpp -o CMakeFiles/MyList_tst.dir/main.cpp.s

tst/CMakeFiles/MyList_tst.dir/test.cpp.o: tst/CMakeFiles/MyList_tst.dir/flags.make
tst/CMakeFiles/MyList_tst.dir/test.cpp.o: ../tst/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tst/CMakeFiles/MyList_tst.dir/test.cpp.o"
	cd /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/tst && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyList_tst.dir/test.cpp.o -c /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/tst/test.cpp

tst/CMakeFiles/MyList_tst.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyList_tst.dir/test.cpp.i"
	cd /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/tst && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/tst/test.cpp > CMakeFiles/MyList_tst.dir/test.cpp.i

tst/CMakeFiles/MyList_tst.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyList_tst.dir/test.cpp.s"
	cd /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/tst && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/tst/test.cpp -o CMakeFiles/MyList_tst.dir/test.cpp.s

# Object files for target MyList_tst
MyList_tst_OBJECTS = \
"CMakeFiles/MyList_tst.dir/main.cpp.o" \
"CMakeFiles/MyList_tst.dir/test.cpp.o"

# External object files for target MyList_tst
MyList_tst_EXTERNAL_OBJECTS =

tst/MyList_tst: tst/CMakeFiles/MyList_tst.dir/main.cpp.o
tst/MyList_tst: tst/CMakeFiles/MyList_tst.dir/test.cpp.o
tst/MyList_tst: tst/CMakeFiles/MyList_tst.dir/build.make
tst/MyList_tst: lib/libgtest.a
tst/MyList_tst: tst/CMakeFiles/MyList_tst.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable MyList_tst"
	cd /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/tst && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyList_tst.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tst/CMakeFiles/MyList_tst.dir/build: tst/MyList_tst

.PHONY : tst/CMakeFiles/MyList_tst.dir/build

tst/CMakeFiles/MyList_tst.dir/clean:
	cd /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/tst && $(CMAKE_COMMAND) -P CMakeFiles/MyList_tst.dir/cmake_clean.cmake
.PHONY : tst/CMakeFiles/MyList_tst.dir/clean

tst/CMakeFiles/MyList_tst.dir/depend:
	cd /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/tst /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/tst /mnt/c/Users/kamateus/Desktop/c++matsy/Projects/myList/build/tst/CMakeFiles/MyList_tst.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tst/CMakeFiles/MyList_tst.dir/depend

