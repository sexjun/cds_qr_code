#include <iostream>
#include <qrencode.h>
int main(int, char**) {
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
    std::cout << "Hello, world!\n";
}
