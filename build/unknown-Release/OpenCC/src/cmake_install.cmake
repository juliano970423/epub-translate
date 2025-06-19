# Install script for directory: /home/juliano/Desktop/Epub_translate/OpenCC/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/tmp")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}/tmp/lib/libopencc.so.1.1.9"
      "$ENV{DESTDIR}/tmp/lib/libopencc.so.1.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "$ORIGIN:$ORIGIN/../lib")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/lib/libopencc.so.1.1.9;/tmp/lib/libopencc.so.1.1")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp/lib" TYPE SHARED_LIBRARY FILES
    "/home/juliano/Desktop/Epub_translate/build/unknown-Release/OpenCC/src/libopencc.so.1.1.9"
    "/home/juliano/Desktop/Epub_translate/build/unknown-Release/OpenCC/src/libopencc.so.1.1"
    )
  foreach(file
      "$ENV{DESTDIR}/tmp/lib/libopencc.so.1.1.9"
      "$ENV{DESTDIR}/tmp/lib/libopencc.so.1.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "::::::::::::::::::::::"
           NEW_RPATH "$ORIGIN:$ORIGIN/../lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/lib/libopencc.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp/lib" TYPE SHARED_LIBRARY FILES "/home/juliano/Desktop/Epub_translate/build/unknown-Release/OpenCC/src/libopencc.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/lib/libmarisa.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp/lib" TYPE STATIC_LIBRARY FILES "/home/juliano/Desktop/Epub_translate/build/unknown-Release/OpenCC/deps/marisa-0.2.6/libmarisa.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/tmp/lib/cmake/opencc/OpenCCTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}/tmp/lib/cmake/opencc/OpenCCTargets.cmake"
         "/home/juliano/Desktop/Epub_translate/build/unknown-Release/OpenCC/src/CMakeFiles/Export/674c6eae8a518e3b4813122839670748/OpenCCTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}/tmp/lib/cmake/opencc/OpenCCTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}/tmp/lib/cmake/opencc/OpenCCTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/lib/cmake/opencc/OpenCCTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp/lib/cmake/opencc" TYPE FILE FILES "/home/juliano/Desktop/Epub_translate/build/unknown-Release/OpenCC/src/CMakeFiles/Export/674c6eae8a518e3b4813122839670748/OpenCCTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/tmp/lib/cmake/opencc/OpenCCTargets-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "/tmp/lib/cmake/opencc" TYPE FILE FILES "/home/juliano/Desktop/Epub_translate/build/unknown-Release/OpenCC/src/CMakeFiles/Export/674c6eae8a518e3b4813122839670748/OpenCCTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/include/opencc/Common.hpp;/tmp/include/opencc/Config.hpp;/tmp/include/opencc/Conversion.hpp;/tmp/include/opencc/ConversionChain.hpp;/tmp/include/opencc/Converter.hpp;/tmp/include/opencc/Dict.hpp;/tmp/include/opencc/DictConverter.hpp;/tmp/include/opencc/DictEntry.hpp;/tmp/include/opencc/DictGroup.hpp;/tmp/include/opencc/Exception.hpp;/tmp/include/opencc/Export.hpp;/tmp/include/opencc/Lexicon.hpp;/tmp/include/opencc/MarisaDict.hpp;/tmp/include/opencc/MaxMatchSegmentation.hpp;/tmp/include/opencc/Optional.hpp;/tmp/include/opencc/PhraseExtract.hpp;/tmp/include/opencc/Segmentation.hpp;/tmp/include/opencc/Segments.hpp;/tmp/include/opencc/SerializableDict.hpp;/tmp/include/opencc/SerializedValues.hpp;/tmp/include/opencc/SimpleConverter.hpp;/tmp/include/opencc/TextDict.hpp;/tmp/include/opencc/UTF8StringSlice.hpp;/tmp/include/opencc/UTF8Util.hpp;/tmp/include/opencc/opencc.h;/tmp/include/opencc/opencc_config.h;/tmp/include/opencc/BinaryDict.hpp;/tmp/include/opencc/DartsDict.hpp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp/include/opencc" TYPE FILE FILES
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/Common.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/Config.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/Conversion.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/ConversionChain.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/Converter.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/Dict.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/DictConverter.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/DictEntry.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/DictGroup.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/Exception.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/Export.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/Lexicon.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/MarisaDict.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/MaxMatchSegmentation.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/Optional.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/PhraseExtract.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/Segmentation.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/Segments.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/SerializableDict.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/SerializedValues.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/SimpleConverter.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/TextDict.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/UTF8StringSlice.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/UTF8Util.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/opencc.h"
    "/home/juliano/Desktop/Epub_translate/build/unknown-Release/OpenCC/src/opencc_config.h"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/BinaryDict.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/DartsDict.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/juliano/Desktop/Epub_translate/build/unknown-Release/OpenCC/src/tools/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/juliano/Desktop/Epub_translate/build/unknown-Release/OpenCC/src/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
