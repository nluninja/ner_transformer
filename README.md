# Applying HuffingFace to a NER use case


## Requirements

- `python3`
- `pip3 install -r requirements.txt`

## Fine tuning for US ORG from Wikidata

**NOTE: these are preliminary results which need more work before being considered seriously.**

1. bert-base-cased

|./output.wiki-org.bert-base-cased/test_results.txt
|---
|LOC-f1 = 0.0
|LOC-precision = 0.0
|LOC-recall = 0.0
|MISC-f1 = 0.0
|MISC-precision = 0.0
|MISC-recall = 0.0
|NCT-f1 = 0.9992640404844437
|NCT-precision = 0.9991418560808167
|NCT-recall = 0.9993862547754271
|ORG-f1 = 0.9096697808156484
|ORG-precision = 0.911492602783427
|ORG-recall = 0.9078542349319829
|PER-f1 = 0.0
|PER-precision = 0.0
|PER-recall = 0.0
|f1 = 0.9828990553590835
|loss = 0.028709325811708798
|precision = 0.9831599153633052
|recall = 0.9826383337451491

2. bert-large-cased-whole-word-masking

|./output.wiki-org.bert-large-cased-whole-word-masking/test_results.txt
|---
|LOC-f1 = 0.0
|LOC-precision = 0.0
|LOC-recall = 0.0
|MISC-f1 = 0.0
|MISC-precision = 0.0
|MISC-recall = 0.0
|NCT-f1 = 0.9993150715394433
|NCT-precision = 0.9993506291336236
|NCT-recall = 0.9992795164755013
|ORG-f1 = 0.9107160591915782
|ORG-precision = 0.9108969901658885
|ORG-recall = 0.910535200079436
|PER-f1 = 0.0
|PER-precision = 0.0
|PER-recall = 0.0
|f1 = 0.9831059719607831
|loss = 0.027615073672912403
|precision = 0.9831702814280731
|recall = 0.9830416709059462

3. xlnet-large-cased

|./output.wiki-org.xlnet-large-cased/test_results.txt
|---
|LOC-f1 = 0.0
|LOC-precision = 0.0
|LOC-recall = 0.0
|MISC-f1 = 0.0
|MISC-precision = 0.0
|MISC-recall = 0.0
|NCT-f1 = 0.9992001781421411
|NCT-precision = 0.999150231754976
|NCT-recall = 0.9992501295230823
|ORG-f1 = 0.9114443599087014
|ORG-precision = 0.9082076450403
|ORG-recall = 0.9147042276161389
|PER-f1 = 0.0
|PER-precision = 0.0
|PER-recall = 0.0
|f1 = 0.9829663512287266
|loss = 0.028548858909633858
|precision = 0.9822787433748853
|recall = 0.9836549224257429

4. roberta-large-openai-detector

|./output.wiki-org.roberta-large-openai-detector/test_results.txt
|---
|LOC-f1 = 0.0
|LOC-precision = 0.0
|LOC-recall = 0.0
|MISC-f1 = 0.0
|MISC-precision = 0.0
|MISC-recall = 0.0
|NCT-f1 = 0.9985675313181449
|NCT-precision = 0.9984946491620214
|NCT-recall = 0.9986404241146789
|ORG-f1 = 0.8995799923634975
|ORG-precision = 0.8967686359356531
|ORG-recall = 0.9024090313476464
|PER-f1 = 0.0
|PER-precision = 0.0
|PER-recall = 0.0
|f1 = 0.9802537895546971
|loss = 0.02832679880908476
|precision = 0.9796273245768852
|recall = 0.9808810562853667

5. roberta-large-mnli

|./output.wiki-org.roberta-large-mnli/test_results.txt
|---
|LOC-f1 = 0.0
|LOC-precision = 0.0
|LOC-recall = 0.0
|MISC-f1 = 0.0
|MISC-precision = 0.0
|MISC-recall = 0.0
|NCT-f1 = 0.9992403694587461
|NCT-precision = 0.999242648903894
|NCT-recall = 0.9992380900239979
|ORG-f1 = 0.9069329276279332
|ORG-precision = 0.9065584337106716
|ORG-recall = 0.9073077310754964
|PER-f1 = 0.0
|PER-precision = 0.0
|PER-recall = 0.0
|f1 = 0.9821993891619019
|loss = 0.02788697085931197
|precision = 0.9821263172773973
|recall = 0.9822724719205628

|6. distilroberta-base
|---
|./output.wiki-org.distilroberta-base/test_results.txt
|LOC-f1 = 0.0
|LOC-precision = 0.0
|LOC-recall = 0.0
|MISC-f1 = 0.0
|MISC-precision = 0.0
|MISC-recall = 0.0
|NCT-f1 = 0.9992380552615249
|NCT-precision = 0.9992836480110966
|NCT-recall = 0.9991924666721415
|ORG-f1 = 0.9006106275172145
|ORG-precision = 0.8930156968447757
|ORG-recall = 0.9083358532406007
|PER-f1 = 0.0
|PER-precision = 0.0
|PER-recall = 0.0
|f1 = 0.9809087076277876
|loss = 0.027454486422934344
|precision = 0.9793970818405027
|recall = 0.9824250067896618

