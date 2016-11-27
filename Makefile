#SDK_PATH=/usr/local/cuda
SDK_PATH=/opt/AMDAPPSDK-3.0
SDK_ARCH=x86_64
CC?=gcc
CFLAGS=-O3
LDFLAGS=-lpci -lOpenCL -lz

amdmeminfo: amdmeminfo.c
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS) -I$(SDK_PATH)/include -L$(SDK_PATH)/lib/$(SDK_ARCH)

clean:
	rm -f amdmeminfo *.o
