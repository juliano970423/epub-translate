#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "OpenCC::OpenCC" for configuration "Debug"
set_property(TARGET OpenCC::OpenCC APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(OpenCC::OpenCC PROPERTIES
  IMPORTED_LOCATION_DEBUG "/tmp/lib/libopencc.so.1.1.9"
  IMPORTED_SONAME_DEBUG "libopencc.so.1.1"
  )

list(APPEND _cmake_import_check_targets OpenCC::OpenCC )
list(APPEND _cmake_import_check_files_for_OpenCC::OpenCC "/tmp/lib/libopencc.so.1.1.9" )

# Import target "OpenCC::marisa" for configuration "Debug"
set_property(TARGET OpenCC::marisa APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(OpenCC::marisa PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/tmp/lib/libmarisa.a"
  )

list(APPEND _cmake_import_check_targets OpenCC::marisa )
list(APPEND _cmake_import_check_files_for_OpenCC::marisa "/tmp/lib/libmarisa.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
