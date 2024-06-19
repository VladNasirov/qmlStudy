# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appqmlAnimationTest_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appqmlAnimationTest_autogen.dir\\ParseCache.txt"
  "appqmlAnimationTest_autogen"
  )
endif()
