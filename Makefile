define release
$1: build
	bump2version $$@
	git push --tag
	git push origin main
	poetry publish
endef


$(foreach part,patch minor major,$(eval $(call release,$(part))))


build:
	poetry build
