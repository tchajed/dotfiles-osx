if [ $(which reattach-to-user-namespace) ]; then
    alias mvim="reattach-to-user-namespace mvim"
fi
