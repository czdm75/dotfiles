switch (uname)
    case Darwin
        set -x LC_ALL en_US.UTF-8
        set -x LANG en_US.UTF-8
end

if type -q mise
    mise activate fish --shims | source
end

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.ghcup/bin
fish_add_path $HOME/.cabal/bin

type -q /opt/homebrew/bin/brew; and eval $(/opt/homebrew/bin/brew shellenv)
type -q $HOME/.cargo/env; and source $HOME/.cargo/env
type -q zoxide;           and zoxide init fish | source
type -q nvim;             and set -x EDITOR nvim

# Custom Function

function git_current_branch
    echo (git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
end


if status is-interactive
    # simple env
    type -q starship; and starship init fish | source
    type -q fzf;      and fzf --fish | source
    type -q bat;      and set -x BAT_THEME "Solarized (light)"

    # simple alias
    type -q nvim;    and alias vim  nvim
    type -q gsed;    and alias sed  gsed
    type -q gdate;   and alias date gdate
    type -q eza;     and alias ls   eza

    source $HOME/.config/fish/abbr.fish

end

type -q "$HOME/work.fish"; and source $HOME/work.fish
type -q "/opt/homebrew/Caskroom/miniforge/base/bin/conda"; and eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source

