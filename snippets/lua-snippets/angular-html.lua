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
      trig = "aif",
      desc = "Angular @if",
    },
    fmt(
      [[
        @if({}) {{
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
      trig = "aife",
      desc = "Angular @if @else",
    },
    fmt(
      [[
        @if({}) {{
          {}
        }} @else {{
          
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
      trig = "aeif",
      desc = "Angular @else if",
    },
    fmt(
      [[
        @else if({}) {{
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
      trig = "ael",
      desc = "Angular @else",
    },
    fmt(
      [[
        @else {{
          {}
        }}
      ]],
      {
        i(1),
      }
    )
  ),

  s(
    {
      trig = "afor",
      desc = "Angular @for",
    },
    fmt(
      [[
        @for({} of {}; track {}) {{
          {}
        }}
      ]],
      {
        i(1),
        i(2),
        i(3, "$index"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "aemp",
      desc = "Angular @for's @empty",
    },
    fmt(
      [[
        @empty {{
          {}
        }}
      ]],
      {
        i(1),
      }
    )
  ),

  s(
    {
      trig = "asw",
      desc = "Angular @switch",
    },
    fmt(
      [[
        @switch({}) {{
          @case({}) {{
            {}
          }}
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
      trig = "acase",
      desc = "Angular @case",
    },
    fmt(
      [[
        @case({}) {{
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
      trig = "adef",
      desc = "Angular @default",
    },
    fmt(
      [[
        @default {{
          {}
        }}
      ]],
      {
        i(1),
      }
    )
  ),

  s({
    trig = "aatt",
    desc = "Angular Squeare Brackets Attribute",
  }, {
    t("["),
    i(1),
    t('] = "'),
    i(2),
    t('"'),
  }),

  s({
    trig = "aev",
    desc = "Angular Parentheses Event Attribute",
  }, {
    t("("),
    i(1),
    t(') = "'),
    i(2),
    t('"'),
  }),
}
