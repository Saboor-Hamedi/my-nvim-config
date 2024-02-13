local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end
local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use( 'wbthomason/packer.nvim' )
    -- lua function that many plugin uses 
    use('nvim-lua/plenary.nvim')
    use('tpope/vim-surround')
    use('vim-scripts/ReplaceWithRegister')
    use('numToStr/Comment.nvim')
   use ("kyazdani42/nvim-tree.lua" )
     use ("kyazdani42/nvim-web-devicons")
    use("bluz71/vim-nightfly-guicolors") -- preferred colorscheme

 if packer_bootstrap then
    require('packer').sync()
  end
end)


