PROGRAM_NAME = "microbench.bin"
MAX_CYCLE = 20000

import os
ROOT_PATH = os.path.dirname(os.path.abspath(__file__)) + "/../../.."
DUT_PATH = ROOT_PATH + "/out/picker_out_FTB"
UTILS_PATH = ROOT_PATH + "/utils"
RROGRAM_FORDER_PATH = UTILS_PATH + "/ready-to-run"
PROGRAM_PATH = RROGRAM_FORDER_PATH + "/" + PROGRAM_NAME


INST_OFFSET_BITS = 1
PREDICT_WIDTH_OFFSET_BITS = 4

PREDICT_WIDTH_BYTES = 32
RESET_VECTOR = 0x80000000

FTB_BANK_WAYS_NUM = 4
FTB_BANK_SETS_NUM = 512
FTB_TAG_BITS = 20
FTB_IDX_BITS = 9


TAR_OVF = 1
TAR_UDF = 2
TAR_FIT = 0

