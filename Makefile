TEMPDIR := $(shell mktemp -d -t tmp.XXX)

publish:
	echo 'hmmm'
	cp -r ./_site/* $(TEMPDIR)
	cd $(TEMPDIR) && \
	ls -a  && \
	git init && \
	git add . && \
	git commit -m 'publish site' && \
	git push origin master:refs/heads/gh-pages --force
