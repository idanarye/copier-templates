#!/usr/bin/env nu

let copier_dir = $env.CURRENT_FILE | path dirname
let language = $env.PROCESS_PATH | path dirname | path expand | path basename

let new_dir_name = try {
    let cur_max = ls | where type == dir | each {get name | path basename | try { into int }} | math max
    $cur_max + 1
} catch {
    1
} | into string

let new_dir_name = input --default $new_dir_name $'Name for new ($language) project: '

uv --project $copier_dir run copier copy ($copier_dir | path join project-in-language $language) $new_dir_name --trust

print {'new project directory': $new_dir_name}
