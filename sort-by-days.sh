#!/bin/bash 

echo "# Teaching Kids Programming"
echo "[Sort by Categories](https://github.com/DoctorLai/Teaching-Kids-Programming/blob/main/README.md)"

curl -s "https://raw.githubusercontent.com/DoctorLai/Teaching-Kids-Programming/main/README.md" | grep "\[B站\]" | awk -F '|' '{
    print $6"|"$5"|"$3"|"$4
}' | sort -k 1 | awk -F '|' 'BEGIN{days=1}{
    print "- Day " days ": " $2$3$4$5
    days ++
}' | tac
