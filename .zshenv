export WSL=$(grep -q Microsoft /proc/version && echo 1 || echo 0)
export PATH=$HOME/bin:$PATH:/usr/local/cuda/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
export EDITOR=$HOME/bin/redit
export GOPATH=$HOME/go

if [[ $WSL == 1 ]]; then
  export DISPLAY=:0
  export WINDOWS_EDITOR='/mnt/c/Program Files/Notepad++/notepad++.exe'
  export WIN_TMPDIR=$(wslpath ${$(/mnt/c/Windows/System32/cmd.exe /c "echo %TMP%")%$'\r'})
fi

umask 0002
ulimit -c unlimited
