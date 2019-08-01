#     SHELL:=/bin/bash/
make: project add compile

project: 
	cd ~
	if [ ! -d "public_html" ]; then mkdir public_html; fi
	cp binary_converter.c index.html public_html; 
	chmod 755 public_html;
	[ -d ~/public_html/cgi-bin ] || mkdir ~/public_html/cgi-bin
#	if [ -d "~/public_html/cgi-bin" ]; then	chmod 755 ~/public_html/index.html; fi
#	if [ ! -d "~/public_html/cgi-bin" ]; then mkdir ~/public_html/cgi-bin; fi
	chmod 755 ~/public_html/index.html
	

add:
	cd public_html; git init; git add  binary_converter.c index.html cgi-bin; git commit -m "done boys"

compile: 
	cd ~ 
	gcc binary_converter.c -o binary_converter.cgi
	chmod 755 binary_converter.cgi
	chmod 755 public_html
	if [ ! -d ~/public_html/cgi-bin ];then mkdir ~/public_html/cgi-bin;fi
	chmod 755  ~/public_html/cgi-bin
	cp binary_converter.cgi ~/public_html/cgi-bin
	mv binary_converter.cgi ~/public_html/cgi-bin



