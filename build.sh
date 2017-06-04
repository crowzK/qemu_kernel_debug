cd linux
#make ARCH=arm versatile_defconfig

export ARCH=arm
export  CROSS_COMPILE=/srv/develop/beagle/02_toolchain/gcc-linaro-5.4.1-2017.01-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-

#make vexpress_defconfig
make menuconfig
make all

cd ..
${CROSS_COMPILE}gcc -static init.c -o init
echo init | cpio -o --format=newc > initrd

cp initrd linux
#qemu-system-arm -M versatilepb -m 128M -kernel arch/arm/boot/zImage -initrd initrd -append "root=/dev/ram rdinit=init"
#qemu-system-arm -M vexpress-a9 -cpu cortex-a9 -m 128M -kernel arch/arm/boot/zImage -initrd rootfs -serial stdio -append "root=/dev/ram rdinit=test console=ttyAMA0"



