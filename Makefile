.PHONY: all

all:
	@echo "Publishing org files..."
	@emacs -q --batch --load scripts/build.el --funcall export-org-files

clean:
	@echo "cleaning public/ and content/ directory..."
	@rm -rfv public/* content/*
