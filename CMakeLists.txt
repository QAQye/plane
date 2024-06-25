cmake_minimum_required(VERSION 3.29)

project(
  Planes
  VERSION 0.1
  LANGUAGES CXX)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.7)

qt_add_executable(appPlanes main.cpp)

qt_add_qml_module(
  appPlanes
  URI
  Planes
  VERSION
  1.0
  QML_FILES
  Window.qml
  SOURCES
  RESOURCES
  imges.qrc
  QML_FILES
  Content.qml
  QML_FILES
  Dialogs.qml
  QML_FILES
  Actions.qml
  QML_FILES
  MainMap.qml
  QML_FILES
  FirstWindow.qml
  QML_FILES
  SecondWindow.qml
  QML_FILES
  Triangle.qml
  QML_FILES
  Controller.js
  QML_FILES
  QML_FILES
  MapRectangle.qml
  QML_FILES
  QML_FILES
  MusicPlay.qml
  QML_FILES
  Plane.qml
  QML_FILES
  PlaneController.js
  QML_FILES
  GameMap.qml)

target_compile_features(appPlanes PRIVATE cxx_std_20)

set_target_properties(
  appPlanes
  PROPERTIES AUTORCC TRUE
             MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
             MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
             MACOSX_BUNDLE_SHORT_VERSION_STRING
             ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
             MACOSX_BUNDLE TRUE
             WIN32_EXECUTABLE TRUE)

target_link_libraries(appPlanes PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(
  TARGETS appPlanes
  BUNDLE DESTINATION .
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

# qt_add_executable(Planes)  //Creates and finalizes an application target of a
# platform-specific type. This command performs the following tasks: 1. Create a
# CMake target of the appropriate type for the target platform. 2. Link the
# target to the Qt::Core library. 3. Handle finalization of the CMake target.

# qt_standard_project_setup()     #set(CMAKE_AUTOUIC ON)  set(CMAKE_AUTOMOC ON)

# @if %{HasTranslation} find_package(Qt6 REQUIRED COMPONENTS Core Quick
# LinguistTools) @else find_package(Qt6 REQUIRED COMPONENTS Core Quick) @endif

# target_sources(appPlanes PRIVATE main.cpp qml.qrc @if %{HasTranslation}
# %{TsFileName} @endif
#
# PUBLIC
#
# )

# qt_import_qml_plugins(Planes)

# cmake_minimum_required(VERSION 3.16)
#
# project(Planes VERSION 0.1 LANGUAGES CXX)
#
# @if !true set(CMAKE_AUTOMOC ON) @endif set(CMAKE_CXX_STANDARD_REQUIRED ON)
#
# find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)
#
# @if true @if true qt_standard_project_setup(REQUIRES 6.5) @else
# qt_standard_project_setup() @endif @endif
#
# qt_add_executable(appPlanes main.cpp )
#
# qt_add_qml_module(appPlanes URI Planes VERSION 1.0 QML_FILES Main.qml )
#
# # Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1. #
# If you are developing for iOS or macOS you should consider setting an #
# explicit, fixed bundle identifier manually though.
# set_target_properties(appPlanes PROPERTIES #    MACOSX_BUNDLE_GUI_IDENTIFIER
# com.example.appPlanes MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
# MACOSX_BUNDLE_SHORT_VERSION_STRING
# ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR} MACOSX_BUNDLE TRUE
# WIN32_EXECUTABLE TRUE )
#
# target_link_libraries(appPlanes PRIVATE Qt6::Quick )
#
# include(GNUInstallDirs) install(TARGETS appPlanes BUNDLE DESTINATION . LIBRARY
# DESTINATION ${CMAKE_INSTALL_LIBDIR} RUNTIME DESTINATION
# ${CMAKE_INSTALL_BINDIR} )
