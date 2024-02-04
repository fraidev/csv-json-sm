build:
	smdk build

test: build
	smdk test -e delimiter=";" -e header_case=snake --file ./test-data/input.csv --raw

test-readable: build
	smdk test -e delimiter=";" -e header_case=snake --file ./test-data/input.csv --raw | tail -n +1 | jq


