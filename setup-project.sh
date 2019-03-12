#!/usr/bin/env bash

project_name="$1"
base_git="git@github.com:AgileCloudLab/"
waf_au_extensions="waf_au_extensions"

raw_project_essentials="https://raw.githubusercontent.com/AgileCloudLab/project-stabels/master/"

doxyfile="Doxyfile?token=AB2n8H__01I12fePHS52ZeL9DraRAOXgks5ckNa_wA%3D%3D"
waffile="waf?token=AB2n8AskKBSzGugYn0Mqj3witaJ3R1f0ks5ckNhWwA%3D%3D"
wscriptfile="wscript?token=AB2n8LjPhubXD0ZV7q-wgbFIHEay5ejgks5ckNi3wA%3D%3D"
resolvefile="resolve.json?token=AB2n8Nmgcapx_k1wn9FoieL9zq3fbaBGks5ckNigwA%3D%3D"

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

