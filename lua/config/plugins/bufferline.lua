vim.opt.termguicolors = true
local buffline = require("bufferline")

buffline.setup({
  options = {
     diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
          or (e == "warning" and " " or "" )
        s = s .. n .. sym
      end
      return s
    end,
    hover = {
      enabled = true,
      delay = 200,
      reveal = { "close" }
  },
  styling = "padded_slope"
  }
})
