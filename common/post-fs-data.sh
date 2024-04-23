#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

mount --bind $MODDIR/odm/lib/liboemcrypto.so /odm/lib/liboemcrypto.so
mount --bind $MODDIR/odm/lib/liboemcrypto.so /odm/lib/liboemcrypto.so
mount --bind $MODDIR/vendor/odm/lib/liboemcrypto.so /odm/lib/liboemcrypto.so
mount --bind $MODDIR/vendor/odm/lib/liboemcrypto.so /odm/lib/liboemcrypto.so

mount --bind $MODDIR/odm/lib64/liboemcrypto.so /odm/lib/liboemcrypto.so
mount --bind $MODDIR/odm/lib64/liboemcrypto.so /odm/lib/liboemcrypto.so
mount --bind $MODDIR/vendor/odm/lib64/liboemcrypto.so /odm/lib/liboemcrypto.so
mount --bind $MODDIR/vendor/odm/lib64/liboemcrypto.so /odm/lib/liboemcrypto.so
