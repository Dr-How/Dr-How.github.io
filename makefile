index:
	pandoc \
		--standalone \
		--from markdown+footnotes+emoji+autolink_bare_uris+pipe_tables \
		--to html \
		--template template.html \
		--metadata pagetitle:"Chen, Hao 陳浩 Dr. rer. nat. habil." \
		--css pandoc.css \
		--toc --toc-depth=3 \
		--output index.html index.md

.PHONY: index clean

clean:
	rm -f index.html
