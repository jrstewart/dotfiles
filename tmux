# set -g default-shell "/opt/homebrew/bin/fish"

# improve colors
set -g default-terminal "screen-256color"
set -as terminal-overrides ',*:Tc'

set -g prefix C-s
unbind C-s
bind-key C-s send-prefix

unbind %
bind | split-window -h

unbind '"'
bind - split-window -v

unbind r
bind r source-file ~/.tmux.conf

bind -r j resize-pane -D 5
bind -r k resize-pane -U 5
bind -r l resize-pane -R 5
bind -r h resize-pane -L 5

bind -r m resize-pane -Z

# act like vim
set-window-option -g mode-keys vi
unbind p
bind p paste-buffer
bind-key -T copy-mode-vi 'v' send -X begin-selection
bind-key -T copy-mode-vi 'V' send -X select-line
bind-key -T copy-mode-vi 'r' send -X rectangle-toggle
bind -T copy-mode-vi 'y' send-keys -X copy-selection

# start window numbers at 1 to match keyboard order with tmux window order
set -g base-index 1
set-window-option -g pane-base-index 1

# renumber windows sequentially after closing any of them
set -g renumber-windows on

# remove administrative debris (session name, hostname, time) in status bar
set -g status-left ''
set -g status-right ''

# tpm plugin
set -g @plugin 'tmux-plugins/tpm'

# list of tmux plugins
set -g @plugin 'christoomey/vim-tmux-navigator' # for navigating panes and vim/nvim with Ctrl-hjkl
set -g @plugin 'jimeh/tmux-themepack' # to configure tmux theme
set -g @plugin 'tmux-plugins/tmux-resurrect' # persist tmux sessions after computer restart
set -g @plugin 'tmux-plugins/tmux-continuum' # automatically saves sessions for you every 15 minutes

set -g @themepack 'powerline/default/cyan' # use this theme for tmux

set -g @resurrect-capture-pane-contents 'on' # allow tmux-ressurect to capture pane contents
set -g @continuum-restore 'on' # enable tmux-continuum functionality

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'

# # act like vim
# setw -g mode-keys vi
# bind h select-pane -L
# bind j select-pane -D
# bind k select-pane -U
# bind l select-pane -R
# bind-key -r C-h select-window -t :-
# bind-key -r C-l select-window -t :+

# set -g prefix2 C-s

# # copy and paste
# unbind p
# bind p paste-buffer
# bind-key -T copy-mode-vi 'v' send -X begin-selection
# bind-key -T copy-mode-vi 'V' send -X select-line
# bind-key -T copy-mode-vi 'r' send -X rectangle-toggle
# bind -T copy-mode-vi 'y' send-keys -X copy-selection
# bind C-c run "tmux save-buffer - | reattach-to-user-namespace pbcopy"
# bind C-v run "tmux set-buffer \"$(reattach-to-user-namespace pbpaste)\"; tmux paste-buffer"

# # start window numbers at 1 to match keyboard order with tmux window order
# set -g base-index 1
# set-window-option -g pane-base-index 1

# # renumber windows sequentially after closing any of them
# set -g renumber-windows on

# # soften status bar color from harsh green to light gray
# set -g status-bg '#666666'
# set -g status-fg '#aaaaaa'

# # remove administrative debris (session name, hostname, time) in status bar
# set -g status-left ''
# set -g status-right ''

# # increase scrollback lines
# set -g history-limit 10000

# # prefix -> back-one-character
# bind-key C-b send-prefix
# # prefix-2 -> forward-incremental-history-search
# bind-key C-s send-prefix -2

# # avoid annoying delay in vim when exiting insert mode
# set -s escape-time 1

# # don't suspend-client
# unbind-key C-z

# set -g focus-events on
