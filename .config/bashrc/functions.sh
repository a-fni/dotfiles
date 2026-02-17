# Function in charge of opening a given path with Dolphin
function open() {
    dolphin "$1" > /dev/null 2>&1 &
    disown
}

