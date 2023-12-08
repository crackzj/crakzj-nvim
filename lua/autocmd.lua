vim.api.nvim_create_autocmd({"BufWritePost"}, {
    pattern = "init.lua",
    group = nvimrc,
    callback = function()
      vim.o.path = vim.o.path .. ",**/*"
    end
})

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.api.nvim_create_autocmd({"InsertLeave"},{
  pattern={"*"},
  callback = function()
        local result = vim.fn.system('im-select')
        if not(#result == 24) then
          vim.fn.system("im-select com.apple.keylayout.ABC")
        end
  end
})

-- 关闭新行注释
vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = "*",
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
    end,
})

