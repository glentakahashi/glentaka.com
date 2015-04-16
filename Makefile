all: jekyll pdf

watch: dev
	jekyll server

install: all
	cp -r _site/* /var/www/glentaka.com

jekyll:
	jekyll build

pdf: jekyll
	wkhtmltopdf -s Letter _site/index.html files/Glen-Takahashi-Resume-CV.pdf
	wkhtmltopdf _site/index.html files/Glen-Takahashi-Resume-CV-A4.pdf
