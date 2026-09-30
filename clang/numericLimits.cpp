#include <iostream>
#include <limits>
int main(){
    unsigned int digitosFloat, digitosDouble, radixDouble, radixFloat;
    digitosFloat = std::numeric_limits<float>::digits;
    digitosDouble = std::numeric_limits<double>::digits;
    radixFloat = std::numeric_limits<float>::radix;
    radixDouble = std::numeric_limits<double>::radix;
    std::cout << "Dígitos para float: " << digitosFloat << std::endl;
    std::cout << "Dígitos para double: " << digitosDouble << std::endl;
    std::cout << "Base para float: " << radixFloat << std::endl;
    std::cout << "Base para double: " << radixDouble << std::endl;
}