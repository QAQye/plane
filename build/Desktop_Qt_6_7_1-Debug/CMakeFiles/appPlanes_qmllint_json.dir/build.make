# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/111/plane

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/111/plane/build/Desktop_Qt_6_7_1-Debug

# Utility rule file for appPlanes_qmllint_json.

# Include any custom commands dependencies for this target.
include CMakeFiles/appPlanes_qmllint_json.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appPlanes_qmllint_json.dir/progress.make

CMakeFiles/appPlanes_qmllint_json: /opt/Qt/6.7.1/gcc_64/bin/qmllint
CMakeFiles/appPlanes_qmllint_json: /root/111/plane/Window.qml
CMakeFiles/appPlanes_qmllint_json: /root/111/plane/Content.qml
CMakeFiles/appPlanes_qmllint_json: /root/111/plane/Dialogs.qml
CMakeFiles/appPlanes_qmllint_json: /root/111/plane/Actions.qml
CMakeFiles/appPlanes_qmllint_json: /root/111/plane/MainMap.qml
CMakeFiles/appPlanes_qmllint_json: /root/111/plane/FirstWindow.qml
CMakeFiles/appPlanes_qmllint_json: /root/111/plane/SecondWindow.qml
CMakeFiles/appPlanes_qmllint_json: .rcc/qmllint/appPlanes_json.rsp
	cd /root/111/plane && /opt/Qt/6.7.1/gcc_64/bin/qmllint @/root/111/plane/build/Desktop_Qt_6_7_1-Debug/.rcc/qmllint/appPlanes_json.rsp

appPlanes_qmllint_json: CMakeFiles/appPlanes_qmllint_json
appPlanes_qmllint_json: CMakeFiles/appPlanes_qmllint_json.dir/build.make
.PHONY : appPlanes_qmllint_json

# Rule to build all files generated by this target.
CMakeFiles/appPlanes_qmllint_json.dir/build: appPlanes_qmllint_json
.PHONY : CMakeFiles/appPlanes_qmllint_json.dir/build

CMakeFiles/appPlanes_qmllint_json.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appPlanes_qmllint_json.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appPlanes_qmllint_json.dir/clean

CMakeFiles/appPlanes_qmllint_json.dir/depend:
	cd /root/111/plane/build/Desktop_Qt_6_7_1-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/111/plane /root/111/plane /root/111/plane/build/Desktop_Qt_6_7_1-Debug /root/111/plane/build/Desktop_Qt_6_7_1-Debug /root/111/plane/build/Desktop_Qt_6_7_1-Debug/CMakeFiles/appPlanes_qmllint_json.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appPlanes_qmllint_json.dir/depend

