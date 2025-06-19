# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appEpub_translate_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appEpub_translate_autogen.dir/ParseCache.txt"
  "OpenCC/deps/marisa-0.2.6/CMakeFiles/marisa_autogen.dir/AutogenUsed.txt"
  "OpenCC/deps/marisa-0.2.6/CMakeFiles/marisa_autogen.dir/ParseCache.txt"
  "OpenCC/deps/marisa-0.2.6/marisa_autogen"
  "OpenCC/src/CMakeFiles/libopencc_autogen.dir/AutogenUsed.txt"
  "OpenCC/src/CMakeFiles/libopencc_autogen.dir/ParseCache.txt"
  "OpenCC/src/libopencc_autogen"
  "OpenCC/src/tools/CMakeFiles/opencc_autogen.dir/AutogenUsed.txt"
  "OpenCC/src/tools/CMakeFiles/opencc_autogen.dir/ParseCache.txt"
  "OpenCC/src/tools/CMakeFiles/opencc_dict_autogen.dir/AutogenUsed.txt"
  "OpenCC/src/tools/CMakeFiles/opencc_dict_autogen.dir/ParseCache.txt"
  "OpenCC/src/tools/CMakeFiles/opencc_phrase_extract_autogen.dir/AutogenUsed.txt"
  "OpenCC/src/tools/CMakeFiles/opencc_phrase_extract_autogen.dir/ParseCache.txt"
  "OpenCC/src/tools/opencc_autogen"
  "OpenCC/src/tools/opencc_dict_autogen"
  "OpenCC/src/tools/opencc_phrase_extract_autogen"
  "appEpub_translate_autogen"
  )
endif()
