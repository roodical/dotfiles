function mpv-vr
    set -l videoFile $argv[1]
    mpv --script=~/.config/mpv/360plugin.lua --script-opts=360plugin-enabled=yes $videoFile
end
