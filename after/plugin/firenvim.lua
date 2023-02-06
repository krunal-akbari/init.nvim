local function filre_nvim()
    local name = vim.fn.expand("%:p")
    local paths = vim.split(vim.fn.glob('/run/user/1000/firenvim/*'), '\n')
    for i, file in pairs(paths) do
        if i > 1 then
            vim.cmd('!rm -rdf /run/user/1000/firenvim/*')
            break
        elseif file == "" then
            print("there is no file found check your source ")
            break
        end
        vim.cmd("!cat " .. name .. " > " .. file)
    end
end

vim.keymap.set('n', '<leader>fp', filre_nvim,{silent = true})
