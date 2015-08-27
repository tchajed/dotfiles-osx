# vim: ft=make
LITERATE_SRCS := $(wildcard *.lhs)
LITERATE_TEX := $(LITERATE_SRCS:.lhs=.tex)

# sort removes duplicates; see
# https://www.gnu.org/software/make/manual/html_node/Text-Functions.html
onlysources.tex := $(sort $(wildcard *.tex) $(LITERATE_TEX))
