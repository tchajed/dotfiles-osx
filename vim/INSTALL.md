Installing some of these vim plugins is tricky. You also have to essentially
re-install them if you ever update vim, which happens randomly if you do `brew
upgrade --all` often.

Here is what I believe the install process looks like:

- Install only macvim (not vim) from homebrew. Do so without homebrew python:

        brew unlink python
        brew install --HEAD macvim
        brew link python
        # linking isn't particularly necessary, opening from
        # /usr/local/Cellar/macvim/HEAD/MacVim.app is fine
        brew linkapps macvim

- Now you can install YouCompleteMe. Go to `~/.vim/bundle/YouCompleteMe` and run `./install.sh`.
- For Command-T, we have the opposite problem: macvim uses system ruby unless
  you do some fancy things so the source install uses rvm. Compile its native
  exension under system ruby:

        brew unlink ruby
        # the command-t installation process
        cd ~/.vim/bundle/Command-T/ruby/command-t
        make clean
        ruby extconf.rb
        make
        # done compiling command-t
        brew link ruby
