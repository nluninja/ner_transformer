python3 run_ner.py \
	--model_type bert \
	--model_name_or_path bert-base-cased \
	--data_dir data/wiki-org \
	--labels data/wiki-org/labels.txt \
	--output_dir output.wiki-org \
	--save_steps 1000 \
	--overwrite_cache \
	--overwrite_output_dir \
	--do_train
