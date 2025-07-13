#!/usr/bin/fish

function pkg-table
    paru -Qs | awk '
        /^local\// {
            split($1, parts, "/");
            name = parts[2];
            version = $2;
            getline;
            sub(/^[ \t]+/, "");
            description = $0;
            gsub(/\|/, "│");
            printf " %s | %s | %s \n", name, version, description;
        }
    ' | column -t -s '|'
end
