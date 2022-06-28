define release
$1:
	bump2version $$@
	git push --tag
	git push origin main
	poetry --build publish
endef


$(foreach part,patch minor major,$(eval $(call release,$(part))))
