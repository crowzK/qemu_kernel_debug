

cd linux
 qemu-system-arm -M vexpress-a9 -cpu cortex-a9 -m 128M -kernel arch/arm/boot/zImage -initrd initrd -serial stdio -append "root=/dev/ram rdinit=init console=ttyAMA0" -dtb arch/arm/boot/dts/vexpress-v2p-ca9.dtb


