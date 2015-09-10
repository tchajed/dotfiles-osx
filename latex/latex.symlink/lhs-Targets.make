# vim: ft=make
%.tex: %.lhs
	hscolour -lit -latex -partial $< -o$@

