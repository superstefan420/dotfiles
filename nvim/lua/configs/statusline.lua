local fn = vim.fn
local api = vim.api

local modes = {
  ["n"] = "NORMAL",
  ["no"] = "NORMAL",
  ["v"] = "VISUAL",
  ["V"] = "VISUAL LINE",
  [""] = "VISUAL BLOCK",
  ["s"] = "SELECT",
  ["S"] = "SELECT LINE",
  [""] = "SELECT BLOCK",
  ["i"] = "INSERT",
  ["ic"] = "INSERT",
  ["R"] = "REPLACE",
  ["Rv"] = "VISUAL REPLACE",
  ["c"] = "COMMAND",
  ["cv"] = "VIM EX",
  ["ce"] = "EX",
  ["r"] = "PROMPT",
  ["rm"] = "MOAR",
  ["r?"] = "CONFIRM",
  ["!"] = "SHELL",
  ["t"] = "TERMINAL",
}

local function mode()
  local current_mode = api.nvim_get_mode().mode
  return string.format(" %s ", modes[current_mode]):upper()
end

local function update_mode_colors()
  local current_mode = api.nvim_get_mode().mode
  local mode_color = "%#StatusLineAccent#"
  if current_mode == "n" then
      mode_color = "%#StatuslineAccent#"
  elseif current_mode == "i" or current_mode == "ic" then
      mode_color = "%#StatuslineInsertAccent#"
  elseif current_mode == "v" or current_mode == "V" or current_mode == "" then
      mode_color = "%#StatuslineVisualAccent#"
  elseif current_mode == "R" then
      mode_color = "%#StatuslineReplaceAccent#"
  elseif current_mode == "c" then
      mode_color = "%#StatuslineCommandAccent#"
  elseif current_mode == "t" then
      mode_color = "%#StatuslineTerminalAccent#"
  end
  return mode_color
end

local function filepath()
  local fpath = fn.fnamemodify(fn.expand "%", ":~:.:h")
  if fpath == "" or fpath == "." then
      return " "
  end

  return string.format(" %%<%s/", fpath)
end

local function filename()
  local fname = fn.expand "%:t"
  if fname == "" then
      return ""
  end
  return fname .. " "
end

local function lsp()
  local count = {}
  local levels = {
    errors = "Error",
    warnings = "Warn",
    info = "Info",
    hints = "Hint",
  }

  for k, level in pairs(levels) do
    count[k] = vim.tbl_count(vim.diagnostic.get(0, { severity = level }))
  end

  local errors = ""
  local warnings = ""
  local hints = ""
  local info = ""

  if count["errors"] ~= 0 then
    errors = " %#LspError# " .. count["errors"]
  end
  if count["warnings"] ~= 0 then
    warnings = " %#LspWarn# " .. count["warnings"]
  end
  if count["hints"] ~= 0 then
    hints = " %#LspHint# " .. count["hints"]
  end
  if count["info"] ~= 0 then
    info = " %#LspInfo# " .. count["info"]
  end

  return errors .. warnings .. hints .. info .. "%#Normal#"
end


local function filetype()
	local file_name, file_ext = fn.expand("%:t"), fn.expand("%:e")
  	local icon = require'nvim-web-devicons'.get_icon(file_name, file_ext, { default = true })
	if vim.bo.filetype == '' then return '' end
	return string.format(" %s %s ", icon, vim.bo.filetype):lower()
end

local function lineinfo()
  if vim.bo.filetype == "alpha" then
    return ""
  end
  return " %P %l:%c "
end

Statusline = {}

Statusline.active = function()
  return table.concat {
    "%#StatusLine#",
    update_mode_colors(),
    mode(),
    "%#StatusLine#",
    filepath(),
    filename(),
    "%#StatusLine#",
    lsp(),
    "%#StatusLine#%=",
    filetype(),
    lineinfo(),
  }
end

function Statusline.inactive()
  return " %F"
end

function Statusline.short()
  return "%#StatusLineNC#  "
end

function Statusline.show()
	api.nvim_exec([[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.Statusline.short()
  augroup END
]], false)
end



Statusline.show()

--[[require("lualine").setup({
   options = {
        icons_enabled = 'false',
        theme =  "tokyonight",
		component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''}
    },
    sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', {
        'diagnostics',
        sources = { 'nvim_lsp'},
        sections = { 'error', 'warn', 'info', 'hint' },
    }
  },
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {''},
    lualine_z = {'location'}
  },
})]]--

