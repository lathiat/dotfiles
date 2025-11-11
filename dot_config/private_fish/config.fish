set -U fish_greeting
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path ~/go/bin
fish_add_path ~/bin

set -x DEBEMAIL trent.lloyd@canonical.com
set -x EDITOR vim
set -x QUILT_PATCHES debian/patches
set -x QUILT_REFRESH_ARGS "-p ab --no-timestamps --no-index"

switch (uname)
case Darwin
  fish_add_path /opt/homebrew/bin
  set -x SSH_AUTH_SOCK /Users/lathiat/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
end

if status is-interactive
  # Commands to run in interactive sessions can go here
end

