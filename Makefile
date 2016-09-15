master:
	git push origin $@

%:
	-git branch --delete $@ && git push origin :$@
	git symbolic-ref refs/heads/$@ refs/heads/master && git push origin HEAD:$@

all:

LOCAL_BRANCHES := $(shell cd .git/refs/heads && find * -type f -not -name 'master')
REMOTE_BRANCHES := $(shell cd .git/refs/remotes/origin && find * -type f -not -name 'master')
clean:
	rm -rf *~
	-git branch --delete $(LOCAL_BRANCHES)
	$(foreach branch, $(LOCAL_BRANCHES), git push origin :$(branch))
	$(foreach branch, $(REMOTE_BRANCHES), $(shell git push origin :$(branch)))

.PHONY: all clean
