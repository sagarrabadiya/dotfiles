@echo off
set v_params=%*

if defined v_params (
    set v_params=%v_params:\=/%
)

bash.exe -c "php-cs-fixer `echo %v_params:"=\"% | sed 's/C:/\/mnt\/c/i'`"