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
CMAKE_SOURCE_DIR = /home/zzy/sia_arm/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zzy/sia_arm/build

# Include any dependencies generated for this target.
include sia_serial/CMakeFiles/IK.dir/depend.make

# Include the progress variables for this target.
include sia_serial/CMakeFiles/IK.dir/progress.make

# Include the compile flags for this target's objects.
include sia_serial/CMakeFiles/IK.dir/flags.make

sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o: sia_serial/CMakeFiles/IK.dir/flags.make
sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o: /home/zzy/sia_arm/src/sia_serial/src/IK.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zzy/sia_arm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o"
	cd /home/zzy/sia_arm/build/sia_serial && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/IK.dir/src/IK.cpp.o -c /home/zzy/sia_arm/src/sia_serial/src/IK.cpp

sia_serial/CMakeFiles/IK.dir/src/IK.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/IK.dir/src/IK.cpp.i"
	cd /home/zzy/sia_arm/build/sia_serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zzy/sia_arm/src/sia_serial/src/IK.cpp > CMakeFiles/IK.dir/src/IK.cpp.i

sia_serial/CMakeFiles/IK.dir/src/IK.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/IK.dir/src/IK.cpp.s"
	cd /home/zzy/sia_arm/build/sia_serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zzy/sia_arm/src/sia_serial/src/IK.cpp -o CMakeFiles/IK.dir/src/IK.cpp.s

sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o.requires:

.PHONY : sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o.requires

sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o.provides: sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o.requires
	$(MAKE) -f sia_serial/CMakeFiles/IK.dir/build.make sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o.provides.build
.PHONY : sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o.provides

sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o.provides.build: sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o


# Object files for target IK
IK_OBJECTS = \
"CMakeFiles/IK.dir/src/IK.cpp.o"

# External object files for target IK
IK_EXTERNAL_OBJECTS =

/home/zzy/sia_arm/devel/lib/libIK.so: sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o
/home/zzy/sia_arm/devel/lib/libIK.so: sia_serial/CMakeFiles/IK.dir/build.make
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libserial.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libactionlib.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libroscpp.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librosconsole.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librostime.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libserial.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libactionlib.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libroscpp.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librosconsole.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librostime.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/zzy/sia_arm/devel/lib/libIK.so: /home/zzy/sia_arm/devel/lib/libParse.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libserial.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libactionlib.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libroscpp.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librosconsole.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/librostime.so
/home/zzy/sia_arm/devel/lib/libIK.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/zzy/sia_arm/devel/lib/libIK.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/zzy/sia_arm/devel/lib/libIK.so: sia_serial/CMakeFiles/IK.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zzy/sia_arm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/zzy/sia_arm/devel/lib/libIK.so"
	cd /home/zzy/sia_arm/build/sia_serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/IK.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sia_serial/CMakeFiles/IK.dir/build: /home/zzy/sia_arm/devel/lib/libIK.so

.PHONY : sia_serial/CMakeFiles/IK.dir/build

sia_serial/CMakeFiles/IK.dir/requires: sia_serial/CMakeFiles/IK.dir/src/IK.cpp.o.requires

.PHONY : sia_serial/CMakeFiles/IK.dir/requires

sia_serial/CMakeFiles/IK.dir/clean:
	cd /home/zzy/sia_arm/build/sia_serial && $(CMAKE_COMMAND) -P CMakeFiles/IK.dir/cmake_clean.cmake
.PHONY : sia_serial/CMakeFiles/IK.dir/clean

sia_serial/CMakeFiles/IK.dir/depend:
	cd /home/zzy/sia_arm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zzy/sia_arm/src /home/zzy/sia_arm/src/sia_serial /home/zzy/sia_arm/build /home/zzy/sia_arm/build/sia_serial /home/zzy/sia_arm/build/sia_serial/CMakeFiles/IK.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sia_serial/CMakeFiles/IK.dir/depend

