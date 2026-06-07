local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Helper to detect comment character based on filetype
local get_comment_prefix = function()
  return f(function(_, snip)
    local comment_map = {
      lua = "--",
      c = "//",
      cpp = "//",
      java = "//",
      javascript = "//",
      typescript = "//",
      python = "#",
      php = "//",
      ruby = "#",
      rust = "//",
      go = "//",
      bash = "#",
      yaml = "#",
    }
    return comment_map[vim.bo.filetype] or "//"
  end)
end

return {
  s("todo", {
    get_comment_prefix(),
    t(" TODO: "),
    i(1, "Task description"),
    t({ "", "" }),
  }),

  -- TODO with Author and Date -> // TODO(name): [message]
  s("todod", {
    get_comment_prefix(),
    t(" TODO("),
    i(1, "Author"),
    t("): "),
    i(2, "Task description"),
    t({ "", "" }),
  }),

  s("fix", {
    get_comment_prefix(),
    t(" FIX: "),
    i(1, "Bug description"),
    t({ "", "" }),
  }),

  s("note", {
    get_comment_prefix(),
    t(" NOTE: "),
    i(1, "Details"),
    t({ "", "" }),
  }),
}
