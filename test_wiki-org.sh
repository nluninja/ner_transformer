python3 run_ner.py \
	--model_type bert \
	--model_name_or_path bert-large-cased-whole-word-masking \
	--data_dir data/wiki-org \
	--labels data/wiki-org/labels.txt \
	--output_dir output.wiki-org.bert-large-cased-whole-word-masking \
	--do_predict
