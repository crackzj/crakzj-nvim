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
