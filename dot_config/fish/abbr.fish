# simple abbr

abbr -a -g l   "ls"
abbr -a -g ll  "ls -l"
abbr -a -g la  "ls -a"
abbr -a -g lla "ls -al"

type -q vim;     and abbr -a -g v   vim
type -q ipython; and abbr -a -g ipy ipython
type -q nvim;    and abbr -a -g vd  "nvim -d"
type -q chezmoi; and abbr -a -g cz  chezmoi

if type -q eza
    abbr -a -g lt "ls -T"
    abbr -a -g llt "ls -lT"
    abbr -a -g lat "ls -aT"
    abbr -a -g llat "ls -laT"
end

if type -q bat
    abbr -a -g b   "bat"
    abbr -a -g bb  "bat -p"
    abbr -a -g bbb "bat -pp"
end

if type -q git
    abbr -a -g g    "git"
    abbr -a -g ga   "git add"
    abbr -a -g gc   "git commit"
    abbr -a -g gf   "git fetch"
    abbr -a -g gl   "git pull"
    abbr -a -g gs   "git status"

    abbr -a -g gcl  "git clone"
    abbr -a -g gck  "git checkout"
    abbr -a -g glg  "git log"

    abbr -a -g gb   "git branch"
    abbr -a -g gbD  "git branch -D"

    abbr -a -g gck  "git checkout"
    abbr -a -g gckb "git checkout -b"
    abbr -a -g gckm "git checkout master"

    abbr -a -g gcl  "git clone --recurse-submodules"
    abbr -a -g gcld "git clone --recurse-submodules --depth 1"

    abbr -a -g gd   "git diff"
    abbr -a -g gds  "git diff --staged"
    abbr -a -g gdl  "git diff --name-only"
    abbr -a -g gdsl "git diff --staged --name-only"


    abbr -a -g gp   "git push"
    abbr -a -g gpo  "git push --set-upstream origin $(git_current_branch)"

    abbr -a -g gr   "git rev-parse --show-toplevel"
    abbr -a -g grs  "git restore"
    abbr -a -g grss "git restore --staged"

    abbr -a -g gst  "git stash"
    abbr -a -g gsta "git stash apply"
end

if type -q brew
    abbr -a -g br   "brew"
    abbr -a -g brc  "brew cleanup"
    abbr -a -g bri  "brew install"
    abbr -a -g brl  "brew leaves"
    abbr -a -g brs  "brew search"
    abbr -a -g bru  "brew uninstall"
    abbr -a -g brup "brew update && brew upgrade"
end

if type -q conda
    abbr -a -g c  "conda"
    abbr -a -g cl "conda list"
    abbr -a -g ce "conda env list"
    abbr -a -g ca "conda activate"
end
