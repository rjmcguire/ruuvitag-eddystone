#
#
#

TOP := `pwd`

SDK_VERSION := 11.0.0_89a8197
SDK_URL     := https://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v11.x.x
SDK_FILE    := nRF5_SDK_$(SDK_VERSION).zip

SDK_DIR     := $(basename $(SDK_FILE))
SDK_HOME    := $(TOP)/$(SDK_DIR)

DOWNLOAD_CMD ?= curl -O
GIT_CLONE ?= git clone
CHMOD ?= chmod +x

export SDK_HOME

.PHONY: all bootstrap project

all: bootstrap project

bootstrap: $(SDK_FILE) $(SDK_DIR) $(TOP)
	@echo SDK_HOME = ${SDK_HOME}

$(SDK_DIR):
	unzip -q -d $(SDK_DIR) $(SDK_FILE)

$(SDK_FILE):
	@echo Downloading SDK zip...
	$(DOWNLOAD_CMD) $(SDK_URL)/$(SDK_FILE)

$(TOP):
	@echo run .sh
	./install_dependencies.sh

ruuvitag-eddystone:
#	@echo build project
#	$(MAKE) -C project

clean:
#	@echo cleaning the build files…
#	$(MAKE) -C project/_build clean