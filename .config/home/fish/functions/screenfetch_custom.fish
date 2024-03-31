function screenfetch_custom
    set n_c $GENERATED_PALETTE_9
    set l_c $GENERATED_PALETTE_11
    set h_c $GENERATED_PALETTE_12
    set at_c $GENERATED_PALETTE_13

    set -l DISTRIBUTION_CODENAME (cat /etc/*-release | grep "^DISTRIB_CODENAME" |  cut -c 18-)
    set -l DISTRIBUTION_RELEASE (cat /etc/*-release | grep "^DISTRIB_RELEASE=" | cut -c 17-)
    set -l DISTRIBUTION_NAME (cat /etc/*-release | grep "^ID=" | cut -c 4- | sed 's/.*/\u&/')
    set -l KERNEL_V (uname -m)
    set -l KERNEL_N (uname -rs)
    set -l UPTIME (uptime --pretty | cut -c 4-)
    set -l PACKAGES (pacman -Q | wc -l)
    set -l SHELL_VERSION $version
    set -l SHELL_NAME (ps -A | grep  %self | awk '{print $4}')
    set -l RESOLUTION (xdpyinfo | awk -F '[ x]+' '/dimensions:/{print $3"x"$4}')
    set -l WM_NAME (wmctrl -m | grep Name | cut -c 7-)
    set -l GTK_THEME (awk -F'=' '/^gtk-theme-name/ {print $2}' ~/.config/gtk-3.0/settings.ini)
    set -l CPU (cat /proc/cpuinfo | grep "model name" | head -n 1 | cut -c 14-)
    set -l MEMORY (free -m | head -n 2 | tail -n 1 | awk '{print $3" / "$2" MiB"}')
    set -l GPU (glxinfo | grep Mesa | grep Device | cut -c 13- | head -c -11)

    printf "\n"
    printf (set_color -o $l_c)" ██████████████████  ████████     "
    printf (set_color -o $h_c)"pfiuk"(set_color -d $at_c)"@"(set_color -o $h_c)(hostname)"\n"
    printf (set_color -o $l_c)" ██████████████████  ████████     "
    printf (set_color -o $h_c)"OS: "(set_color -d $n_c)"$DISTRIBUTION_NAME $DISTRIBUTION_RELEASE $DISTRIBUTION_CODENAME\n"
    printf (set_color -o $l_c)" ██████████████████  ████████     "
    printf (set_color -o $h_c)"Kernel: "(set_color -d $n_c)"$KERNEL_V $KERNEL_N\n"
    printf (set_color -o $l_c)" ██████████████████  ████████     "
    printf (set_color -o $h_c)"Uptime: "(set_color -d $n_c)"$UPTIME\n"
    printf (set_color -o $l_c)" ████████            ████████     "
    printf (set_color -o $h_c)"Packages: "(set_color -d $n_c)"$PACKAGES\n"
    printf (set_color -o $l_c)" ████████  ████████  ████████     "
    printf (set_color -o $h_c)"Shell: "(set_color -d $n_c)"$SHELL_NAME $SHELL_VERSION\n"
    printf (set_color -o $l_c)" ████████  ████████  ████████     "
    printf (set_color -o $h_c)"Resolution: "(set_color -d $n_c)"$RESOLUTION\n"
    printf (set_color -o $l_c)" ████████  ████████  ████████     "
    printf (set_color -o $h_c)"WM: "(set_color -d $n_c)"$WM_NAME\n"
    printf (set_color -o $l_c)" ████████  ████████  ████████     "
    printf (set_color -o $h_c)"GTK Theme: "(set_color -d $n_c)"$GTK_THEME [GTK2/3]\n"
    printf (set_color -o $l_c)" ████████  ████████  ████████     "
    printf (set_color -o $h_c)"CPU: "(set_color -d $n_c)"$CPU\n"
    printf (set_color -o $l_c)" ████████  ████████  ████████     "
    printf (set_color -o $h_c)"GPU: "(set_color -d $n_c)"$GPU\n"
    printf (set_color -o $l_c)" ████████  ████████  ████████     "
    printf (set_color -o $h_c)"RAM: "(set_color -d $n_c)"$MEMORY\n"
    printf (set_color -o $l_c)" ████████  ████████  ████████     "
    printf (set_color -o $h_c)"Terminal: "(set_color -d $n_c)"lxterminal\n"
    printf (set_color -o $l_c)" ████████  ████████  ████████     "
    printf (set_color -o $h_c)"Color scheme: "
    printf (set_color -o $GENERATED_PALETTE_1)"█"
    printf (set_color -o $GENERATED_PALETTE_2)"█"
    printf (set_color -o $GENERATED_PALETTE_3)"█"
    printf (set_color -o $GENERATED_PALETTE_4)"█"
    printf (set_color -o $GENERATED_PALETTE_5)"█"
    printf (set_color -o $GENERATED_PALETTE_6)"█"
    printf (set_color -o $GENERATED_PALETTE_7)"█"
    printf (set_color -o $GENERATED_PALETTE_8)"█"
    printf (set_color -o $GENERATED_PALETTE_9)"█"
    printf (set_color -o $GENERATED_PALETTE_10)"█"
    printf (set_color -o $GENERATED_PALETTE_11)"█"
    printf (set_color -o $GENERATED_PALETTE_12)"█"
    printf (set_color -o $GENERATED_PALETTE_13)"█"
    printf (set_color -o $GENERATED_PALETTE_14)"█"
    printf (set_color -o $GENERATED_PALETTE_15)"█"
    printf (set_color -o $GENERATED_PALETTE_16)"█\n\n"
end
