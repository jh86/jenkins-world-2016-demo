master:
	git push origin $@

%:
	-git branch --delete $@ && git push origin :$@
	git symbolic-ref refs/heads/$@ refs/heads/master && git push origin HEAD:$@

all:

clean:
	rm -rf *~
	git branch --delete $(shell cd .git/refs/heads/ && find * -type f -not -name 'master')
	git push --all

.PHONY: all clean
