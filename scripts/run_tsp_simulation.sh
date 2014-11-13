#!/bin/bash
CAIROMM_DIR=$1
EXEC_DIR=$2
OUTPUT_DIR=$3
ITERATIONS=$4
MIN_COORD=$5
MAX_COORD=$6
TRIALS=$7
TRIALS_PER_PROCESSOR=$8
INPUT_FILE=$9
RUN_ID=$PBS_VNODENUM
MAX_COMPUTE_TIME=${10}
MAX_CHUNK_SIZE=${11}

TRIALS_START=$((RUN_ID * TRIALS_PER_PROCESSOR))
TRIALS_END=$(((RUN_ID + 1) * TRIALS_PER_PROCESSOR))
TRIALS_END=$((TRIALS_END < TRIALS ? TRIALS_END : TRIALS))

export LD_LIBRARY_PATH="${CAIROMM_DIR}:$LD_LIBRARY_PATH";
${EXEC_DIR}/generate_tsp_csv ${OUTPUT_DIR} ${ITERATIONS} ${MIN_COORD} ${MAX_COORD} ${TRIALS_START} ${TRIALS_END} ${INPUT_FILE} ${RUN_ID} ${MAX_COMPUTE_TIME} ${MAX_CHUNK_SIZE}
