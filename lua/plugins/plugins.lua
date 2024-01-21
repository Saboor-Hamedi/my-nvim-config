
return {
 
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
        opts= {
            filesystme ={
             filtered_itmes={
              visible = true, 
              show_hidden_count = true, 
              hide_gitignored = true,
              hide_dotfiles = true,
              width = 10
            }
           }
        },
      }
    }
}
