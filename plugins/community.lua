return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.mini-ai" },
  { import = "astrocommunity.code-runner.sniprun" },
  {
    -- further customize the options set by the community
    "sniprun",
    opts = {
      display = {
        "LongTempFloatingWindow",
        "VirtualTextOk",
        "VirtualTextErr"
      },
    },
  },
}
