-- NERDTree show hidden file
vim.cmd[[:let NERDTreeShowHidden=1]]
-- vim.cmd[[:let g:NERDTreeWinPos = "right"]]
vim.cmd[[:let g:NERDTreeWinSize = 50]]

-- Copy to cliphoard
vim.opt.clipboard='unnamedplus'

-- General Neo-Vim configuration 
vim.opt.title=true
vim.opt.encoding='utf-8'
vim.opt.mouse='a'
vim.opt.cursorline=true
vim.opt.autoread=true

-- “Hybrid” line numbers
-- Automatic toggling between line number modes
vim.opt.number=true
vim.cmd[[
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
]]
