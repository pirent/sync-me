# Setup CMDER

## Reloading (sourcing) Cmder config files (aliases, profile etc)

Copy the file named *user_aliases.cmd* to overwrite the one in <path-to-your-cmder>\config

Restart the Cmder, or call `%CMDER_ROOT%\vendor\init.bat` .



## Enable fzf on cmder in Windows 10

1. Download the Windows binary file at: https://github.com/junegunn/fzf-bin/releases
2. Unzip the file and copy *fzf.exe* file the Cmder bin folder, e.g, `C:\cmder\bin` [1] [2]
3. Add the *fzfrc* profile file to vendor folder, e.g., `C:\cmder\vendor\fzf\`
4. Sourcing the fzfrc for any new change made to it `source $CMDER_ROOT/vendor/fzf/fzfrc`
5. Copy the file *user_profile.sh* in this directory to `C:\cmder\config` to enable automatically sourcing *fzfrc* file

:information_source:

[1] Every binary in that folder will be automatically added to the Cmder PATH variable

[2] The alternative way is downloading fzf somewhere else and add the line below to the `user_profile.cmd` file (it is under `C:\cmder\config`.) 

```
set "PATH=%USERPROFILE%\Documents\Apps\fzf;%PATH%"
```

------

### Limitation

There is no *xclip* program for Windows, the feature of searching and paste the result to clipboard is disabled. In other words, you have to copy the result manually.



# Tips

## SSH COPY ID

Do this under `Bash` session: `Create new console -> bash -> bash`

If you do not have a key yet, generate ssh-key: `ssh-keygen`. You will be asked to type a `passphrase`, just press `Enter` to leave it blank.

Upload the ssh-key to server: `ssh-copy-id <user>@SERVER_IP -pSSHPORT`