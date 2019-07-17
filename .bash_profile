alias ls="ls -lah"

parse_git_branch ()
  {
    if git rev-parse --git-dir >/dev/null 2>&1
    then
      gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p' && echo '› ')
    else
      return 0
    fi

  echo -e $gitver
  }


branch_color ()
  {
    if git rev-parse --git-dir >/dev/null 2>&1
      then
        color=""
          if git diff --quiet 2>/dev/null >&2
            then
               color="${c_green}"
            else
              color=${c_red}
            fi
          else
            return 0
          fi
    echo -ne $color
  }

PS1='\n\[\e[1;37m\]\W › \[\e[m\]\[$(branch_color)\]$(parse_git_branch)\[${c_sgr0}\] '

complete -F _git g

export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'

