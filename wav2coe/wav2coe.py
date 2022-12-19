# This script takes a wav file and turns it into a coe file. 
# This coe file can be used in Vivado to initialize ROM generated 
# with the Block Memory Generator.
# 
# Due to memory limitations, the playback can only be about 2 seconds
# long. The corresponding coe file contains 16-bit PCM data which is
# meant to be played back with a sample rate of 48 kHz.
#  
# If you plan to run this script, install the /wav2coe/requirements.txt
# with PIP. It is highly recommended to create a virtual environment
# first

# %%
import librosa
import soundfile
import math
from os.path import dirname, join, exists, basename
from os import makedirs
import sys


dirname = dirname(__file__)
# If no wav file path was passed, use ./data/mario.wav instead.
input_wav = join("data", "mario.wav") if len(sys.argv) <= 1 else sys.argv[1]
# Offset defines the amount of samples which should be skipped in the 
# beginning of a wav file. If no offset was passed, use 48000 + 13620.
# This offset was chosen so that the first samples are non-zero
offset = 48000 + 13620 if len(sys.argv) <= 2 else int(sys.argv[2])

input_wav_name = basename(input_wav)

# %%
# Load the MP3 file as a waveform and get the sample rate
print("Loading wav file...")
waveform, sample_rate = librosa.load(
    join(dirname, input_wav), sr=None)
print("Done!")

if not exists(join(dirname, "out")):
    makedirs(join(dirname, "out"))

# %%
# Check if the sample rate is already 48 kHz
if sample_rate != 48000:
    print(f"Resampling wav file to 48 kHz (previously {sample_rate} Hz)...")
    # If not, resample the waveform to 48 kHz without changing its pitch
    resampled = librosa.resample(
        waveform, orig_sr=sample_rate, target_sr=48000)
    resampled = resampled[offset: offset + 100_000]
    print("Saving resampled wav file 'out/converted.wav'...")
    soundfile.write(join(dirname, "out", "converted.wav"), resampled, 48000, "PCM_16")
    print("Done!")
else:
    # If the sample rate is already 48 kHz, use the original waveform
    resampled = waveform

# %%
# Turns a floating point number to a 16 bit signed hexadecimal number.
def float_to_16_hex(f: float) -> str:
    # Convert the float in the range of [-1.0, 1.0) to a 16-bit signed integer
    if not (-1.0 <= f < 1.0):
        raise ValueError(f"Float value {f} is not within [-1.0, 1.0)")

    i = int(math.floor((f + 1.0) * (2**15) - 2**15))
    if i < 0:
        i += 2 ** 16
    i += 0x10000
    # Convert the integer to a hex string
    hex_str = hex(i & 0x1ffff)
    # Return the hex string with the '0x' prefix removed
    return hex_str[3:]


# %%
print(f"Generating coe file 'out/{input_wav_name}.coe' for Vivado...")
with open(join(dirname, "out", f"{input_wav_name}.coe"), 'w') as coe:
    coe.write('memory_initialization_radix=16;\nmemory_initialization_vector=\n')
    for n in resampled:
        coe.write(f'{float_to_16_hex(n)},\n')
print("Done!")