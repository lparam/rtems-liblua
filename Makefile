ARCH           ?= arm-rtems4.11
ARCH_FLAGS 	   ?= -mcpu=cortex-a8
BSP            ?= beagleboneblack
BSP_BASE 	   ?= $(HOME)/rtems/bsps

INSTALL_INC = $(BSP_BASE)/$(ARCH)/$(BSP)/lib/include
INSTALL_LIB = $(BSP_BASE)/$(ARCH)/$(BSP)/lib

INSTALL= install -p
INSTALL_DATA= $(INSTALL) -m 0644

TO_INC= lua.h luaconf.h lualib.h lauxlib.h lua.hpp
TO_LIB= liblua.a

export ARCH ARCH_FLAGS

all clean:
	cd src && $(MAKE) $@

install:
	cd src && $(INSTALL_DATA) $(TO_INC) $(INSTALL_INC)
	cd src && $(INSTALL_DATA) $(TO_LIB) $(INSTALL_LIB)

.PHONY: all clean
