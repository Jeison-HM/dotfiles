# Hyprland TTY Autostart
# Auto-launches Hyprland on tty1/tty2 login via start-hyprland watchdog
#
# Installation:
#   Add to ~/.zprofile (sourced by login shells)
#
# Note: start-hyprland (Hyprland 0.53+) handles crash recovery and safe mode
# internally, so we no longer need a restart loop here.

# Qt6/Qt5 App Theme
export QT_QPA_PLATFORMTHEME="qt6ct"

# SSH Agent for KeepassXC
# Run only once
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)"
fi

# Only on login shell, on tty1 or tty2
# https://github.com/thesleepingsage/hypr-login
# if [[ -o login ]]; then
#     # Get current TTY
#     tty_name=$(tty)
    
#     # Check if running on tty1 or tty2
#     if [[ "$tty_name" == "/dev/tty1" ]] || [[ "$tty_name" == "/dev/tty2" ]]; then
#         # echo "=== TTY Autostart: Launching Hyprland via start-hyprland ==="
        
#         # Run the Zsh version of the wrapper script
#         # Note: We do not use 'exec' here so that if Hyprland exits cleanly, 
#         # we drop back into the TTY shell.
#         ~/.config/hypr/scripts/hyprland-tty.zsh
        
#         # start-hyprland handles crash recovery internally
#         # If we get here, start-hyprland exited cleanly (user logged out)
#     fi
# fi