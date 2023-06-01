
local M = {}
M.search_dotfile = function()
    require("telescope.builtin").git_files({
        prompt_title = "< VimRc >",
        cwd = "~/.dotfiles/",
        hidden = true,
    })
end

local function set_background(content)
    vim.cmd(":silent !feh --bg-fill " .. content .. "\n")
end

local function select_background(prompt_bufnr, map)
    local function set_the_background(close)
        local content = require("telescope.actions.state").get_selected_entry(prompt_bufnr)
        set_background(content.cwd .. "/" .. content.value)
        if close then
            require("telescope.actions").close(prompt_bufnr)
        end
    end

    map("i", "<C-p>", function()
        set_the_background()
    end)

    map("i", "<CR>", function()
        set_the_background(true)
    end)
end

local function image_selector(prompt, cwd)
    return function()
        require("telescope.builtin").find_files({
            prompt_title = prompt,
            cwd = cwd,
            attach_mappings = function(prompt_bufnr, map)
                select_background(prompt_bufnr, map)
                return true
            end,
        })
    end
end

M.anime_selector = image_selector("< Anime Bobs > ", "/home/kishan/personal/extra/anime")

return M

