#
# Makefile for hisilicon camera flash driver
#
EXTRA_CFLAGS += -Idrivers/media/huawei/camera/sensor/flash
EXTRA_CFLAGS += -Idrivers/media/huawei/camera/
EXTRA_CFLAGS += -fno-pic

ifeq ($(TARGET_VERSION_MODE),factory)
EXTRA_CFLAGS += -DCAMERA_FLASH_FACTORY_TEST
endif 

obj-y += hw_flash_i2c.o
obj-y += hw_flash.o

#obj-y += tps61310.o

obj-$(CONFIG_HISI_CAMERA_LM3642) += lm3642.o
obj-$(CONFIG_HISI_CAMERA_MP3331) += mp3331.o
# obj-y += lm3642.o
#obj-y += += pmu_led.o
obj-$(CONFIG_HISI_CAMERA_LM3646) += lm3646.o
obj-$(CONFIG_HISI_CAMERA_MP3336) += mp3336.o
#obj-y += lm3646_front.o
obj-$(CONFIG_HISI_CAMERA_SCHARGER) += scharger_flash.o
