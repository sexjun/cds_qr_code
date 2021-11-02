# cds_qr_code
cds`s using c/c++ generite qr code



- using vcpkg install qrencode
```shell

    find_path(QRENCODE_INCLUDE_DIR NAMES qrencode.h)
    find_library(QRENCODE_LIBRARY_RELEASE qrencode)
    find_library(QRENCODE_LIBRARY_DEBUG qrencoded)
    set(QRENCODE_LIBRARIES optimized ${QRENCODE_LIBRARY_RELEASE} debug ${QRENCODE_LIBRARY_DEBUG})

    add_executable(main main.cpp)
    target_include_directories(main PRIVATE ${QRENCODE_INCLUDE_DIR})
    target_link_libraries(main PRIVATE ${QRENCODE_LIBRARIES})
```
