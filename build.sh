cd linux
#make ARCH=arm versatile_defconfig
make ARCH=arm vexpress_defconfig
make ARCH=arm menuconfig
make ARCH=arm CROSS_COMPILE=/srv/develop/beagle/02_toolchain/gcc-linaro-5.4.1-2017.01-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- all

#qemu-system-arm -M versatilepb -m 128M -kernel arch/arm/boot/zImage -initrd initrd -append "root=/dev/ram rdinit=init"
#qemu-system-arm -M vexpress-a9 -cpu cortex-a9 -m 128M -kernel arch/arm/boot/zImage -initrd rootfs -serial stdio -append "root=/dev/ram rdinit=test console=ttyAMA0"



