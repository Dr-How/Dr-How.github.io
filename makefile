index:
	pandoc \
		--standalone \
		--from markdown+autolink_bare_uris \
		--to html \
		--template template.html \
		--metadata pagetitle:"Chen, Hao 陳浩 Dr. rer. nat. habil." \
		--css pandoc.css \
		--output index.html index.md

.PHONY: index clean

clean:
	rm -f index.html
