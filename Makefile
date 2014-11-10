MANIFEST="./build/manifest.json"
SOURCES=$(wildcard images/*)
IMAGES=$(SOURCES:images/%=%)

build: $(SOURCES)
	mkdir -p ./build/
	echo -n "[" > $(MANIFEST)
	$(foreach i,$(IMAGES),echo -n "\"$i\"," >> $(MANIFEST);)
	echo "]" >> $(MANIFEST)
	sed -i "s/,]/]/" $(MANIFEST)
	cp ./index.html ./build/index.html
	cp ./robots.txt ./build/robots.txt
	cp -r $(SOURCES) ./build/

clean:
	rm -rf ./build/
