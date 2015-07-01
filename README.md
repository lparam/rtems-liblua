retems-liblua
=================
RTEMS lua Porting project

BUILD
------------
```bash
make ARCH=arm-rtems4.11 ARCH_FLAGS="-mcpu=cortex-a8" BSP=beagleboneblack BSP_BASE=$(HOME)/rtems/bsps
make install
```
