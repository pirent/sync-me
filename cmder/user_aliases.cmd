;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat -n "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
javac=C:\'Program Files'\Java\jdk1.8.0_251\bin\javac.exe  
ssh-copy-id=cat ~/.ssh/id_rsa.pub  

init=%CMDER_ROOT%\vendor\init.bat

idmq=ssh root@idm-masnetq
eproxy=ssh root@eproxy-masnetq
iproxy=ssh root@iproxy-masnetq
mafall=ssh root@localhost -p 2222