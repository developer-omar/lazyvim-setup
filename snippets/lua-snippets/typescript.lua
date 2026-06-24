local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt
local f = ls.function_node

return {
  s(
    {
      trig = "typ",
      desc = "Type Definition",
    },
    fmt(
      [[
        type {} {{
          {}
        }}
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "int",
      desc = "Interface Definition",
    },
    fmt(
      [[
        interface {} {{
          {}
        }}
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "exptyp",
      desc = "Export a Type",
    },
    fmt(
      [[
        export type {} {{
          {}
        }}
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "expint",
      desc = "Export an Interface",
    },
    fmt(
      [[
        export interface {} {{
          {}
        }}
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s({
    trig = "attr",
    desc = "Class/Interface Attribute",
  }, {
    i(1, "attibute"),
    t(": "),
    i(2, "type"),
    t(";"),
  }),
}
