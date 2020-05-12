export KERNEL_VERSION=$(ls -tr /boot/initrd.img-*surface | sort -r |  grep -m 1 surface | awk -F"-" '{ print $2 }')

echo Found version: $KERNEL_VERSION


sudo sbsign --key MOK.priv --cert MOK.pem /boot/vmlinuz-$KERNEL_VERSION-surface --output /boot/vmlinuz-$KERNEL_VERSION-surface.signed



sudo cp /boot/initrd.img-$KERNEL_VERSION-surface /boot/initrd.img-$KERNEL_VERSION-surface.signed

sudo update-grub
