
HUGO = /usr/local/bin/hugo
SERVER_ARGS = -DF

all:

server:
	-killall -q hugo | true
	$(HUGO) $(SERVER_ARGS) server

publish:
	$(HUGO)
	git add -u .
	git commit -m "publish - `date`"
	git push