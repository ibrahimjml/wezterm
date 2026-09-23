local M = {}

M.shells = {
    cmder = { "cmd.exe", "/k", "C:\\cmder\\vendor\\init.bat" },
    cmd = { 'cmd.exe', '/s', '/k' },
    powershell = { "powershell.exe", "-NoLogo" },
    pwsh = { "pwsh.exe", "-NoLogo" }, 
    bash = { "bash.exe" },             
    zsh = { "wsl.exe", "~", "-e", "zsh" } 
}


M.default_shell = "cmd"

function M.apply_shell_config(config)
 
    local prog = M.shells[M.default_shell]
    
    if prog then
        config.default_prog = prog
    else
       
        config.default_prog = M.shells.cmd
    end
end

return M
