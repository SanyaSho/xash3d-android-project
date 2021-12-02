ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_CFLAGS += $(CFLAGS_OPT_ARM) -mfloat-abi=softfp
endif
ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
LOCAL_CFLAGS += $(CFLAGS_OPT_ARM64)
endif
ifeq ($(TARGET_ARCH_ABI),x86)
LOCAL_CFLAGS += $(CFLAGS_OPT_X86)
endif
ifeq ($(TARGET_ARCH_ABI),x86_64)
LOCAL_CFLAGS += $(CFLAGS_OPT_X86_64)
endif

ifneq ($(XASH_THREAD_NUM),0)
ifneq (,$(findstring $(LOCAL_MODULE),nanogl server client))
#LOCAL_LDFLAGS += -fopenmp -ftree-parallelize-loops=$(XASH_THREAD_NUM)
LOCAL_CFLAGS += -ftree-parallelize-loops=$(XASH_THREAD_NUM)
endif
LOCAL_LDFLAGS += -fopenmp -ftree-parallelize-loops=$(XASH_THREAD_NUM)
# this works only if single ABI selected
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_studio.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/cl_game.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/cl_frame.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/cl_parse.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_warp.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
#obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/cl_main.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
#obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/cl_tent.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/cl_events.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_sprite.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_image.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_cull.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
#obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_rpart.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
#obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_beams.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)

obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_rlight.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
#obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_rsurf.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_rmain.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)

#obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/s_dsp.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
#obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/s_utils.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/s_vox.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/s_mouth.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/s_stream.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/s_load.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
#obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/s_mix.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_draw.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/client/gl_decals.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/soundlib/snd_wav.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/imagelib/img_tga.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/imagelib/img_wad.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/imagelib/img_bmp.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/imagelib/img_quant.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
#obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/console.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/net_buffer.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/net_encode.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/mod_studio.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/pm_trace.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/pm_surface.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/cvar.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/cmd.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/network.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/crtlib.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/crclib.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/filesystem.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/infostring.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/gamma.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/mathlib.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/matrixlib.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/common/touch.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/server/sv_move.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/server/sv_pmove.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/server/sv_world.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/server/sv_phys.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
obj/local/$(TARGET_ARCH_ABI)/objs/xash/server/sv_frame.o: override PRIVATE_CC = $(TARGET_CC) -ftree-parallelize-loops=$(XASH_THREAD_NUM)
endif
