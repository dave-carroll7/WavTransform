#include <iostream>
#include "fft.h"

using namespace std;

complex_vector get_even(complex_vector &buffer, const size_t &size){
    
    complex_vector even;

    for (size_t i = 0; i < size; i+=2){
        even.push_back(buffer[i]);
    }

    return even;
}

complex_vector get_odd(complex_vector &buffer, const size_t &size){
    
    complex_vector odd;

    for (size_t i = 1; i < size; i+=2){
        odd.push_back(buffer[i]);
    }

    return odd;
}

void fft(complex_vector &buffer){
    
    const size_t N = buffer.size();
    
    if (N <= 1) return;

    complex_vector even = get_even(buffer, N);
    complex_vector odd = get_odd(buffer, N);

    fft(even);
    fft(odd);

    const complex_num primitive = std::polar (1.0, -2.0 * PI / N);

    for (size_t i = 0; i < N/2; ++i){
        const complex_num nth_root_times_odd = std::pow(primitive, i) * odd[i];
        
        buffer[i] = even[i] + nth_root_times_odd;
        buffer[i + N/2] = even[i] - nth_root_times_odd;
    }
}

void apply_conjugate(complex_vector &buffer){
    size_t size = buffer.size();
    
    for (size_t i = 0; i < size; ++i){
        buffer[i] = std::conj(buffer[i]);
    }
}

void normalize(complex_vector &buffer){
    size_t size = buffer.size();
    complex_num complex_size = complex_num(size); 
    
    for (size_t i = 0; i < size; ++i){
        buffer[i] = buffer[i] / complex_size;
    }
}

void ifft(complex_vector &buffer){
    apply_conjugate(buffer);

    fft(buffer);

    apply_conjugate(buffer);

    normalize(buffer);
}