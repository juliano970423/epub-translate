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
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/juliano/Android/Sdk/ndk/26.1.10909125/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libopencc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libopencc.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/lib/libopencc.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libopencc.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES "/home/juliano/Desktop/Epub_translate/build/Android_Qt_6_9_0_android_x86_64_Clang_x86_64-Debug/OpenCC/src/libopencc.so")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libopencc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libopencc.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/home/juliano/Android/Sdk/ndk/26.1.10909125/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-strip" "$ENV{DESTDIR}/usr/local/lib/libopencc.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libmarisa.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/lib" TYPE STATIC_LIBRARY FILES "/home/juliano/Desktop/Epub_translate/build/Android_Qt_6_9_0_android_x86_64_Clang_x86_64-Debug/OpenCC/deps/marisa-0.2.6/libmarisa.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/cmake/opencc/OpenCCTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}/usr/local/lib/cmake/opencc/OpenCCTargets.cmake"
         "/home/juliano/Desktop/Epub_translate/build/Android_Qt_6_9_0_android_x86_64_Clang_x86_64-Debug/OpenCC/src/CMakeFiles/Export/e1b398400190183a7e8c9e5d5dc654ac/OpenCCTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}/usr/local/lib/cmake/opencc/OpenCCTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}/usr/local/lib/cmake/opencc/OpenCCTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/cmake/opencc/OpenCCTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/lib/cmake/opencc" TYPE FILE FILES "/home/juliano/Desktop/Epub_translate/build/Android_Qt_6_9_0_android_x86_64_Clang_x86_64-Debug/OpenCC/src/CMakeFiles/Export/e1b398400190183a7e8c9e5d5dc654ac/OpenCCTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/usr/local/lib/cmake/opencc/OpenCCTargets-debug.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "/usr/local/lib/cmake/opencc" TYPE FILE FILES "/home/juliano/Desktop/Epub_translate/build/Android_Qt_6_9_0_android_x86_64_Clang_x86_64-Debug/OpenCC/src/CMakeFiles/Export/e1b398400190183a7e8c9e5d5dc654ac/OpenCCTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/opencc/Common.hpp;/usr/local/include/opencc/Config.hpp;/usr/local/include/opencc/Conversion.hpp;/usr/local/include/opencc/ConversionChain.hpp;/usr/local/include/opencc/Converter.hpp;/usr/local/include/opencc/Dict.hpp;/usr/local/include/opencc/DictConverter.hpp;/usr/local/include/opencc/DictEntry.hpp;/usr/local/include/opencc/DictGroup.hpp;/usr/local/include/opencc/Exception.hpp;/usr/local/include/opencc/Export.hpp;/usr/local/include/opencc/Lexicon.hpp;/usr/local/include/opencc/MarisaDict.hpp;/usr/local/include/opencc/MaxMatchSegmentation.hpp;/usr/local/include/opencc/Optional.hpp;/usr/local/include/opencc/PhraseExtract.hpp;/usr/local/include/opencc/Segmentation.hpp;/usr/local/include/opencc/Segments.hpp;/usr/local/include/opencc/SerializableDict.hpp;/usr/local/include/opencc/SerializedValues.hpp;/usr/local/include/opencc/SimpleConverter.hpp;/usr/local/include/opencc/TextDict.hpp;/usr/local/include/opencc/UTF8StringSlice.hpp;/usr/local/include/opencc/UTF8Util.hpp;/usr/local/include/opencc/opencc.h;/usr/local/include/opencc/opencc_config.h;/usr/local/include/opencc/BinaryDict.hpp;/usr/local/include/opencc/DartsDict.hpp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/include/opencc" TYPE FILE FILES
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
    "/home/juliano/Desktop/Epub_translate/build/Android_Qt_6_9_0_android_x86_64_Clang_x86_64-Debug/OpenCC/src/opencc_config.h"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/BinaryDict.hpp"
    "/home/juliano/Desktop/Epub_translate/OpenCC/src/DartsDict.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/juliano/Desktop/Epub_translate/build/Android_Qt_6_9_0_android_x86_64_Clang_x86_64-Debug/OpenCC/src/tools/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/juliano/Desktop/Epub_translate/build/Android_Qt_6_9_0_android_x86_64_Clang_x86_64-Debug/OpenCC/src/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
