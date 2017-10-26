# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "freefloating_gazebo: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ifreefloating_gazebo:/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(freefloating_gazebo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg" NAME_WE)
add_custom_target(_freefloating_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "freefloating_gazebo" "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(freefloating_gazebo
  "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freefloating_gazebo
)

### Generating Services

### Generating Module File
_generate_module_cpp(freefloating_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freefloating_gazebo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(freefloating_gazebo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(freefloating_gazebo_generate_messages freefloating_gazebo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg" NAME_WE)
add_dependencies(freefloating_gazebo_generate_messages_cpp _freefloating_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(freefloating_gazebo_gencpp)
add_dependencies(freefloating_gazebo_gencpp freefloating_gazebo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS freefloating_gazebo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(freefloating_gazebo
  "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freefloating_gazebo
)

### Generating Services

### Generating Module File
_generate_module_eus(freefloating_gazebo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freefloating_gazebo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(freefloating_gazebo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(freefloating_gazebo_generate_messages freefloating_gazebo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg" NAME_WE)
add_dependencies(freefloating_gazebo_generate_messages_eus _freefloating_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(freefloating_gazebo_geneus)
add_dependencies(freefloating_gazebo_geneus freefloating_gazebo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS freefloating_gazebo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(freefloating_gazebo
  "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freefloating_gazebo
)

### Generating Services

### Generating Module File
_generate_module_lisp(freefloating_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freefloating_gazebo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(freefloating_gazebo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(freefloating_gazebo_generate_messages freefloating_gazebo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg" NAME_WE)
add_dependencies(freefloating_gazebo_generate_messages_lisp _freefloating_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(freefloating_gazebo_genlisp)
add_dependencies(freefloating_gazebo_genlisp freefloating_gazebo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS freefloating_gazebo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(freefloating_gazebo
  "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freefloating_gazebo
)

### Generating Services

### Generating Module File
_generate_module_nodejs(freefloating_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freefloating_gazebo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(freefloating_gazebo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(freefloating_gazebo_generate_messages freefloating_gazebo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg" NAME_WE)
add_dependencies(freefloating_gazebo_generate_messages_nodejs _freefloating_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(freefloating_gazebo_gennodejs)
add_dependencies(freefloating_gazebo_gennodejs freefloating_gazebo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS freefloating_gazebo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(freefloating_gazebo
  "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freefloating_gazebo
)

### Generating Services

### Generating Module File
_generate_module_py(freefloating_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freefloating_gazebo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(freefloating_gazebo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(freefloating_gazebo_generate_messages freefloating_gazebo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ton/catkin_ws/src/src_sim/freefloating_gazebo/msg/BodySetpoint.msg" NAME_WE)
add_dependencies(freefloating_gazebo_generate_messages_py _freefloating_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(freefloating_gazebo_genpy)
add_dependencies(freefloating_gazebo_genpy freefloating_gazebo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS freefloating_gazebo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freefloating_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/freefloating_gazebo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(freefloating_gazebo_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freefloating_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/freefloating_gazebo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(freefloating_gazebo_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freefloating_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/freefloating_gazebo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(freefloating_gazebo_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freefloating_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/freefloating_gazebo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(freefloating_gazebo_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freefloating_gazebo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freefloating_gazebo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/freefloating_gazebo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(freefloating_gazebo_generate_messages_py geometry_msgs_generate_messages_py)
endif()
