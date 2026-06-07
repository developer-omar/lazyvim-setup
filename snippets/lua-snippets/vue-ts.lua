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
      trig = "vuc",
      desc = "Vue Use Composable",
    },
    fmt(
      [[
        import {{ ref }} from "vue";

        const use{} = () => {{
          {}
          return {{

          }}
        }}

        export {{ use{} }};
      ]],
      {
        i(1, "ComposableName"),
        i(0),
        rep(1),
      }
    )
  ),

  s(
    {
      trig = "vr",
      desc = "Vue Route",
    },
    fmt(
      [[
        {{
          path: "{}",
          name: "{}",
          component: {}
        }}
      ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "vdr",
      desc = "Vue Dynamic Route",
    },
    fmt(
      [[
        {{
          path: "{}",
          name: "{}",
          component: () => import("{}")
        }}
      ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),
}
