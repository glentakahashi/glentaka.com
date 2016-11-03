all: jekyll

watch:
	jekyll server

uninstall:
	rm -rf /var/www/glentaka.com/*

install: jekyll pdf
	cp -r _site/* /var/www/glentaka.com

jekyll:
	jekyll build

pdf: jekyll
	sed 's/="\//="/g' _site/index.html > _site/index2.html
	xvfb-run -a wkhtmltopdf --disable-javascript --print-media-type -s Letter _site/index2.html files/Glen-Takahashi-Resume-CV.pdf
	xvfb-run -a wkhtmltopdf --disable-javascript --print-media-type -s A4 _site/index2.html files/Glen-Takahashi-Resume-CV-A4.pdf
	rm _site/index2.html
