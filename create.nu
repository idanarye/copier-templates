#!/usr/bin/env nu

let copier_dir = $env.CURRENT_FILE | path dirname
let language = $env.PROCESS_PATH | path dirname | path expand | path basename

# uv --project $copier_dir run ($copier_dir | path join create_test_project.py) $language

let new_dir_name = try {
    let cur_max = ls | where type == dir | each {get name | path basename | into int} | math max
    $cur_max + 1
} catch {
    1
} | into string

uv --project $copier_dir run copier copy ($copier_dir | path join project-in-language $language) $new_dir_name --trust
