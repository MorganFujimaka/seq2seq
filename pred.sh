python3 -m bin.infer \
  --tasks "
    - class: DecodeText" \
  --model_dir "$MODEL_DIR" \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $DEV_SOURCES" \
  >  "${PRED_DIR}"/predictions.txt
