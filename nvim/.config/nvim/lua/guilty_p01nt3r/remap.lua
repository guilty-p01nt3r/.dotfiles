-- Yanking
-- enaled osc52 in after
--vim.keymap.set('v', '<leader>p', '"_dP')
--vim.keymap.set('n', '<leader>y', '"+y')
--vim.keymap.set('v', '<leader>y', '"+y')

-- Formatting
vim.keymap.set("n", "<leader>=", "<cmd>lua vim.lsp.buf.format()<CR>")

-- Hyperlink
vim.keymap.set('n', 'gx', ':execute "!xdg-open " . shellescape("<cWORD>")<CR>')

-- Moving
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--vim.keymap.set("n", "n", "nzzzv")
--vim.keymap.set("n", "N", "Nzzzv")

-- Replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Fix
vim.keymap.set("n", "Q", "<nop>")


-- Use rsync to sync files with remote server
-- remote server is defined in .env file in the root of the project

-- Read the .env file
local env = {}
env_file = io.open(vim.fn.getcwd() .. "/.env", "r")
if env_file then
    for line in env_file:lines() do
        local key, value = line:match("([^=]+)=(.*)")
        if (key) then
            env[key] = value
        end
    end
    env_file:close()
end

vim.keymap.set("n", "<leader>rs", function()
    local rsync_cmd = env["RSYNC_CMD"] or nil;

    if (not rsync_cmd) then
        print("RSYNC_CMD not defined in .env file")
        return
    end

    print("Running rsync command: " .. rsync_cmd)
    vim.schedule(function()
        local content = vim.fn.system(env["RSYNC_CMD"])
        --print(content)
        NavigationFloatingWin("RSYNC", content)
    end)
end)

function tprint(tbl, indent)
    if not indent then indent = 0 end
    local toprint = string.rep(" ", indent) .. "{\r\n"
    indent = indent + 2
    for k, v in pairs(tbl) do
        toprint = toprint .. string.rep(" ", indent)
        if (type(k) == "number") then
            toprint = toprint .. "[" .. k .. "] = "
        elseif (type(k) == "string") then
            toprint = toprint .. k .. "= "
        end
        if (type(v) == "number") then
            toprint = toprint .. v .. ",\r\n"
        elseif (type(v) == "string") then
            toprint = toprint .. "\"" .. v .. "\",\r\n"
        elseif (type(v) == "table") then
            toprint = toprint .. tprint(v, indent + 2) .. ",\r\n"
        else
            toprint = toprint .. "\"" .. tostring(v) .. "\",\r\n"
        end
    end
    toprint = toprint .. string.rep(" ", indent - 2) .. "}"
    return toprint
end

function NavigationFloatingWin(title, content)
    -- get the editor's max width and height
    local width = vim.api.nvim_get_option("columns")
    local height = vim.api.nvim_get_option("lines")

    -- create a new, scratch buffer
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_option(buf, 'buftype', 'nofile')
    -- write inside the buffer
    content = vim.split(content, "\n")
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, content)

    -- if the editor is big enough
    if (width > 150 or height > 35) then
        -- fzf's window height is 3/4 of the max height, but not more than 30
        local win_height = math.min(math.ceil(height * 3 / 4), 30)
        local win_width

        -- if the width is small
        if (width < 150) then
            -- just subtract 8 from the editor's width
            win_width = math.ceil(width - 8)
        else
            -- use 90% of the editor's width
            win_width = math.ceil(width * 0.9)
        end

        -- settings
        local opts = {
            relative = "editor",
            width = win_width,
            height = win_height,
            row = math.ceil((height - win_height) / 2 - 1),
            col = math.ceil((width - win_width) / 2),
            style = "minimal",
            border = "single",
            title = title,
            focusable = true
        }

        -- create a new floating window, centered in the editor and focus it
        local win = vim.api.nvim_open_win(buf, true, opts)
        -- check if win is a window
        if win then
            vim.api.nvim_win_set_option(win, 'winhl', 'Normal:Normal')
            vim.api.nvim_set_current_win(win)
        else
            print("Error creating window")
        end
    end
end
