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
CMAKE_SOURCE_DIR = /home/ton/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ton/catkin_ws/build

# Utility rule file for test_ser_cli_generate_messages_py.

# Include the progress variables for this target.
include src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py.dir/progress.make

src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py: /home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv/_robot_service.py
src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py: /home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv/__init__.py


/home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv/_robot_service.py: /opt/ros/kinetic/lib/genpy/gensrv_py.py
/home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv/_robot_service.py: /home/ton/catkin_ws/src/src_code/test_ser_cli/srv/robot_service.srv
/home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv/_robot_service.py: /home/ton/catkin_ws/src/src_code/test_create_msg_new/msg/robot_detail.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ton/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Python code from SRV test_ser_cli/robot_service"
	cd /home/ton/catkin_ws/build/src_code/test_ser_cli && ../../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/genpy/cmake/../../../lib/genpy/gensrv_py.py /home/ton/catkin_ws/src/src_code/test_ser_cli/srv/robot_service.srv -Itest_create_msg_new:/home/ton/catkin_ws/src/src_code/test_create_msg_new/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p test_ser_cli -o /home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv

/home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv/__init__.py: /opt/ros/kinetic/lib/genpy/genmsg_py.py
/home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv/__init__.py: /home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv/_robot_service.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ton/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Python srv __init__.py for test_ser_cli"
	cd /home/ton/catkin_ws/build/src_code/test_ser_cli && ../../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv --initpy

test_ser_cli_generate_messages_py: src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py
test_ser_cli_generate_messages_py: /home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv/_robot_service.py
test_ser_cli_generate_messages_py: /home/ton/catkin_ws/devel/lib/python2.7/dist-packages/test_ser_cli/srv/__init__.py
test_ser_cli_generate_messages_py: src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py.dir/build.make

.PHONY : test_ser_cli_generate_messages_py

# Rule to build all files generated by this target.
src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py.dir/build: test_ser_cli_generate_messages_py

.PHONY : src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py.dir/build

src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py.dir/clean:
	cd /home/ton/catkin_ws/build/src_code/test_ser_cli && $(CMAKE_COMMAND) -P CMakeFiles/test_ser_cli_generate_messages_py.dir/cmake_clean.cmake
.PHONY : src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py.dir/clean

src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py.dir/depend:
	cd /home/ton/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ton/catkin_ws/src /home/ton/catkin_ws/src/src_code/test_ser_cli /home/ton/catkin_ws/build /home/ton/catkin_ws/build/src_code/test_ser_cli /home/ton/catkin_ws/build/src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src_code/test_ser_cli/CMakeFiles/test_ser_cli_generate_messages_py.dir/depend

