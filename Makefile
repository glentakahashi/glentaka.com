all: jekyll

watch: dev
	jekyll server

uninstall:
	rm -rf /var/www/glentaka.com/*

install: all
	cp -r _site/* /var/www/glentaka.com

jekyll:
	jekyll build

pdf: jekyll
	wkhtmltopdf --print-media-type -T .05in -B .05in -R .25in -L .25in -s Letter _site/index.html files/Glen-Takahashi-Resume-CV.pdf
	gs -sDEVICE=pdfwrite -o files/Glen-Takahashi-Resume-CV2.pdf -dFirstPage=1 -dLastPage=1 files/Glen-Takahashi-Resume-CV.pdf
	mv files/Glen-Takahashi-Resume-CV2.pdf files/Glen-Takahashi-Resume-CV.pdf
	wkhtmltopdf --print-media-type _site/index.html files/Glen-Takahashi-Resume-CV-A4.pdf
