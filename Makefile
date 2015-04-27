all: jekyll

watch:
	jekyll server

uninstall:
	rm -rf /var/www/glentaka.com/*

install: all
	cp -r _site/* /var/www/glentaka.com

jekyll:
	jekyll build

pdf: jekyll
	wkhtmltopdf --print-media-type -s Letter _site/index.html files/Glen-Takahashi-Resume-CV.pdf
	wkhtmltopdf --print-media-type -s A4 _site/index.html files/Glen-Takahashi-Resume-CV-A4.pdf
