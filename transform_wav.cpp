#include <iostream>

#include "transform_wav.h"
#include "AudioFile/AudioFile.h"
#include "fft.h"

using namespace std;

const int BUFFER_SIZE = 512;
int NUM_CHANNELS;
int NUM_SAMPLES;
int BIT_DEPTH;
uint32_t SAMPLE_RATE;

complex_vector slice_buffer(std::vector<double> &buffer, int start_sample){
    
    complex_vector slice;
    
    for (int i = 0; i < BUFFER_SIZE; ++i){
        slice.push_back(complex_num(buffer[i+start_sample], 0.0));
    }

    return slice;
}

void write_to_output(complex_vector &buffer_block, AudioFile<double>::AudioBuffer &output_buffer, int &start_sample, int &channel){

    for (int i = 0; i < BUFFER_SIZE; ++i){
        output_buffer[channel][start_sample * BUFFER_SIZE + i] = buffer_block[i].real();
    }
}

void process_buffer(AudioFile<double>::AudioBuffer &input_buffer, AudioFile<double>::AudioBuffer &output_buffer){

    for (int i = 0; i < NUM_SAMPLES/BUFFER_SIZE; ++i){
        for (int j = 0; j < NUM_CHANNELS; ++j){
            complex_vector buffer_block = slice_buffer(input_buffer[j], i*BUFFER_SIZE);

            fft(buffer_block);

            //do some stuff in freq domain :]

            ifft(buffer_block);
            
            write_to_output(buffer_block, output_buffer, i, j);
        }
    }
}

void load_input_file_info(AudioFile<double> &input_file){
    NUM_CHANNELS = input_file.getNumChannels();
    NUM_SAMPLES = input_file.getNumSamplesPerChannel();
    BIT_DEPTH = input_file.getBitDepth();
    SAMPLE_RATE = input_file.getSampleRate();
}

void prepare_output_buffer(AudioFile<double>::AudioBuffer &output_buffer){
    output_buffer.resize(NUM_CHANNELS);

    for (int i = 0; i < NUM_CHANNELS; ++i){
        output_buffer[i].resize(NUM_SAMPLES);
    }
}

void prepare_output_file(AudioFile<double> &output_file){
    output_file.setBitDepth(BIT_DEPTH);
    output_file.setNumChannels(NUM_CHANNELS);
    output_file.setSampleRate(SAMPLE_RATE);
}

int main(int argc, char *argv[]){

    const std::string test_path = "/Users/davecarroll/Projects/Audio/FFT/inbetween.wav";

    AudioFile<double> input_file;
    input_file.load(test_path);

    load_input_file_info(input_file);

    AudioFile<double>::AudioBuffer input_buffer = input_file.samples;

    AudioFile<double>::AudioBuffer output_buffer;
    prepare_output_buffer(output_buffer);

    process_buffer(input_buffer, output_buffer);

    AudioFile<double> output_file;
    prepare_output_file(output_file);
    output_file.setAudioBuffer(output_buffer);

    output_file.save("/Users/davecarroll/Projects/Audio/FFT/output.wav", AudioFileFormat::Wave);

    return 0;
}