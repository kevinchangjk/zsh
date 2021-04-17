#!/bin/bash
input="$*"
types=()

while read line; do
types+=($line)
done < ~/Documents/Scripts/shell-scripts/commit_tags.txt

if [[ $(cut -d' ' -f1 <<<$input) == "-h" ]]; then
	for i in ${types[@]}
	do
		echo $i
	done
elif [[ $(cut -d' ' -f1 <<<$input) == "-a" ]]; then
	tag="$(cut -d' ' -f2 <<<$input)"
	message=${input##*$tag }
	tag=${tag#"#"}
	if [[ " ${types[@]} " =~ " ${tag} " ]]; then
		tag=[$tag]
	    printf "Nice commenting! \n"
	    if [ $tag == "[null]" ]; then
	    	git add . && git commit --amend -m "$message"
		else
			m="$tag $message"
		    git add . && git commit --amend -m "$m"
		fi
	else
		echo Tag again bruh
	fi
else
	tag="$(cut -d' ' -f1 <<<$input)"
	message=${input##*$tag }
	tag=${tag#"#"}
	if [[ " ${types[@]} " =~ " ${tag} " ]]; then
		tag=[$tag]
	    printf "Nice commenting! \n"
	    if [ $tag == "[null]" ]; then
	    	git add . && git commit -m "$message"
		else
			m="$tag $message"
		    git add . && git commit -m "$m"
		fi
	else
		echo Tag again bruh
	fi
fi
