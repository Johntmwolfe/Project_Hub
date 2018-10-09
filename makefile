all:
	make build
	make doczip

clean:
	-rm *.o
	-rm a.out
	-rm mywc
	-rm *.class

build:
	make mywc

doc:
	doxygen wc.c

mywc:
	gcc wc.c
	mv a.out mywc

doczip: doc
	tar czvf Make.tgz html/ latex/
