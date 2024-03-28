TOP_ENTRY := ./src/uFTB/FauFTB.sv
TOP_FILES := ./src/uFTB.txt
LANG ?= cpp

ifneq ($(TARGET),)
	TARGET := $(TARGET)
else
	TARGET := out/picker_out_uFTB
endif

# if EXAMPLE is set, then _EXAMPLE is set to -e
ifneq ($(EXAMPLE), false)
	_EXAMPLE := -e
endif
_EXAMPLE ?=
# if VERBOSE is set, then _VERBOSE is set to -v
ifneq ($(VERBOSE), false)
	_VERBOSE := -v
endif
_VERBOSE ?=
# if WAVE is set, then _WAVEFORM is set to -w
ifneq ($(WAVE), false)
	ifneq ($(WAVE), true)
		_WAVEFORM := -w $(WAVE)
	else
		_WAVEFORM := -w uFTB.fst
	endif
endif
_WAVEFORM ?=

uftb:
	@echo "Building tage module with parameters: "
	@echo "LANG=${LANG}"
	@echo "TOP_ENTRY=${TOP_ENTRY}"
	@echo "TOP_FILES=${TOP_FILES}"
	@echo "TARGET=${TARGET}"
	@echo "WAVEFORM=${_WAVEFORM}"
	@echo "VERBOSE=${_VERBOSE}"
	@echo "EXAMPLE=${_EXAMPLE}"

	@mkdir -p out
	rm -rf ${TARGET} 
	picker ${TOP_ENTRY} -f ${TOP_FILES} -l ${LANG} \
		 -t ${TARGET} ${_WAVEFORM}${_EXAMPLE} ${_VERBOSE}
		
	cd ${TARGET} && make
