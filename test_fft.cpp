#include <iostream>
#include "fft.h"

int main(){

    complex_vector data{1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0};

    fft(data);

    std::cout << "fft" << std::endl;
    for (size_t i = 0; i < data.size(); ++i)
    {
        std::cout << data[i] << std::endl;
    }

    ifft(data);

    std::cout << "ifft" << std::endl;
    for (size_t i = 0; i < data.size(); ++i)
    {
        std::cout << data[i] << std::endl;
    }

    return 0;
}