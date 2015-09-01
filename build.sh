#! /bin/sh

# Uncomment below if no distribution.dist exist
# productbuild --synthesize \
#    --package Packages/test1-1.0.pkg \
#    --package Packages/test2-1.0.pkg \
#    distribution.dist


mkdir -p ./dist
productbuild --distribution ./distribution.dist \
	--package-path ./Packages \
	--resources ./Resources \
	./dist/Installer.pkg

