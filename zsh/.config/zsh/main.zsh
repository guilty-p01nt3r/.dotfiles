#!/bin/zsh

# Source all files in all directory in this folder
for file in $ZSH_CUSTOM/*/*.zsh; do 
	source $file
done

