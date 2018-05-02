set disassembly-flavor intel

# source /opt/peda/peda.py
source /opt/pwndbg/gdbinit.py
# source /home/nemesis/.gdbinit-gef.py
# source /usr/local/lib/python3.5/dist-packages/voltron/entry.py

# set follow-fork-mode child
# set solib-search-path /home/nemesis/Downloads/mate2
# set environment LD_PRELOAD=/home/nemesis/Downloads/libc_32.so.6

# Arm Exploitation
# qemu-arm -g <port> <binary>
# gdb-multiarch <binary>
# set architecture arm
# target remote localhost:1337

# View libc source code in gdb
# sudo apt-get install glibc-source
# sudo apt-get install libc6-dbg
# sudo tar xf /usr/src/glibc/glibc-< version >.tar.xz

# directory /usr/src/glibc/glibc-2.24/time

