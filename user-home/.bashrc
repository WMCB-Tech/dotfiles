PS1='\[\e[0m\][\[\e[0;38;5;202m\]$?\[\e[0m\]]\[\e[0m\]:\[\e[0m\][\[\e[0;38;5;34m\]\T \[\e[0;38;5;51m\]\w\[\e[0m\]]\[\e[0m\]:\[\e[0m\][\[\e[0;1;38;5;34m\]Android\[\e[0m\]]\n \[\e[0;1;38;5;196m\]\u \[\e[0;38;5;51m\]~\[\e[0;38;5;51m\]> \[\e[0m\]'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/data/data/com.termux/files/usr/google-cloud-sdk/path.bash.inc' ]; then . '/data/data/com.termux/files/usr/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/data/data/com.termux/files/usr/google-cloud-sdk/completion.bash.inc' ]; then . '/data/data/com.termux/files/usr/google-cloud-sdk/completion.bash.inc'; fi
