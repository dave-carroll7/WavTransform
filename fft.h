#include <complex>
#include <vector>

using namespace std;

const double PI = 3.14159265358979323846264338327950288;

typedef std::complex<double> complex_num;
typedef std::vector<complex_num> complex_vector;

complex_vector get_even(complex_vector &buffer, const size_t &size);
complex_vector get_odd(complex_vector &buffer, const size_t &size);

void fft(complex_vector &buffer);

void apply_conjugate(complex_vector &buffer);
void normalize(complex_vector &buffer);
void ifft(complex_vector &buffer);