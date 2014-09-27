# Alias for system open command that only auto-completes files you'd open with
# Preview. This is mostly to be able to open PDFs in a directory with a bunch
# of unrelated files, especially in LaTeX projects.
alias preview="open"

# This is documented under zshcompctl(1). -g specifies a globstring for the
# command.
compctl -g "*.(pdf|jpg|png)" preview
