%:
	git symbolic-ref refs/heads/$@ refs/heads/master

all:

clean:
	rm -rf *~

.PHONY: all clean
