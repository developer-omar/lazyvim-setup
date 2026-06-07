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
      trig = "php",
      desc = "PHP Open And Close Tags",
    },
    fmt(
      [[
        <?php
        {}

        ?>
      ]],
      {
        i(1),
      }
    )
  ),

  s(
    {
      trig = "po",
      desc = "PHP Open Tag",
    },
    fmt(
      [[
        <?php
        {}
      ]],
      {
        i(1),
      }
    )
  ),

  s({
    trig = "pc",
    desc = "PHP Close Tag",
  }, {
    t("?>"),
  }),

  s(
    {
      trig = "arrk",
      desc = "Associative Array",
    },
    fmt(
      [[
        [
          "{}" => {},
        ]
      ]],
      {
        i(1, "key"),
        i(2, "value"),
      }
    )
  ),

  s({
    trig = "kv",
    desc = "Key And Value For Associative Array",
  }, {
    t('"'),
    i(1, "key"),
    t('" => '),
    i(2, "value"),
    t(","),
  }),

  s(
    {
      trig = "fn",
      desc = "PHP Function",
    },
    fmt(
      [[
        function {}({}): {} {{
          {}
        }}
      ]],
      {
        i(1, "name"),
        i(2, "args"),
        i(3, "void"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "afn",
      desc = "PHP Anonymous Function",
    },
    fmt(
      [[
        function ({}): {} {{
          {}
        }}
      ]],
      {
        i(1, "args"),
        i(2, "void"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "fnu",
      desc = "PHP Function",
    },
    fmt(
      [[
        function ({}) use ({}): {} {{
          {}
        }}
      ]],
      {
        i(1, "args"),
        i(2, "vars"),
        i(3, "void"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "if",
      desc = "PHP If",
    },
    fmt(
      [[
        if ({}) {{
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
      trig = "el",
      desc = "PHP Else",
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
      desc = "PHP If Else",
    },
    fmt(
      [[
        if ({}) {{
          {}
        }} else {{

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
      trig = "eif",
      desc = "PHP Else If",
    },
    fmt(
      [[
        elseif ({}) {{
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
      trig = "sw",
      desc = "PHP Switch",
    },
    fmt(
      [[
        switch ({}) {{
          case "{}":
            {}
            break;
          default:
            break;
        }}
      ]],
      {
        i(1, "variable"),
        i(2, "label"),
        i(0, "code"),
      }
    )
  ),

  s(
    {
      trig = "cs",
      desc = "PHP Case",
    },
    fmt(
      [[
      case "{}":
        {}
        break;
      ]],
      {
        i(1, "label"),
        i(0, "code"),
      }
    )
  ),

  s({
    trig = "ter",
    desc = "PHP Ternary Operator",
  }, {
    i(1),
    t(" ? "),
    i(2),
    t(" : "),
    i(0),
    t(";"),
  }),

  s(
    {
      trig = "fl",
      desc = "PHP For Loop",
    },
    fmt(
      [[
        for (${} = 0; ${} < {}; ${}++) {{
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
      trig = "fe",
      desc = "PHP Foreach",
    },
    fmt(
      [[
        foreach (${} as ${}) {{
          {}
        }}
      ]],
      {
        i(1, "iterable"),
        i(2, "item"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "fek",
      desc = "PHP Foreach Key-Value",
    },
    fmt(
      [[
        foreach (${} as ${} => ${}) {{
          {}
        }}
      ]],
      {
        i(1, "iterable"),
        i(2, "key"),
        i(3, "value"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "wl",
      desc = "PHP While Loop",
    },
    fmt(
      [[
        while ({}) {{
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
      trig = "dwl",
      desc = "PHP Do While Loop",
    },
    fmt(
      [[
        do {{
          {}
        }} while ({});
      ]],
      {
        i(0),
        i(1),
      }
    )
  ),

  s(
    {
      trig = "cl",
      desc = "PHP Class",
    },
    fmt(
      [[
        class {} {{
          {}
        }}
      ]],
      {
        i(1, "ClassName"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "clx",
      desc = "PHP Class Extends",
    },
    fmt(
      [[
        class {} extends {} {{
          {}
        }}
      ]],
      {
        i(1, "ClassName"),
        i(2, "MotherClass"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "cli",
      desc = "PHP Class Implements",
    },
    fmt(
      [[
        class {} implements {} {{
          {}
        }}
      ]],
      {
        i(1, "ClassName"),
        i(2, "Interfaces"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "clxi",
      desc = "PHP Class Extends - Implements",
    },
    fmt(
      [[
        class {} extends {} implements {} {{
          {}
        }}
      ]],
      {
        i(1, "ClassName"),
        i(2, "MotherClass"),
        i(3, "Interfaces"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "in",
      desc = "PHP Interface",
    },
    fmt(
      [[
        interface {} {{
          {}
        }}
      ]],
      {
        i(1, "InterfaceName"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "trt",
      desc = "PHP Trait",
    },
    fmt(
      [[
        trait {} {{
          {}
        }}
      ]],
      {
        i(1, "TraitName"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "con",
      desc = "PHP Constructor",
    },
    fmt(
      [[
        {} function __construct ({}) {{
          {}
        }}
      ]],
      {
        i(1, "public"),
        i(2),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "conpp",
      desc = "PHP Constructor Property Promotion",
    },
    fmt(
      [[
      {} function __construct (
        {}
      ) {{}}
      ]],
      {
        i(1, "public"),
        i(2),
      }
    )
  ),

  s(
    {
      trig = "pubf",
      desc = "PHP Public Method",
    },
    fmt(
      [[
        public function {}({}): {} {{
          {}
        }}
      ]],
      {
        i(1, "methodName"),
        i(2),
        i(3, "void"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "pubsf",
      desc = "PHP Public Static Method",
    },
    fmt(
      [[
        public static function {}({}): {} {{
          {}
        }}
      ]],
      {
        i(1, "methodName"),
        i(2),
        i(3, "void"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "prof",
      desc = "PHP Protected Method",
    },
    fmt(
      [[
        protected function {}({}): {} {{
          {}
        }}
      ]],
      {
        i(1, "methodName"),
        i(2),
        i(3, "void"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "prosf",
      desc = "PHP Protected Static Method",
    },
    fmt(
      [[
        protected static function {}({}): {} {{
          {}
        }}
      ]],
      {
        i(1, "methodName"),
        i(2),
        i(3, "void"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "prif",
      desc = "PHP Private Method",
    },
    fmt(
      [[
        private function {}({}): {} {{
          {}
        }}
      ]],
      {
        i(1, "methodName"),
        i(2),
        i(3, "void"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "prisf",
      desc = "PHP Private Static Method",
    },
    fmt(
      [[
        private static function {}({}): {} {{
          {}
        }}
      ]],
      {
        i(1, "methodName"),
        i(2),
        i(3, "void"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "tc",
      desc = "PHP Try Catch",
    },
    fmt(
      [[
        try {{
          {}
        }} catch ({} $e) {{

        }}
      ]],
      {
        i(0),
        i(1, [[\Exception]]),
      }
    )
  ),

  s(
    {
      trig = "tcf",
      desc = "PHP Try Catch Finally",
    },
    fmt(
      [[
        try {{
          {}
        }} catch ({} $e) {{

        }} finally {{

        }}
      ]],
      {
        i(0),
        i(1, [[\Exception]]),
      }
    )
  ),

  s({
    trig = "in",
    desc = "PHP Include",
  }, {
    t('include "'),
    i(1),
    t('";'),
  }),

  s({
    trig = "ino",
    desc = "PHP Include Once",
  }, {
    t('include_once "'),
    i(1),
    t('";'),
  }),

  s({
    trig = "req",
    desc = "PHP Require",
  }, {
    t('require "'),
    i(1),
    t('";'),
  }),

  s({
    trig = "reqo",
    desc = "PHP Require Once",
  }, {
    t('require_once "'),
    i(1),
    t('";'),
  }),

  s({
    trig = "$gl",
    desc = "PHP $GLOBAL",
  }, {
    t('$GLOBALS["'),
    i(1),
    t('"]'),
  }),

  s({
    trig = "$se",
    desc = "PHP $_SERVER",
  }, {
    t('$_SERVER["'),
    i(1),
    t('"]'),
  }),

  s({
    trig = "$r",
    desc = "PHP $_REQUEST",
  }, {
    t('$_REQUEST["'),
    i(1),
    t('"]'),
  }),

  s({
    trig = "$p",
    desc = "PHP $_POST",
  }, {
    t('$_POST["'),
    i(1),
    t('"]'),
  }),

  s({
    trig = "$g",
    desc = "PHP $_GET",
  }, {
    t('$_GET["'),
    i(1),
    t('"]'),
  }),

  s({
    trig = "$f",
    desc = "PHP $_FILES",
  }, {
    t('$_FILES["'),
    i(1),
    t('"]'),
  }),

  s({
    trig = "$e",
    desc = "PHP $_ENV",
  }, {
    t('$_ENV["'),
    i(1),
    t('"]'),
  }),

  s({
    trig = "$c",
    desc = "PHP $_COOKIE",
  }, {
    t('$_COOKIE["'),
    i(1),
    t('"]'),
  }),

  s({
    trig = "$s",
    desc = "PHP $_SESSION",
  }, {
    t('$_SESSION["'),
    i(1),
    t('"]'),
  }),
}
