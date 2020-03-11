#

S=../swap
C=python $S/cwm.py

.SUFFIXES: .rdf .ttl .n3 .ldif

.n3.rdf:
	python $S/cwm.py --quiet --n3 $< --rdf --quiet > $@

.n3.ttl:
	python $S/cwm.py --quiet  $< --data > $@


convert :
	for i in *.n3; do make $${i/n3/ttl}; done
	for i in *.n3; do make $${i/n3/rdf}; done



#ends