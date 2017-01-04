# GNU Make project makefile autogenerated by GENie
ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(MAKESHELL)))
  SHELLTYPE := posix
endif

ifeq (posix,$(SHELLTYPE))
  MKDIR = $(SILENT) mkdir -p "$(1)"
  COPY  = $(SILENT) cp -fR "$(1)" "$(2)"
  RM    = $(SILENT) rm -f "$(1)"
else
  MKDIR = $(SILENT) mkdir "$(subst /,\\,$(1))" 2> nul || exit 0
  COPY  = $(SILENT) copy /Y "$(subst /,\\,$(1))" "$(subst /,\\,$(2))"
  RM    = $(SILENT) del /F "$(subst /,\\,$(1))" 2> nul || exit 0
endif

CC  = gcc
CXX = g++
AR  = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

MAKEFILE = VirtualFileSystem.make

ifeq ($(config),debug32)
  OBJDIR              = obj/x32/Debug
  TARGETDIR           = Build
  TARGET              = $(TARGETDIR)/VirtualFileSystem.exe
  DEFINES            += -DPLATFORM_Linux
  INCLUDES           +=
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m32 -std=c++14
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m32
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -s -m32
  LDDEPS             +=
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJECTS := \
	$(OBJDIR)/FileSystem.o \
	$(OBJDIR)/LinuxFile.o \
	$(OBJDIR)/VirtualFileSystem.o \
	$(OBJDIR)/WindowsFile.o \
	$(OBJDIR)/stdafx.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = obj/x32/Release
  TARGETDIR           = Build
  TARGET              = $(TARGETDIR)/VirtualFileSystem.exe
  DEFINES            += -DPLATFORM_Linux
  INCLUDES           +=
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m32 -std=c++14
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m32
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -s -m32
  LDDEPS             +=
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJECTS := \
	$(OBJDIR)/FileSystem.o \
	$(OBJDIR)/LinuxFile.o \
	$(OBJDIR)/VirtualFileSystem.o \
	$(OBJDIR)/WindowsFile.o \
	$(OBJDIR)/stdafx.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = obj/x64/Debug
  TARGETDIR           = Build
  TARGET              = $(TARGETDIR)/VirtualFileSystem.exe
  DEFINES            += -DPLATFORM_Linux
  INCLUDES           +=
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m64 -std=c++14
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m64
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -s -m64
  LDDEPS             +=
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJECTS := \
	$(OBJDIR)/FileSystem.o \
	$(OBJDIR)/LinuxFile.o \
	$(OBJDIR)/VirtualFileSystem.o \
	$(OBJDIR)/WindowsFile.o \
	$(OBJDIR)/stdafx.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = obj/x64/Release
  TARGETDIR           = Build
  TARGET              = $(TARGETDIR)/VirtualFileSystem.exe
  DEFINES            += -DPLATFORM_Linux
  INCLUDES           +=
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m64 -std=c++14
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -m64
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -s -m64
  LDDEPS             +=
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJECTS := \
	$(OBJDIR)/FileSystem.o \
	$(OBJDIR)/LinuxFile.o \
	$(OBJDIR)/VirtualFileSystem.o \
	$(OBJDIR)/WindowsFile.o \
	$(OBJDIR)/stdafx.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = obj/Debug
  TARGETDIR           = Build
  TARGET              = $(TARGETDIR)/VirtualFileSystem.exe
  DEFINES            += -DPLATFORM_Linux
  INCLUDES           +=
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH)
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH)
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -std=c++14
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH)
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH)
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -s
  LDDEPS             +=
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJECTS := \
	$(OBJDIR)/FileSystem.o \
	$(OBJDIR)/LinuxFile.o \
	$(OBJDIR)/VirtualFileSystem.o \
	$(OBJDIR)/WindowsFile.o \
	$(OBJDIR)/stdafx.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = obj/Release
  TARGETDIR           = Build
  TARGET              = $(TARGETDIR)/VirtualFileSystem.exe
  DEFINES            += -DPLATFORM_Linux
  INCLUDES           +=
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH)
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH)
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -std=c++14
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH)
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH)
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -s
  LDDEPS             +=
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJECTS := \
	$(OBJDIR)/FileSystem.o \
	$(OBJDIR)/LinuxFile.o \
	$(OBJDIR)/VirtualFileSystem.o \
	$(OBJDIR)/WindowsFile.o \
	$(OBJDIR)/stdafx.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/. \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) prebuild prelink $(TARGET) | $(TARGETDIR)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(EXTERNAL_LIBS) $(RESOURCES) | $(TARGETDIR) $(OBJDIRS)
	@echo Linking VirtualFileSystem
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning VirtualFileSystem
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) -x c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"

$(GCH_OBJC): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) -x objective-c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"
endif

$(OBJDIR)/FileSystem.o: FileSystem.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/LinuxFile.o: LinuxFile.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/VirtualFileSystem.o: VirtualFileSystem.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/WindowsFile.o: WindowsFile.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/stdafx.o: stdafx.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
