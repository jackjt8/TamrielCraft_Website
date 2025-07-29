#!/usr/bin/env bash
cd "$(dirname "$0")"
bundle exec jekyll serve --livereload &
sleep 2
xdg-open http://127.0.0.1:4000/TC_Web/
