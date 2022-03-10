return {
    {
      "Pocco81/TrueZen.nvim",  
      cmd = {
        "TZAtaraxis",
        "TZMinimalist",
        "TZFocus",
      },
      config = function()
        require "custom.plugins.truezen"
      end,
    },
    {
      'phaazon/hop.nvim',
      branch = 'v1',
      config = function()
        require "custom.plugins.hop"
      end,
    },
  }
  