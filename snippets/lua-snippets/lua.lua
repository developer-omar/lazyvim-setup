local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
-- local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt
-- local f = ls.function_node -- Importamos el nodo de función
return {
  s(
    {
      trig = "lsnip",
      desc = "Lua Snippet - One Line",
    },
    fmt(
      [[
      s({{
          trig = "{}",
          desc = "{}",
        }}, {{ 
          {}
        }}
      ),
    ]],
      {
        i(1, "trigger"),
        i(2, "descripcion"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "msnip",
      desc = "Lua Snippet - Multiline",
    },
    fmt(
      [=[
      s(
        {{
          trig = "{}",
          desc = "{}",
        }},
        fmt(
          [[
            {}
          ]],
          {{
            {}
          }}
        )
      ),
    ]=],
      {
        i(1, "trigger"),
        i(2, "descripcion"),
        i(3),
        i(0, "i(1),"),
      }
    )
  ),
}
