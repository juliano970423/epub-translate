cmake_minimum_required(VERSION 3.16)

project(Epub_translate VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS LinguistTools)
find_package(KF6Archive)


qt_standard_project_setup(REQUIRES 6.8)
add_subdirectory(OpenCC)
set(CMAKE_AUTORCC ON)
qt_add_executable(appEpub_translate
    main.cpp Resources.qrc
)

qt_add_translations(appEpub_translate TS_FILES )

qt_add_qml_module(appEpub_translate
    URI Epub_translate
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES Resources.qrc
        SOURCES Convert.h Convert.cpp
        SOURCES
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appEpub_translate PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appEpub_translate
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appEpub_translate
    PRIVATE Qt6::Quick
    libopencc
    KF6::Archive
)

# 创建一个自定义目标来复制文件
add_custom_target(copy_opencc_data ALL
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_BINARY_DIR}/OpenCC_config
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_BINARY_DIR}/OpenCC/data ${CMAKE_BINARY_DIR}/OpenCC_config
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/OpenCC/data/config ${CMAKE_BINARY_DIR}/OpenCC_config
    DEPENDS libopencc  # 确保在libopencc编译完成后执行
)
include(GNUInstallDirs)
install(TARGETS appEpub_translate
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
