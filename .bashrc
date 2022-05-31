# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

PS1="> "

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH=/usr/local/mysql/bin:$PATH;

