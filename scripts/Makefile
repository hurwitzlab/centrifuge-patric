INDEX_DIR = /var/data/centrifuge-indexes

test:
	./run_centrifuge.py -q $(HOME)/in \
	-I $(INDEX_DIR) -i p_compressed+h+v -f fastq \
	-o $(HOME)/centrifuge-out \
	-X 10000 -t 4 -P 4
