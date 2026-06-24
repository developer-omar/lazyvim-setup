local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt
-- local f = ls.function_node -- Importamos el nodo de función

return {
  s({
    trig = "impvt",
    desc = "Import Vitest",
  }, {
    t("import { "),
    i(1),
    t(' } from "vitest";'),
  }),
  s(
    {
      trig = "vtd",
      desc = "Vitest - Describe",
    },
    fmt(
      [[
        describe("{}", () => {{
          {}
        }});
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "vtad",
      desc = "Vitest - Async Describe",
    },
    fmt(
      [[
        describe("{}", async () => {{
          {}
        }});
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "vti",
      desc = "Vitest - It",
    },
    fmt(
      [[
        it("{}", () => {{
          {}
        }});
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "vtia",
      desc = "Vitest - Async It",
    },
    fmt(
      [[
        it("{}", async () => {{
          {}
        }});
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "vtt",
      desc = "Vitest - Test",
    },
    fmt(
      [[
        test("{}", () => {{
          {}
        }});
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "vtat",
      desc = "Vitest - Async Test",
    },
    fmt(
      [[
        test("{}", async () => {{
          {}
        }});
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "vtngcomp",
      desc = "Vitest Angular Component",
    },
    fmt(
      [[
        import {{ ComponentFixture, TestBed }} from '@angular/core/testing';
        import {{ {} }} from './{}';

        describe('{}', () => {{
          let component: {};
          let fixture: ComponentFixture<{}>;

          beforeEach(() => {{
            TestBed.configureTestingModule({{
              imports: [{}],
            }});
            fixture = TestBed.createComponent({});
            component = fixture.componentInstance;
            fixture.detectChanges(); // important
          }});

          it('Should create', () => {{
            expect(component).toBeTruthy();
          }});
        }});
      ]],
      {
        i(3),
        i(2),
        i(1, "Component"),
        rep(1),
        rep(1),
        rep(1),
        rep(1),
      }
    )
  ),

  s(
    {
      trig = "vtngserv",
      desc = "Vitest Angular Service",
    },
    fmt(
      [[
        import {{ TestBed }} from '@angular/core/testing';
        import {{ {} }} from './{}';

        describe('{}', () => {{
          let service: {};

          beforeEach(() => {{
            TestBed.configureTestingModule({{}});
            service = TestBed.inject({});
          }});

          it('should be created', () => {{
            expect(service).toBeTruthy();
          }});
        }});
      ]],
      {
        i(3),
        i(2),
        i(1, "service"),
        rep(1),
        rep(1),
      }
    )
  ),
}
