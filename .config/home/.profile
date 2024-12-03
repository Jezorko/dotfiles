# Set default file editor
export EDITOR=/usr/bin/nano

# Set default terminal emulator
export TERM=kitty

# Link dotfiles to PATH
export PATH="${PATH}:/home/jezor/Code/dotfiles/PATH"

# Activate redshift
# disabled for now
# redshift -O 3300 &

# Configure touchpad and tablet
configure_touchpad &
configure_tablet &

# Authenticator manager
/usr/lib/xfce-polkit/xfce-polkit &

# Restore wallpaper
nitrogen --restore &

# Set keymap
setxkbmap pl &
. "$HOME/.cargo/env"
