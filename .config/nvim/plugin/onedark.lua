local onedarkpro = require('onedarkpro')
onedarkpro.setup({
  hlgroups = {
    VimwikiListTodo = {fg = '${purple}'},
    Cursor = {fg = '${black}', bg = '${white}'},
  },
  styles = {
    comments = "italic",
  },
})
onedarkpro.load()
