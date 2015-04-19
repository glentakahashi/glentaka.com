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
	wkhtmltopdf -s Letter _site/index.html files/Glen-Takahashi-Resume-CV.pdf
	wkhtmltopdf _site/index.html files/Glen-Takahashi-Resume-CV-A4.pdf
