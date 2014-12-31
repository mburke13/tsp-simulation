#!/bin/bash
CAIROMM_DIR=$1
EXEC_FILE=$2
OUTPUT_DIR=$3
ITERATIONS=$4
MIN_COORD=$5
MAX_COORD=$6
TRIALS_START=$7
TRIALS_END=$8
INPUT_FILE=$9
RUN_ID=$PBS_VNODENUM
MAX_COMPUTE_TIME=${10}
MAX_CHUNK_SIZE=${11}
PROCESSORS=${12}

export LD_LIBRARY_PATH="${CAIROMM_DIR}:$LD_LIBRARY_PATH";
${EXEC_FILE} ${OUTPUT_DIR} ${ITERATIONS} ${MIN_COORD} ${MAX_COORD} ${TRIALS_START} ${TRIALS_END} ${INPUT_FILE} ${RUN_ID} ${MAX_COMPUTE_TIME} ${MAX_CHUNK_SIZE} ${PROCESSORS}
