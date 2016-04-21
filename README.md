# RuuviTag nRF52 Eddystone GATT (GCC) firmware
[![RuuviTag](http://ruuvitag.com/assets/images/coming-soon-to-kickstarter.jpg)](http://ruuvitag.com)

Instructions below are tested using OS X, but basically any Unix distribution should be fine.

Nordic Semiconductor haven't provided a GCC implementation for their **nRF5 SDK for Eddystone™** project so this makes the trick. Check these two repositories:

https://github.com/NordicSemiconductor/nrf5-sdk-for-eddystone

https://github.com/NordicSemiconductor/Android-nRF-Beacon-for-Eddystone

### Prerequisites (to compile):

* Download and install GCC https://launchpad.net/gcc-arm-embedded/+download

Extract the GCC tarball. Other destinations are also ok, but this one is used often:
`sudo mkdir -p /usr/local && cd /usr/local && sudo tar xjf ~/Downloads/gcc-arm-none-eabi-4_xxxxxxxx.tar.bz2`

To add to path create a file `/etc/paths.d/arm-gcc` with content:

`/usr/local/gcc-arm-none-eabi-4_9-2015q3/bin`

## How to compile:

`make` downloads Nordic Semiconductor's nRF52 SDK and extracts it. After that it runs `install_dependencies.sh`.

`make clean` cleans the build directories.