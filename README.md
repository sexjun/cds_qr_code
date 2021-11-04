# cds_qr_code
cds`s using c/c++ generite qr code

> cds`s using c/c++ generite qr code

这个是个人学习如何使用 `libqrencode` 生成二维码的的教程，使用的编译环境是cmake，使用本仓库代码测试请使用指令：

## 使用教程

官方仓库的readme我研读过了，使用教程就二句话有用
1. Basic usages of this library are written in the header file (qrencode.h).
2. 在线文档：https://fukuchi.org/works/qrencode/manual/index.html
总结就是：
基本使用技巧在文件qrencode.h中有注释，更详细的说明可以看在线文档。

这个库呢虽然是用来生成二维码的，但是库本身并不会产生一个可以使用的二维码，还需要自己将二维码绘制出来，在嵌入式MCU中一般采取LCD绘图的机制，否则在通常情况下呢一般采用libpng这个库来生成一张可以保存的二维码图片，官方也写了这部分代码，在测试程序里面，需要的用户可以自己去查看下。
### 编码字符串

假如你想编码：
```
www.google.com
```
这个链接本身是一个字串，我们可以使用接口`QRcode_encodeString`
```c
/**
 * Create a symbol from the string. The library automatically parses the input
 * string and encodes in a QR Code symbol.
 * @warning This function is THREAD UNSAFE when pthread is disabled.
 * @param string input string. It must be NUL terminated.
 * @param version version of the symbol. If 0, the library chooses the minimum
 *                version for the given input data.
 * @param level error correction level.
 * @param hint tell the library how Japanese Kanji characters should be
 *             encoded. If QR_MODE_KANJI is given, the library assumes that the
 *             given string contains Shift-JIS characters and encodes them in
 *             Kanji-mode. If QR_MODE_8 is given, all of non-alphanumerical
 *             characters will be encoded as is. If you want to embed UTF-8
 *             string, choose this. Other mode will cause EINVAL error.
 * @param casesensitive case-sensitive(1) or not(0).
 * @return an instance of QRcode class. The version of the result QRcode may
 *         be larger than the designated version. On error, NULL is returned,
 *         and errno is set to indicate the error. See Exceptions for the
 *         details.
 * @throw EINVAL invalid input object.
 * @throw ENOMEM unable to allocate memory for input objects.
 * @throw ERANGE input data is too large.
 */
extern QRcode *QRcode_encodeString(const char *string, int version, QRecLevel level, QRencodeMode hint, int casesensitive);
```
- 调用函数

将string传入这个参数，然后version是版本，一般传入0， QRecLevel是一个枚举，代表生成二维码的密度（容错率）
```c
typedef enum {
	QR_ECLEVEL_L = 0, ///< lowest
	QR_ECLEVEL_M,
	QR_ECLEVEL_Q,
	QR_ECLEVEL_H      ///< highest
} QRecLevel;
```
QRencodeMode也是一个枚举，一般采用`QR_MODE_8`。
casesensitive是大小写敏感控制开关，传入1时，大小写不敏感，传入0时，大小写敏感。这个看个人需求。

这个函数返回的类型是：`QRcode`
这个结构体的类型定义为：
```c
typedef struct {
	int version;         ///< version of the symbol
	int width;           ///< width of the symbol
	unsigned char *data; ///< symbol data
} QRcode;
```
其中version就是二维码的版本，width就是正方形二维码的宽度，高度也是这个数值。data区域就是二维码的数值，当（data[position] & (0x01) == 1）
的时候，代表这个坐标的点是黑色的，需要绘制出来，否则就是白色背景，不需要绘制。

- 一个简单的例子
```c

    const char* str = "这里是需要编码的字串";
    QRcode* qr_code_info = QRcode_encodeString(str, 0, QR_ECLEVEL_L, QR_MODE_8, 1);

    for (int i = 0; i < qr_code_info->width; i++) {
        for (int j = 0; j < qr_code_info->width; j++) {
            if ((qr_code_info->data[i * qr_code_info->width + j]) & (0x01)) {
                std::cout << "#";
            } else {
                std::cout << " ";
            }
        }
        std::cout << std::endl;
    }
```

### 编码结构
You can construct a structured input data manually. If the structure of the input data is known, you can use this method. At first, create a QRinput object by QRinput_new(). Then add input data to the QRinput object by QRinput_append(). Finally call QRcode_encodeInput() to encode the QRinput data. You can reuse the QRinput object again to encode it in other symbols with different parameters.


## 文件结构
- 我使用了git的子模块

我复制了一份仓库到自己的仓库，将其变成了我这个教程仓库的子模块。我的仓库链接为：
```git
git@github.com:sexjun/libqrencode.git
```
当你想要拉取本仓库的时候，你应该使用指令：

```git
git clone git@github.com:sexjun/cds_qr_code.git
git submodel init
git submodel uodate
可以合并为一个指令：
git submodule update --init --recursive
```

## 命令备注

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
