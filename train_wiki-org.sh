CUDA_VISIBLE_DEVICES=0,1 python3 run_ner.py \
	--model_type bert \
	--model_name_or_path bert-large-cased-whole-word-masking \
	--data_dir data/wiki-org \
	--labels data/wiki-org/labels.txt \
	--output_dir output.wiki-org.bert-large-cased-whole-word-masking \
	--save_steps 1000 \
	--overwrite_output_dir \
	--do_train
