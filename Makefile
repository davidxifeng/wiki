
all:
	$(MAKE) deploy -j 2

deploy: a b

a:
	git push pub master:master

b:
	git push
