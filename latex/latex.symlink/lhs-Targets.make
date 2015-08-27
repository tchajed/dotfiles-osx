# vim: ft=make
%.tex: %.lhs
	lhs2TeX $< -o $@

