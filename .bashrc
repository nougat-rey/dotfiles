# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
EXPORT PATH=/usr/local/mysql/bin:$PATH
