local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt
local f = ls.function_node -- Importamos el nodo de función

return {
  s(
    {
      trig = "vsc",
      desc = "Vue Script Component",
    },
    fmt(
      [[
        <script lang="ts">
        import {{ defineComponent }} from "vue";

        export default defineComponent({{
          setup() {{
            {}

            return {{

            }}
          }}
        }})
        </script>
        <template>
        <div>

        </div>
        </template>
        <style scoped>

        </style>
      ]],
      {
        i(1),
      }
    )
  ),

  s(
    {
      trig = "vss",
      desc = "Vue Script Setup",
    },
    fmt(
      [[
        <script setup lang="ts">
        {}
        </script>
        <template>
          <div>
          
          </div>
        </template>
        <style scoped>
        
        </style>
      ]],
      {
        i(1),
      }
    )
  ),
}
