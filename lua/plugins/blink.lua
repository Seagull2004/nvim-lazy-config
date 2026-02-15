-- plugin for the completion (lsp and snippets)
return {
  "saghen/blink.cmp",
  enabled = true,
  opts = {
    keymap = {
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
      ['<Tab>'] = { 'select_next', 'fallback' },
    }
  }
}



