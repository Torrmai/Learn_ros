# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "plus_minus_ser_cli: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(plus_minus_ser_cli_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv" NAME_WE)
add_custom_target(_plus_minus_ser_cli_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "plus_minus_ser_cli" "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(plus_minus_ser_cli
  "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plus_minus_ser_cli
)

### Generating Module File
_generate_module_cpp(plus_minus_ser_cli
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plus_minus_ser_cli
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(plus_minus_ser_cli_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(plus_minus_ser_cli_generate_messages plus_minus_ser_cli_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv" NAME_WE)
add_dependencies(plus_minus_ser_cli_generate_messages_cpp _plus_minus_ser_cli_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plus_minus_ser_cli_gencpp)
add_dependencies(plus_minus_ser_cli_gencpp plus_minus_ser_cli_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plus_minus_ser_cli_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(plus_minus_ser_cli
  "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plus_minus_ser_cli
)

### Generating Module File
_generate_module_eus(plus_minus_ser_cli
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plus_minus_ser_cli
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(plus_minus_ser_cli_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(plus_minus_ser_cli_generate_messages plus_minus_ser_cli_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv" NAME_WE)
add_dependencies(plus_minus_ser_cli_generate_messages_eus _plus_minus_ser_cli_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plus_minus_ser_cli_geneus)
add_dependencies(plus_minus_ser_cli_geneus plus_minus_ser_cli_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plus_minus_ser_cli_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(plus_minus_ser_cli
  "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plus_minus_ser_cli
)

### Generating Module File
_generate_module_lisp(plus_minus_ser_cli
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plus_minus_ser_cli
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(plus_minus_ser_cli_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(plus_minus_ser_cli_generate_messages plus_minus_ser_cli_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv" NAME_WE)
add_dependencies(plus_minus_ser_cli_generate_messages_lisp _plus_minus_ser_cli_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plus_minus_ser_cli_genlisp)
add_dependencies(plus_minus_ser_cli_genlisp plus_minus_ser_cli_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plus_minus_ser_cli_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(plus_minus_ser_cli
  "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plus_minus_ser_cli
)

### Generating Module File
_generate_module_nodejs(plus_minus_ser_cli
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plus_minus_ser_cli
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(plus_minus_ser_cli_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(plus_minus_ser_cli_generate_messages plus_minus_ser_cli_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv" NAME_WE)
add_dependencies(plus_minus_ser_cli_generate_messages_nodejs _plus_minus_ser_cli_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plus_minus_ser_cli_gennodejs)
add_dependencies(plus_minus_ser_cli_gennodejs plus_minus_ser_cli_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plus_minus_ser_cli_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(plus_minus_ser_cli
  "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plus_minus_ser_cli
)

### Generating Module File
_generate_module_py(plus_minus_ser_cli
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plus_minus_ser_cli
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(plus_minus_ser_cli_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(plus_minus_ser_cli_generate_messages plus_minus_ser_cli_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ton/catkin_ws/src/src_code/plus_minus_ser_cli/srv/plus_ser.srv" NAME_WE)
add_dependencies(plus_minus_ser_cli_generate_messages_py _plus_minus_ser_cli_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plus_minus_ser_cli_genpy)
add_dependencies(plus_minus_ser_cli_genpy plus_minus_ser_cli_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plus_minus_ser_cli_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plus_minus_ser_cli)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plus_minus_ser_cli
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(plus_minus_ser_cli_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET plus_minus_ser_cli_generate_messages_cpp)
  add_dependencies(plus_minus_ser_cli_generate_messages_cpp plus_minus_ser_cli_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plus_minus_ser_cli)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plus_minus_ser_cli
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(plus_minus_ser_cli_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET plus_minus_ser_cli_generate_messages_eus)
  add_dependencies(plus_minus_ser_cli_generate_messages_eus plus_minus_ser_cli_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plus_minus_ser_cli)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plus_minus_ser_cli
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(plus_minus_ser_cli_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET plus_minus_ser_cli_generate_messages_lisp)
  add_dependencies(plus_minus_ser_cli_generate_messages_lisp plus_minus_ser_cli_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plus_minus_ser_cli)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plus_minus_ser_cli
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(plus_minus_ser_cli_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET plus_minus_ser_cli_generate_messages_nodejs)
  add_dependencies(plus_minus_ser_cli_generate_messages_nodejs plus_minus_ser_cli_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plus_minus_ser_cli)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plus_minus_ser_cli\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plus_minus_ser_cli
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(plus_minus_ser_cli_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET plus_minus_ser_cli_generate_messages_py)
  add_dependencies(plus_minus_ser_cli_generate_messages_py plus_minus_ser_cli_generate_messages_py)
endif()
