
all:
	$(MAKE) deploy -j 2

deploy:
	git push pub master:master
	git push
