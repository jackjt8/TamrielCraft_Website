@ECHO OFF
CD %~dp0
bundle exec jekyll serve --livereload & http://127.0.0.1:4000/TC_Web/
pause
