# Auto-start Sway on TTY1 (Linux only)
if test (uname) = Linux
    set TTY1 (tty)
    if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
        exec sway
    end
end
