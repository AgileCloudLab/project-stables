#!/usr/bin/env bash

project_name="$1"
base_git="git@github.com:AgileCloudLab/"
waf_au_extensions="waf_au_extensions"

raw_project_essentials="https://raw.githubusercontent.com/AgileCloudLab/project-stabels/master/"

doxyfile="Doxyfile"
waffile="waf"
wscriptfile="wscript"
resolvefile="resolve.json"

git clone "$base_git$project_name.git" &&
    cd $project_name &&
    mkdir -p "src/$project_name" &&
    git clone "$base_git$waf_au_extensions.git" &&
    mkdir test &&
    mkdir examples &&
    wget "$raw_project_essentials$doxyfile" -O Doxyfile &&
    wget "$raw_project_essentials$waffile" -O waf && 
    wget "$raw_project_essentials$wscriptfile" -O wscript &&
    wget "$raw_project_essentials$resolvefile" -O resolve.json&&
    chmod +x waf && 
    git checkout -b development

