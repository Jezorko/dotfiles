# GIT prompt settings
        set __fish_git_prompt_showdirtystate 'yes'
        set __fish_git_prompt_showstashstate 'yes'
        set __fish_git_prompt_showupstream 'yes'
        set __fish_git_prompt_color_branch yellow

# GIT prompt status chars
	set ___fish_git_prompt_char_upstream_equal ''
        set __fish_git_prompt_char_dirtystate '⚡'
        set __fish_git_prompt_char_stagedstate '→'
        set __fish_git_prompt_char_stashstate '↩'
        set __fish_git_prompt_char_upstream_ahead '↑'
        set __fish_git_prompt_char_upstream_behind '↓'

# Prompt color definitions
	set COLOR_USERNAME "A61"
	set COLOR_MONKEY "444"
	set COLOR_HOSTNAME "AF2"
	set COLOR_PATH "F72"
	set COLOR_ARROW_1 "F82"
	set COLOR_ARROW_2 "D61"
	set COLOR_ARROW_3 "B40"
	set COLOR_GIT "F82"

# Prompt character
	set PROMPT_CHAR "❯"

function fish_prompt
	# Username

	printf (set_color -o $COLOR_USERNAME)(whoami | head -c 1)' '

	# Current path

	echo -n (set_color normal)(set_color $COLOR_PATH)(prompt_pwd)

	# GIT status

	set last_status $status
	set_color -o $COLOR_GIT
	if __fish_git_prompt
		printf '\b'
	else
		printf ' '
	end

	# Fancy arrows

	echo -n (set_color -o $COLOR_ARROW_1)"$PROMPT_CHAR"
	echo -n (set_color -o $COLOR_ARROW_2)"$PROMPT_CHAR"
	echo -n (set_color -o $COLOR_ARROW_3)"$PROMPT_CHAR "
	set_color normal
end
