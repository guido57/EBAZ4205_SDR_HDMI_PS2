import ctypes
import time
import numpy as np

# Carica la shared library in C
lib = ctypes.CDLL('libCapture_RF_lib.so')

# Define the signature of the C function captureread2048
#lib.captureread2048.argtypes = (ctypes.POINTER(ctypes.c_int), ctypes.c_int)
lib.captureread2048.argtypes = [ctypes.POINTER(ctypes.c_int)]
lib.captureread2048.restype = ctypes.c_int#

# Define the signature of the C function get_devuio
lib.get_devuio.restype = ctypes.c_char_p
devuio = lib.get_devuio()

# Define the signature of the C function set_devuio
lib.set_devuio.argtypes = [ctypes.c_char_p]
lib.set_devuio(b"/dev/uio6")

# Create an array of 2048 integers
#my_array = [0] * 2048
my_array = np.zeros(2048, dtype=np.int32)

# Convert it to a C array
c_array = (ctypes.c_int * len(my_array))(*my_array)

# Chiama la funzione in C, passando l'array di C
start = time.time()
result = lib.captureread2048(c_array)
elapsed_secs =  time.time() - start

# Stampa il risultato
print("captureread2048 returned: ", result)
print("capturing 2048 words took ", elapsed_secs, " seconds")
print("i primi 16 valori sono:")
for i in range(16):
    print ("[", i,"] ", hex(c_array[i]))
