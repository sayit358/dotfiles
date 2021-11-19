require("notify").setup({stages = "slide"})
vim.notify = require("notify")
require("telescope").load_extension("notify")
