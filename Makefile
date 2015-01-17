build: $(SOURCES)
	mkdir ./build
	cp -r ./images/* ./build/
	cp ./robots.txt ./build/robots.txt
	tree -H http://junk.pics -C images -T junk.pics > ./build/index.html

clean:
	rm -rf ./build/
