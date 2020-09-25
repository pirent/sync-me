# SETUP FZF FOR LINUX MACHINE AT FIRST TIME
## Download and install fzf

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```


## Add these lines to your bashrc
```bash
export BOOKMARKS_DIR='<path-to-your-dir-which-stores-the-bookmark-files>'
export MULTILINE_BOOKMARKS_DIR='/home/pirent/Git/sync-me/fzf/multiple-lines-bookmarks'
source $BOOKMARKS_DIR/.fzfrc
```

## Add this alias
```bash
alias search_bookmark='fzf-snippet $(find $BOOKMARKS_DIR | fzf)' 
alias multiline-search-bookmark='fzf-multisnippet'
```

## Enable vi-style for ~/.tmux.conf
```bash
touch ~/.tmux.conf
# then add this line to the config file
set-window-option -g mode-keys vi
# reload
tmux source-file ~/.tmux.conf
```

## Enable fzf-snippet
See the file .bashrc, there was a line to enable *fzfrc*, add this to your *bashrc* file.
