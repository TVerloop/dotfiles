#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

for f in $(ls ~/.bashrc.d); do
    source "${HOME}/.bashrc.d/$f"
done
