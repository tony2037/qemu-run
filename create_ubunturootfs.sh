# Ubuntu Base is a minimal rootfs for use in the creation of custom images for specific needs. Ubuntu Base strives to create a suitable minimal environment for use in Board Support Packages, constrained or integrated environments, as the basis for application demonstration images, or Linux containers such as LXC or Docker (For OCI/docker container images, see also the Ubuntu OCI project). It is available for the i386, amd64, armhf, arm64, powerpc and ppc64el architectures.
#
wget https://cdimage.ubuntu.com/ubuntu-base/releases/20.04/release/ubuntu-base-20.04.1-base-amd64.tar.gz

dd if=/dev/zero of=rootfs.img bs=1024 count=10M
mkfs.ext4 disk.img
sudo mount disk.img /mnt
tar xvf ubuntu-base-20.04.1-base-amd64.tar.gz -C /mnt
find /mnt -print0 | cpio --null -ov --format=newc | gzip -9 > initramfs.cpio.gz
sudo umount /mnt
