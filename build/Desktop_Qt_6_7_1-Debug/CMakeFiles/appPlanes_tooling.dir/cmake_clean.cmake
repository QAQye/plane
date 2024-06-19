file(REMOVE_RECURSE
  "Planes/Actions.qml"
  "Planes/Content.qml"
  "Planes/Control.js"
  "Planes/Dialogs.qml"
  "Planes/FirstWindow.qml"
  "Planes/MainMap.qml"
  "Planes/SecondWindow.qml"
  "Planes/Triangle.qml"
  "Planes/Window.qml"
  "Planes/imges.qrc"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/appPlanes_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
