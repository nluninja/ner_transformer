# TESTED WITH:
# wiki-org, bert, bert-base-cased
# wiki-org, bert, bert-large-cased-whole-word-masking
# wiki-org, roberta, roberta-large-mnli
# wiki-org, roberta, roberta-large-openai-detector
# wiki-org, roberta, distilroberta-base
# wiki-org, xlnet, xlnet-large-cased
# RUNTIME ERROR: wiki-org, distilbert, distilbert-base-cased

DATASET=wiki-org
MODEL_TYPE=roberta
MODEL_NAME=distilroberta-base
CUDA_VISIBLE_DEVICES=0,1 python3 run_ner.py \
	--model_type ${MODEL_TYPE} \
	--model_name_or_path ${MODEL_NAME} \
	--data_dir data/${DATASET} \
	--labels data/${DATASET}/labels.txt \
	--output_dir output.${DATASET}.${MODEL_NAME} \
	--save_steps 1000 \
	--overwrite_output_dir \
	--do_train
