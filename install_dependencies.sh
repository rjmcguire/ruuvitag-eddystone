#!/bin/bash
# v0.9
set -e

echo “Entering to correct folder“
cd nRF5_SDK_11.0.0_89a8197/examples/ble_peripheral
git clone https://github.com/NordicSemiconductor/nrf5-sdk-for-eddystone.git
cd nrf5-sdk-for-eddystone/source
chmod +x crypto_setup_all.sh
./crypto_setup_all.sh
cd ../../../../..

echo "Finished successfully"