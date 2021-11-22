vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Don't show the dumb matching stuff.
vim.opt.shortmess:append "c"

 local has_any_words_before = function()
      if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
        return false
      end
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    local press = function(key)
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), "n", true)
    end

local lspkind = require "lspkind"
lspkind.init()

local cmp = require "cmp"
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- local luasnip = require("luasnip")
cmp.setup {

    mapping = {
 ["<CR>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
              return press("<C-R>=UltiSnips#ExpandSnippet()<CR>")
            end
            cmp.mapping.confirm({ select = true })
          elseif has_any_words_before() then
            press("<Space>")
          else
            fallback()
          end
        end, {
          "i",
          "s",
        }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
            press("<ESC>:call UltiSnips#JumpForwards()<CR>")
          elseif cmp.visible() then
            cmp.select_next_item()
          elseif has_any_words_before() then
            press("<Tab>")
          else
            fallback()
          end
        end, {
          "i",
          "s",
        }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
            press("<ESC>:call UltiSnips#JumpBackwards()<CR>")
          elseif cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, {
          "i",
          "s",
        }),
    },
snippet = {
        expand = function(args)
          vim.fn["UltiSnips#Anon"](args.body)
        end,
      },

 -- snippet = {
 --    expand = function(args)
 --      require("luasnip").lsp_expand(args.body)
 --    end,
 --  },

-- snippet = {
--       expand = function(args)
--         vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
--       end,
--     },

  sources = {
    { name = 'ultisnips' }, 
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "buffer", keyword_length = 5 },
    -- { name = "luasnip" },
    -- { name = 'vsnip' }, 
  },
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        ultisnips = "[snip]",
        buffer = "[buf]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[api]",
        path = "[path]",
        -- gh_issues = "[issues]",
      },
    },
  },

  experimental = {
    -- I like the new menu better! Nice work hrsh7th
    native_menu = false,

    -- Let's play with this for a day or two
    ghost_text = true,
  },
}








