unbind-key -n C-a
unbind-key -n C-k
set -g prefix ^K
set -g prefix2 ^K
bind k send-prefix

set-option -g mode-keys emacs

bind-key -t emacs-copy v begin-selection
bind-key -t emacs-copy y copy-pipe "reattach-to-user-namespace pbcopy"

unbind -t emacs-copy Enter
bind-key -t emacs-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"

unbind -t emacs-copy C-x
unbind -t emacs-copy C-v
bind -t emacs-copy C-x page-up
bind -t emacs-copy C-v page-down
bind q killp

bind '|' split-window -c "#{pane_current_path}"
bind '%' split-window -h -c "#{pane_current_path}"