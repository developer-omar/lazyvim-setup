local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt
local f = ls.function_node

return {
  s({
    trig = "dobj",
    desc = "Destructuring An Object",
  }, {
    t("const { "),
    i(0),
    t(" } = "),
    i(1, "object"),
    t(";"),
  }),

  s({
    trig = "darr",
    desc = "Destructuring An Array",
  }, {
    t("const [ "),
    i(0),
    t(" ] = "),
    i(1, "array"),
    t(";"),
  }),

  s({
    trig = "af",
    desc = "Arrow Function",
  }, {
    t("("),
    i(1),
    t(") => "),
    i(2),
  }),

  s(
    {
      trig = "afb",
      desc = "Arrow Function With Body",
    },
    fmt(
      [[
        ({}) => {{
          {}
        }}
      ]],
      {
        i(1),
        i(2),
      }
    )
  ),

  s({
    trig = "str-int",
    desc = "String Interpolation",
  }, {
    t("${ "),
    i(1),
    t(" }"),
  }),

  s({
    trig = "clg",
    desc = "Console Log",
  }, {
    t("console.log("),
    i(1),
    t(");"),
  }),

  s({
    trig = "clgo",
    desc = "Console Log",
  }, {
    t("console.log({ "),
    i(1),
    t(" });"),
  }),

  s({
    trig = "cer",
    desc = "Console Error",
  }, {
    t("console.error("),
    i(1),
    t(");"),
  }),

  s({
    trig = "cdb",
    desc = "Console Debug",
  }, {
    t("console.Debug("),
    i(1),
    t(");"),
  }),

  s({
    trig = "cwa",
    desc = "Console Warning",
  }, {
    t("console.warn("),
    i(1),
    t(");"),
  }),

  s({
    trig = "cin",
    desc = "Console Info",
  }, {
    t("console.info("),
    i(1),
    t(");"),
  }),

  s({
    trig = "lass",
    desc = "Let Assignment",
  }, {
    t("let "),
    i(1),
    t(" = "),
    i(2),
    t(";"),
  }),

  s({
    trig = "coass",
    desc = "Constant Assignment",
  }, {
    t("const "),
    i(1),
    t(" = "),
    i(2),
    t(";"),
  }),

  s(
    {
      trig = "if",
      desc = "If Statement",
    },
    fmt(
      [[
        if({}) {{
          {}
        }}
      ]],
      {
        i(1),
        i(2),
      }
    )
  ),

  s(
    {
      trig = "el",
      desc = "Else Statement",
    },
    fmt(
      [[
        else {{
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
      trig = "ife",
      desc = "If and Else Statements",
    },
    fmt(
      [[
        if({}) {{
          {}
        }} else {{

        }}
      ]],
      {
        i(1),
        i(2),
      }
    )
  ),

  s(
    {
      trig = "eif",
      desc = "Else If Statement",
    },
    fmt(
      [[
        else if({}) {{
          {}
        }}
      ]],
      {
        i(1),
        i(2),
      }
    )
  ),

  s({
    trig = "ter",
    desc = "Ternary Operator",
  }, {
    i(1),
    t(" ? "),
    i(2),
    t(" : "),
    i(3),
  }),

  s(
    {
      trig = "vter",
      desc = "Vertical Ternary Operator",
    },
    fmt(
      [[
        {}
        ? {}
        : {}
      ]],
      {
        i(1),
        i(2),
        i(3),
      }
    )
  ),

  s(
    {
      trig = "fl",
      desc = "For Loop",
    },
    fmt(
      [[
        for (let {} = 0; {} < {}; {}++) {{
          {}
        }}
      ]],
      {
        i(1, "i"),
        rep(1),
        i(2),
        rep(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "fi",
      desc = "For In Loop",
    },
    fmt(
      [[
        for(let {} in {}) {{
          {}
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
      trig = "fo",
      desc = "For Of Loop",
    },
    fmt(
      [[
        for(let {} of {}) {{
          {}
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
      trig = "wl",
      desc = "While Loop",
    },
    fmt(
      [[
        while({}) {{
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
      trig = "tc",
      desc = "Try Catch",
    },
    fmt(
      [[
        try {{
          {}
        }} catch({}) {{

        }}
      ]],
      {
        i(0),
        i(1, "err"),
      }
    )
  ),

  s(
    {
      trig = "tcf",
      desc = "Try Catch Finally",
    },
    fmt(
      [[
        try {{
          {}
        }} catch({}) {{

        }} finally {{

        }}
      ]],
      {
        i(0),
        i(1, "err"),
      }
    )
  ),

  s(
    {
      trig = "sw",
      desc = "Switch Case",
    },
    fmt(
      [[
        switch({}) {{
          case {}:
            return {}
          default:
            return
        }}
      ]],
      {
        i(1, "expr"),
        i(2, "value"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "f",
      desc = "Function",
    },
    fmt(
      [[
        function({}) {{
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
      trig = "fn",
      desc = "Function Named",
    },
    fmt(
      [[
        function {}({}) {{
          {}
        }}
      ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),

  s({
    trig = "kv",
    desc = "Key/Value Pair",
  }, {
    i(1, "key"),
    t(": "),
    i(2, "value"),
    t(","),
  }),

  s(
    {
      trig = "con",
      desc = "Class Constructor",
    },
    fmt(
      [[
        constructor({}) {{
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
      trig = "meth",
      desc = "Method",
    },
    fmt(
      [[
      {}({}) {{
        {}
      }}
      ]],
      {
        i(1, "method"),
        i(2, "args"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "pge",
      desc = "Getter Property",
    },
    fmt(
      [[
        get {}() {{
          return {}
        }}
      ]],
      {
        i(1, "propertyName"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "pse",
      desc = "Setter Property",
    },
    fmt(
      [[
        set {}({}) {{
          {}
        }}
      ]],
      {
        i(1, "propertyName"),
        i(2),
        i(0),
      }
    )
  ),

  s({
    trig = "imd",
    desc = "Import Using Destructuring",
  }, {
    t("import { "),
    i(0),
    t(" } from '"),
    i(1),
    t("';"),
  }),

  s({
    trig = "imn",
    desc = "Import Without Module Name",
  }, {
    t("import from '"),
    i(1),
    t("';"),
  }),

  s({
    trig = "imp",
    desc = "Import Default",
  }, {
    t("import "),
    i(0),
    t(" from '"),
    i(1),
    t("';"),
  }),

  s({
    trig = "ime",
    desc = "Import Everything As Alias",
  }, {
    t("import * as "),
    i(0),
    t(" from '"),
    i(1),
    t("';"),
  }),

  s(
    {
      trig = "st",
      desc = "setTimeout",
    },
    fmt(
      [[
        setTimeout(() => {{
          {}
        }}, {})
      ]],
      {
        i(0),
        i(1),
      }
    )
  ),
}
