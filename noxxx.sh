#!/system/bin/sh

# Init.d

if [ ! -d /system/etc/init.d ]; then
	mkdir -p /system/etc/init.d/;
	chown -R root.root /system/etc/init.d;
	chmod 777 /system/etc/init.d/;
	chmod 777 /system/etc/init.d/*;
fi;

for FILE in /system/etc/init.d/*; do
	sh $FILE >/dev/null
done;

