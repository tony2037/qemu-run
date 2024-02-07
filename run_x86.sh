qemu-system-x86_64 -machine q35\
    -kernel Image \
    -drive file=rootfs.ext4,if=virtio,format=raw \
    -append 'root=/dev/vda rw console=ttyS0' -vga none -display none \
    -serial mon:stdio
