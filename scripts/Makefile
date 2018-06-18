WORK = /vagrant
INDEX_DIR = $(WORK)

test:
	./run_centrifuge.py -q $(WORK)/in \
	-I $(INDEX_DIR) -i p_compressed+h+v -f fastq \
	-o $(WORK)/centrifuge-out \
	-X 10000 -T 4
