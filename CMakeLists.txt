cmake_minimum_required(VERSION 3.21)
project(TheOS VERSION 0.0.1 LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core)
qt_standard_project_setup()

add_executable(${PROJECT_NAME} ./src/main.cpp)
target_link_libraries(
  ${PROJECT_NAME}
  Qt6::Core
)
