KDIR=/lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

obj-m := usbtv.o

usbtv-objs :=  usbtv-video.o usbtv-audio.o usbtv-core.o


default:
	make -C $(KDIR) M=$(PWD) modules
install :
	make -C $(KDIR) M=$(PWD) modules_install
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

