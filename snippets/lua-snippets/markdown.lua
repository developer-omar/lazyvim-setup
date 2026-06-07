local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node

local function generate_table(args)
  local cols = tonumber(args[1][1]) or 2
  local rows = tonumber(args[2][1]) or 2
  local nodes = {}

  -- 1. Heading
  table.insert(nodes, t("|"))
  for c = 1, cols do
    table.insert(nodes, t(" "))
    table.insert(nodes, i(c, "Col" .. c)) -- Nodos de inserción para el header
    table.insert(nodes, t(" |"))
  end
  table.insert(nodes, t({ "", "|" }))

  -- 2. Markdown Separator
  for c = 1, cols do
    table.insert(nodes, t("---|"))
  end
  table.insert(nodes, t({ "", "" }))

  -- 3. Rows
  local count = cols + 1
  for r = 1, rows do
    table.insert(nodes, t("|"))
    for c = 1, cols do
      table.insert(nodes, t(" "))
      table.insert(nodes, i(count, "R" .. r .. "C" .. c))
      table.insert(nodes, t(" |"))
      count = count + 1
    end
    if r < rows then
      table.insert(nodes, t({ "", "" }))
    end
  end

  return sn(nil, nodes)
end

return {
  -- Headings
  s({ trig = "h1", desc = "Heading level 1" }, {
    t("# "),
    i(1, "Title"),
  }),
  s({ trig = "h2", desc = "Heading level 2" }, {
    t("## "),
    i(1, "Subtitle"),
  }),
  s({ trig = "h3", desc = "Heading level 3" }, {
    t("### "),
    i(1, "Section"),
  }),

  -- Lists
  s({ trig = "ul", desc = "Unordered list item" }, {
    t("- "),
    i(1, "List item"),
  }),
  s({ trig = "ol", desc = "Ordered list item" }, {
    t("1. "),
    i(1, "List item"),
  }),

  -- Links
  s({ trig = "link", desc = "Markdown link" }, {
    t("["),
    i(1, "text"),
    t("]("),
    i(2, "url"),
    t(")"),
  }),

  -- Images
  s({ trig = "img", desc = "Markdown image" }, {
    t("!["),
    i(1, "alt text"),
    t("]("),
    i(2, "url"),
    t(")"),
  }),

  -- Inline code
  s({ trig = "code", desc = "Inline code" }, {
    t("`"),
    i(1, "inline code"),
    t("`"),
  }),

  -- Code block
  s({ trig = "codeblock", desc = "Code block fenced" }, {
    t("```"),
    i(1, "language"),
    t({ "", "" }),
    i(2, "your code here"),
    t({ "", "```" }),
  }),

  s({ trig = "hr", dscr = "Horizontal Rule (---)" }, {
    t({ "", "---", "" }),
    i(0),
  }),

  -- Blockquote
  s({ trig = "quote", desc = "Blockquote" }, {
    t("> "),
    i(1, "Quoted text"),
  }),

  -- Task lists
  s({ trig = "todo", desc = "Task list unchecked" }, {
    t("- [ ] "),
    i(1, "Pending task"),
  }),
  s({ trig = "done", desc = "Task list checked" }, {
    t("- [x] "),
    i(1, "Completed task"),
  }),

  -- Math block
  s({ trig = "math", desc = "LaTeX math block" }, {
    t("$$"),
    t({ "", "" }),
    i(1, "equation"),
    t({ "", "$$" }),
  }),

  -- Bold text
  s({ trig = "bold", desc = "Bold text" }, {
    t("**"),
    i(1, "bold text"),
    t("**"),
  }),

  -- Italic text
  s({ trig = "italic", desc = "Italic text" }, {
    t("*"),
    i(1, "italic text"),
    t("*"),
  }),

  -- Bold + Italic combined
  s({ trig = "bi", desc = "Bold and italic text" }, {
    t("***"),
    i(1, "bold italic text"),
    t("***"),
  }),

  -- Tables
  s({ trig = "table", desc = "Basic table" }, {
    t("| "),
    i(1, "Column1"),
    t(" | "),
    i(2, "Column2"),
    t(" |"),
    t({ "", "|---|---|", "" }),
    t("| "),
    i(3, "Data1"),
    t(" | "),
    i(4, "Data2"),
    t(" |"),
  }),

  -- Generate a table
  s({ trig = "tablegen", desc = "Generate table with rows and columns" }, {
    t("Columns: "),
    i(1, "2"),
    t({ "", "Rows: " }),
    i(2, "2"),
    t({ "", "" }),
    d(3, generate_table, { 1, 2 }),
  }),
}
