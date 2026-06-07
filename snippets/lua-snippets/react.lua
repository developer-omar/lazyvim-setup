local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local t = ls.text_node
local f = ls.function_node -- Importamos el nodo de función
local fmt = require("luasnip.extras.fmt").fmt

-- Función para capitalizar la primera letra
local function capitalize(args)
  local text = args[1][1] or ""
  return text:gsub("^%l", string.upper)
end

return {
  s({
    trig = "rus",
    desc = "React Hook useState",
  }, {
    t("const ["),
    i(1, "state"),
    t(", set"),
    f(capitalize, { 1 }), -- Ahora cambia automáticamente según el nodo 1
    t("] = useState("),
    i(2, "initialValue"), -- Cambiado a 2, ya que el salto pasa directo aquí
    t(");"),
  }),

  s(
    {
      trig = "rue",
      desc = "React Hook useEffect",
    },
    fmt(
      [[
        useEffect(() => {{
          {}
          return () => {{
            {}
          }}
        }}, [{}]);
      ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),

  s({
    trig = "ruco",
    desc = "React Hook useContext",
  }, {
    t("const "),
    i(1),
    t(" = useContext("),
    i(2),
    t(");"),
  }),

  s({
    trig = "rur",
    desc = "React Hook useReducer",
  }, {
    t("const [state, dispatch] = useReducer("),
    i(1),
    t(", "),
    i(2),
    t(", "),
    i(3),
    t(");"),
  }),

  s(
    {
      trig = "rucb",
      desc = "React Hook useCallback",
    },
    fmt(
      [[
        useCallback(
          () => {{
            {}
          }},
          [{}],
        );
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s({
    trig = "rum",
    desc = "React Hook useMemo",
  }, {
    t("useMemo(() => "),
    i(1),
    t(", ["),
    i(2),
    t("]);"),
  }),

  s({
    trig = "rurf",
    desc = "React Hook useRef",
  }, {
    t("const "),
    i(1),
    t(" = useRef("),
    i(2),
    t(");"),
  }),

  s(
    {
      trig = "rule",
      desc = "React Hook useLayoutEffect",
    },
    fmt(
      [[
        useLayoutEffect(() => {{
          {}
          return () => {{
            {}
          }};
        }}, [{}])
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
      trig = "rafc",
      desc = "React Arrow Function Component Named",
    },
    fmt(
      [[
        export const {} = () => {{
          return (
            <>
              {}
            </>
          );
        }};
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "rafcd",
      desc = "React Arrow Function Component Default",
    },
    fmt(
      [[
        const {} = () => {{
          return (
            <>
              {}
            </>
          );
        }};

        export default {};
      ]],
      {
        i(1),
        i(0),
        rep(1),
      }
    )
  ),
}
