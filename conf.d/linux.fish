# Linux-specific configuration
if test (uname) = Linux
    # Linux-specific paths
    fish_add_path /usr/local/go/bin
    fish_add_path /home/stonecharioteer/.krew/bin

    # Java configuration (Arch Linux paths)
    # Uncomment and adjust version as needed:
    # set -x JAVA_HOME /usr/lib/jvm/java-16-openjdk/
    # set -x JAVA_HOME /usr/lib/jvm/java-8-openjdk/jre

    # Additional Linux-specific environment variables
    set -x ANSIBLE_DEPRECATION_WARNINGS 0
    set -x ANSIBLE_NOCOWS 1
end
