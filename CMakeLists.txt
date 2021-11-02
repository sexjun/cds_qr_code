cmake_minimum_required(VERSION 3.0.0)
project(cds_qr_code VERSION 0.1.0)

include(CTest)
enable_testing()

add_subdirectory("libqrencode")
include_directories("libqrencode/")

add_executable(cds_qr_code main.cpp)
target_link_libraries(cds_qr_code qrencode)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
