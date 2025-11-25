function disable_laptop_keeb
    # Only available on Linux with X11
    if test (uname) = Linux
        xinput list | grep -i 'at translated set 2 keyboard' | cut -d'=' -f2 | cut -d\t -f1 | xargs xinput float
    else
        echo "disable_laptop_keeb: Only available on Linux with X11"
        return 1
    end
end
