qemu-system-aarch64 -machine virt -cpu cortex-a57 -machine type=virt -nographic -smp 1 -m 2048 -kernel Image -hda cloud.img --append "console=ttyAMA0"
