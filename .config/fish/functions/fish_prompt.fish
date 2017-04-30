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

# Prompt character ❯
	set PROMPT_CHAR "❯"

function fish_prompt
	# Username

	printf (set_color -o $GENERATED_PALETTE_8)(whoami | head -c 1)' '

	# Current path

	echo -n (set_color normal)(set_color $GENERATED_PALETTE_7)(prompt_pwd)

	# GIT status

	set last_status $status
	set_color -o $GENERATED_PALETTE_6
	if __fish_git_prompt
		printf '\b'
	else
		printf ' '
	end

	# Fancy arrows

	echo -n (set_color -o $GENERATED_PALETTE_6)"$PROMPT_CHAR"
	echo -n (set_color -o $GENERATED_PALETTE_5)"$PROMPT_CHAR"
	echo -n (set_color -o $GENERATED_PALETTE_4)"$PROMPT_CHAR "
	set_color normal
end
