
image_name:=hellonewreliclogs

all: build run

build:
	docker build -t $(image_name) .

run: .log
	docker run \
	 -e NEW_RELIC_LICENSE_KEY='$(NEW_RELIC_LICENSE_KEY)' \
	 -v $(PWD)/$<:/fluentd/log \
	 -v $(PWD)/etc:/fluentd/etc \
	 $(image_name)

.log:
	mkdir -p $@

echo-all: echo echo-json

echo: .log
	echo "$(shell date '+%Y-%m-%dT%H:%M:%S%z'): Hello New Relic Logs!" >> $</hello.log

echo-json: .log
	cat hello.json >> $</hello-json.log
