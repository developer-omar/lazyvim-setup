local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local d = ls.dynamic_node
local sn = ls.snippet_node
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

  s({
    trig = "dprops",
    desc = "Destructuring Props",
  }, {
    t("{ "),
    i(0),
    t(" }: "),
    i(1, "Props"),
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
      trig = "rafcn",
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
        d(1, function()
          local filename = vim.fn.expand("%:t:r")
          -- Retorna un nodo de inserción editable con el nombre correcto
          return sn(nil, { i(1, filename) })
        end),
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
        d(1, function()
          local filename = vim.fn.expand("%:t:r")
          -- Retorna un nodo de inserción editable con el nombre correcto
          return sn(nil, { i(1, filename) })
        end),
        i(0),
        rep(1),
      }
    )
  ),

  s({
    trig = "ruid",
    desc = "React Hook useId",
  }, {
    t("const "),
    i(1, "id"),
    t(" = useId();"),
  }),

  s({
    trig = "rutr",
    desc = "React Hook useTransition",
  }, {
    t("const [isPending, startTransition] = useTransition();"),
  }),

  s({
    trig = "rudv",
    desc = "React Hook useDeferredValue",
  }, {
    t("const "),
    i(1, "deferredValue"),
    t(" = useDeferredValue("),
    i(2, "value"),
    t(");"),
  }),

  s(
    {
      trig = "ruih",
      desc = "React Hook useImperativeHandle",
    },
    fmt(
      [[
         useImperativeHandle({}, () => ({{
           {}
         }}), [{}]);
       ]],
      {
        i(1, "ref"),
        i(2),
        i(0, "deps"),
      }
    )
  ),

  s({
    trig = "ruse",
    desc = "React Hook useSyncExternalStore",
  }, {
    t("const "),
    i(1, "state"),
    t(" = useSyncExternalStore("),
    i(2, "subscribe"),
    t(", "),
    i(3, "getSnapshot"),
    t(");"),
  }),

  s(
    {
      trig = "rfcp",
      desc = "React Functional Component with Props (TS)",
    },
    fmt(
      [[
         type Props = {{
           {}
         }};

         export const {}: React.FC<Props> = (props) => {{
           return (
             <>
               {}
             </>
           );
         }};
       ]],
      {
        i(1),
        i(2, "Component"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "rmemo",
      desc = "React memo wrapper",
    },
    fmt(
      [[
         export default memo({});
       ]],
      {
        i(1, "Component"),
      }
    )
  ),

  s(
    {
      trig = "rfwd",
      desc = "React forwardRef component (TS)",
    },
    fmt(
      [[
         type Props = {{}};

         export const {} = forwardRef<{}, Props>((props, ref) => {{
           return (
             <>
               {}
             </>
           );
         }});
       ]],
      {
        i(1, "Component"),
        i(2, "RefType"),
        i(0),
      }
    )
  ),

  s({
    trig = "rlazy",
    desc = "React lazy import",
  }, {
    t("const "),
    i(1, "Component"),
    t(" = lazy(() => import('"),
    i(2, "./Component"),
    t("'));"),
  }),

  s(
    {
      trig = "rsus",
      desc = "React Suspense boundary",
    },
    fmt(
      [[
         <Suspense fallback={{<></>}}>
           {}
         </Suspense>
       ]],
      {
        i(0, "children"),
      }
    )
  ),

  s(
    {
      trig = "rerrb",
      desc = "React Error Boundary class (TS)",
    },
    fmt(
      [[
         type Props = {{
           children: React.ReactNode;
         }};

         type State = {{
           hasError: boolean;
         }};

         export class {} extends React.Component<Props, State> {{
           state: State = {{
             hasError: false,
           }};

           static getDerivedStateFromError(_: Error): State {{
             return {{ hasError: true }};
           }}

           componentDidCatch(error: Error, info: React.ErrorInfo): void {{
             console.error(error, info);
           }}

           render(): React.ReactNode {{
             if (this.state.hasError) {{
               return <></>;
             }}

             return this.props.children;
           }}
         }}
       ]],
      {
        i(1, "ErrorBoundary"),
      }
    )
  ),

  s(
    {
      trig = "rctx",
      desc = "React createContext (TS)",
    },
    fmt(
      [[
         type {}Type = {{
           {}
         }};

         export const {} = createContext<{}Type>({{}});
       ]],
      {
        i(1, "Context"),
        i(0),
        i(3, "Context"),
        rep(1),
      }
    )
  ),

  s(
    {
      trig = "rprov",
      desc = "React Context Provider component (TS)",
    },
    fmt(
      [[
        type Props = {{
          children: React.ReactNode;
        }};

        export const {}Provider = ({{ children }}: Props) => {{
          const [{}, set{}] = useState({});

          return (
            <{}.Provider value={{{{{}, set{}}}}}>
              {{children}}
            </{}.Provider>
          );
        }};
      ]],
      {
        i(1, "Context"),
        i(2, "state"),
        f(capitalize, { 2 }),
        i(3),
        rep(1),
        i(4, "value"),
        f(capitalize, { 4 }),
        rep(1),
      }
    )
  ),

  s({
    trig = "imr",
    desc = "Import React",
  }, {
    t("import React from 'react';"),
  }),

  s({
    trig = "imrs",
    desc = "Import useState from React",
  }, {
    t("import { useState } from 'react';"),
  }),

  s({
    trig = "imrse",
    desc = "Import useState and useEffect from React",
  }, {
    t("import { useState, useEffect } from 'react';"),
  }),

  s({
    trig = "imrd",
    desc = "Import ReactDOM from react-dom/client",
  }, {
    t("import ReactDOM from 'react-dom/client';"),
  }),

  s(
    {
      trig = "tprops",
      desc = "Type alias Props",
    },
    fmt(
      [[
         type Props = {{
           {}
         }};
       ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "iprops",
      desc = "Interface Props",
    },
    fmt(
      [[
         interface Props {{
           {}
         }}
       ]],
      {
        i(0),
      }
    )
  ),

  s({
    trig = "tchild",
    desc = "Children ReactNode prop type",
  }, {
    t("children: React.ReactNode"),
  }),

  s(
    {
      trig = "rmap",
      desc = "JSX array map with key",
    },
    fmt(
      [[
         {}.map(({}) => (
           <{} key={{{}.id}} />
         ))
       ]],
      {
        i(1, "items"),
        i(2, "item"),
        i(3, "Item"),
        rep(2),
      }
    )
  ),

  s(
    {
      trig = "rcond",
      desc = "JSX conditional render with &&",
    },
    fmt(
      [[
         {{{} && (
           <>
             {}
           </>
         )}}
       ]],
      {
        i(1, "condition"),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "rtern",
      desc = "JSX conditional render with ternary",
    },
    fmt(
      [[
         {{{} ? (
           <>
             {}
           </>
         ) : (
           <>
             {}
           </>
         )}}
       ]],
      {
        i(1, "condition"),
        i(2, "<A />"),
        i(0, "<B />"),
      }
    )
  ),

  s(
    {
      trig = "rfrag",
      desc = "React Fragment",
    },
    fmt(
      [[
         <>
           {}
         </>
       ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "hclk",
      desc = "TS handleClick for button",
    },
    fmt(
      [[
         const handleClick = (e: React.MouseEvent<HTMLButtonElement>) => {{
           {}
         }};
       ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "hchg",
      desc = "TS handleChange for input",
    },
    fmt(
      [[
         const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {{
           {}
         }};
       ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "hsub",
      desc = "TS handleSubmit for form",
    },
    fmt(
      [[
         const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {{
           e.preventDefault();
           {}
         }};
       ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "rchook",
      desc = "React custom hook template (TS)",
    },
    fmt(
      [[
         export const use{} = ({}) => {{
           {}
           return {{

           }};
         }};
       ]],
      {
        i(1, "HookName"),
        i(2),
        i(0),
      }
    )
  ),

  s({
    trig = "rcn",
    desc = "React Component Node",
  }, {
    t("<"),
    i(1, "ComponentName"),
    t(" />"),
  }),
}
