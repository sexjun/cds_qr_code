# cds_qr_code
cds`s using c/c++ generite qr code

- git submodel
```c
1. 新增
git submodel add url

2. 更新/提交
在子模块里面，执行原本的git命令就好。

3. 批量让子库执行指令
git submodule foreach  ‘cmd“

4. 删除子模块
git submodel deinit 子模块名字


5. 下载最新的代码后下载新代码里的子模块代码
git submodel init
git submodel uodate
可以合并为一个指令：
git submodule update --init --recursive


```

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
