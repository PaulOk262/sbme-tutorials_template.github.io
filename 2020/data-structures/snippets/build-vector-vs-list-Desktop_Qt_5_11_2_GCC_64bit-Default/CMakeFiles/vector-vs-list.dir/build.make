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
CMAKE_SOURCE_DIR = /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/vector-vs-list

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/build-vector-vs-list-Desktop_Qt_5_11_2_GCC_64bit-Default

# Include any dependencies generated for this target.
include CMakeFiles/vector-vs-list.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vector-vs-list.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vector-vs-list.dir/flags.make

CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o: CMakeFiles/vector-vs-list.dir/flags.make
CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o: /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/vector-vs-list/stl_vector_vs_list.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/build-vector-vs-list-Desktop_Qt_5_11_2_GCC_64bit-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o -c /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/vector-vs-list/stl_vector_vs_list.cpp

CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/vector-vs-list/stl_vector_vs_list.cpp > CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.i

CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/vector-vs-list/stl_vector_vs_list.cpp -o CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.s

CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o.requires:

.PHONY : CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o.requires

CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o.provides: CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o.requires
	$(MAKE) -f CMakeFiles/vector-vs-list.dir/build.make CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o.provides.build
.PHONY : CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o.provides

CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o.provides.build: CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o


# Object files for target vector-vs-list
vector__vs__list_OBJECTS = \
"CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o"

# External object files for target vector-vs-list
vector__vs__list_EXTERNAL_OBJECTS =

vector-vs-list: CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o
vector-vs-list: CMakeFiles/vector-vs-list.dir/build.make
vector-vs-list: CMakeFiles/vector-vs-list.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/build-vector-vs-list-Desktop_Qt_5_11_2_GCC_64bit-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable vector-vs-list"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vector-vs-list.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vector-vs-list.dir/build: vector-vs-list

.PHONY : CMakeFiles/vector-vs-list.dir/build

CMakeFiles/vector-vs-list.dir/requires: CMakeFiles/vector-vs-list.dir/stl_vector_vs_list.cpp.o.requires

.PHONY : CMakeFiles/vector-vs-list.dir/requires

CMakeFiles/vector-vs-list.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vector-vs-list.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vector-vs-list.dir/clean

CMakeFiles/vector-vs-list.dir/depend:
	cd /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/build-vector-vs-list-Desktop_Qt_5_11_2_GCC_64bit-Default && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/vector-vs-list /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/vector-vs-list /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/build-vector-vs-list-Desktop_Qt_5_11_2_GCC_64bit-Default /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/build-vector-vs-list-Desktop_Qt_5_11_2_GCC_64bit-Default /home/asem/GP/sbme-tutorials.github.io/2020/data-structures/snippets/build-vector-vs-list-Desktop_Qt_5_11_2_GCC_64bit-Default/CMakeFiles/vector-vs-list.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vector-vs-list.dir/depend
