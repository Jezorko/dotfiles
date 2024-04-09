# Set default file editor
export EDITOR=/usr/bin/nano

# Set default terminal emulator
export TERM=kitty

# Link dotfiles to PATH
export PATH="${PATH}:/home/jezor/Code/dotfiles/PATH"

# Activate redshift
redshift -O 3300 &

# Configure touchpad
configure_touchpad &

# Authenticator manager
/usr/lib/xfce-polkit/xfce-polkit &

# Restore wallpaper
nitrogen --restore &

# Set keymap
setxkbmap pl
