TOP_ENTRY := ./rtl_src/ITTAGE/ITTage.sv
TOP_FILES := ./rtl_src/ITTAGE.txt
TL ?= cpp

ifneq ($(TARGET),)
	TARGET := $(TARGET)
else
	TARGET := out/picker_out_ITTAGE
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
		_WAVEFORM := -w ITTAGE.fst
	endif
endif
_WAVEFORM ?=

ittage:
	@echo "Building tage module with parameters: "
	@echo "TL=${TL}"
	@echo "TOP_ENTRY=${TOP_ENTRY}"
	@echo "TOP_FILES=${TOP_FILES}"
	@echo "TARGET=${TARGET}"
	@echo "WAVEFORM=${_WAVEFORM}"
	@echo "VERBOSE=${_VERBOSE}"
	@echo "EXAMPLE=${_EXAMPLE}"

	@mkdir -p out
	rm -rf ${TARGET} 
	picker ${TOP_ENTRY} -f ${TOP_FILES} -l ${TL} \
		 -t ${TARGET} ${_WAVEFORM}${_EXAMPLE} ${_VERBOSE}
		
	cd ${TARGET} && make
