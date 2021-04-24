#!/bin/zsh
string=$(amixer -c 1 | awk 'c&&!--c;/Master/{c=4}')
parts=(${(@s:-:)string})
parts=$parts[2]
percentage=(${(@s:.:)parts})
echo -$percentage[1]dB
