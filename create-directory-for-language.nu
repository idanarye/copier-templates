#!/usr/bin/env nu


let copier_dir = $env.CURRENT_FILE | path dirname

let chosen = ls ($copier_dir | path join project-in-language) | where type == dir | each {$in.name | path basename} | where {
    path exists | not $in
} | sk --format {path basename}

mkdir $chosen
ln -s ($copier_dir | path join create.nu) $chosen
