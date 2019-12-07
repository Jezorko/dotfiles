#!/usr/bin/fish

# For detailed description, see https://fishshell.com/docs/current/index.html#variables-color

set fish_color_normal             (echo $GENERATED_PALETTE_12 | tail -c 7) # the default color
set fish_color_command            (echo $GENERATED_PALETTE_13 | tail -c 7) # the color for commands
set fish_color_quote              (echo $GENERATED_PALETTE_14 | tail -c 7) # the color for quoted blocks of text
set fish_color_redirection        (echo $GENERATED_PALETTE_15 | tail -c 7) # the color for IO redirections
set fish_color_end                (echo $GENERATED_PALETTE_9 | tail -c 7) # the color for process separators like ';' and '&'
set fish_color_error              dd1111 # the color used to highlight potential errors
set fish_color_param              (echo $GENERATED_PALETTE_13 | tail -c 7) # the color for regular command parameters
set fish_color_comment            (echo $GENERATED_PALETTE_6  | tail -c 7) # the color used for code comments
set fish_color_match              (echo $GENERATED_PALETTE_14 | tail -c 7) # the color used to highlight matching parenthesis
set fish_color_search_match       (echo $GENERATED_PALETTE_10 | tail -c 7) # the color used to highlight history search matches
set fish_color_operator           (echo $GENERATED_PALETTE_13 | tail -c 7) # the color for parameter expansion operators like '*' and '~'
set fish_color_escape             (echo $GENERATED_PALETTE_13 | tail -c 7) # the color used to highlight character escapes like '\n' and '\x70'
set fish_color_cwd                (echo $GENERATED_PALETTE_12 | tail -c 7) # the color used for the current working directory in the default prompt
set fish_color_autosuggestion     (echo $GENERATED_PALETTE_7  | tail -c 7) # the color used for autosuggestions
set fish_color_user               (echo $GENERATED_PALETTE_13 | tail -c 7) # the color used to print the current username in some of fish default prompts
set fish_color_host               (echo $GENERATED_PALETTE_10 | tail -c 7) # the color used to print the current host system in some of fish default prompts

set fish_pager_color_prefix      (echo $GENERATED_PALETTE_9 | tail -c 7) # the color of the prefix string, i.e. the string that is to be completed
set fish_pager_color_completion  (echo $GENERATED_PALETTE_10 | tail -c 7) # the color of the completion itself
set fish_pager_color_description (echo $GENERATED_PALETTE_5 | tail -c 7) # the color of the completion description
set fish_pager_color_progress    (echo $GENERATED_PALETTE_12 | tail -c 7) # the color of the progress bar at the bottom left corner
set fish_pager_color_secondary   (echo $GENERATED_PALETTE_2 | tail -c 7) # the background color of the every second completion

set fish_color_cwd_root          (echo $GENERATED_PALETTE_13 | tail -c 7)
set fish_color_history_current   (echo $GENERATED_PALETTE_13 | tail -c 7)
set fish_color_selection         (echo $GENERATED_PALETTE_1 | tail -c 7)
set fish_color_status            (echo $GENERATED_PALETTE_12 | tail -c 7)
set fish_color_valid_path        (echo $GENERATED_PALETTE_14 | tail -c 7)
