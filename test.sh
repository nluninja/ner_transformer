# TESTED WITH:
# wiki-org, bert, bert-base-cased
# wiki-org, bert, bert-large-cased-whole-word-masking
# wiki-org, roberta, roberta-large-mnli
# wiki-org, roberta, roberta-large-openai-detector
# wiki-org, roberta, distilroberta-base
# wiki-org, xlnet, xlnet-large-cased
# RUNTIME ERROR: wiki-org, distilbert, distilbert-base-cased

for i in output.*
do
	DATASET=$(echo $i | cut -d . -f 2)
	MODEL_NAME=$(echo $i | cut -d . -f 3)
	MODEL_TYPE=$(echo $MODEL_NAME | cut -d - -f 1)
	if [ $MODEL_TYPE == distilroberta ] ; then
		MODEL_TYPE=roberta;
	fi
	echo DATASET=$DATASET
	echo MODEL_NAME=$MODEL_NAME
	echo MODEL_TYPE=$MODEL_TYPE

	CUDA_VISIBLE_DEVICES=0,1 python3 run_ner.py \
		--model_type ${MODEL_TYPE} \
		--model_name_or_path ${MODEL_NAME} \
		--data_dir data/${DATASET} \
		--labels data/${DATASET}/labels.txt \
		--output_dir output.${DATASET}.${MODEL_NAME} \
		--do_predict
done
exit

