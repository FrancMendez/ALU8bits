![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg)

# 🧠 Tiny Tapeout - ALU de 8 bits con Carry Look-Ahead

Este proyecto implementa una **Unidad Aritmético Lógica (ALU)** de 8 bits que utiliza un **sumador tipo carry look-ahead**, permitiendo realizar operaciones básicas como suma, resta, AND y OR. El diseño ha sido desarrollado para ser fabricado mediante el flujo de diseño de [Tiny Tapeout](https://tinytapeout.com).

## ✅ Funcionalidad

| `sel` (3 bits) | Operación       |
|----------------|------------------|
| 000            | A + B (suma)     |
| 001            | A - B (resta)    |
| 010            | A & B (AND)      |
| 011            | A | B (OR)       |
| otro           | Resultado = 0    |

- Entradas: `io_in[7:0]`  
  - `A[3:0] = io_in[7:4]`  
  - `B[3:0] = io_in[3:0]`  
  - `sel[2:0] = io_in[2:0]`  
- Salida: `io_out[7:0] = resultado de la operación`

> Internamente se extienden los operandos a 8 bits (relleno con ceros a la izquierda).

## 📁 Estructura del Proyecto

```
.
├── info.yaml
├── visual.json
├── user_module.v
├── user_project_wrapper.v
├── src/
│   ├── alu_8bit.v
│   ├── carry_lookahead_adder_8bit.v
│   └── user_module.v
├── test/
│   └── user_module_tb.v
├── docs/
│   └── README.md
```

## 🚀 ¿Qué es Tiny Tapeout?

Tiny Tapeout es un proyecto educativo que permite a estudiantes, entusiastas y desarrolladores crear chips ASIC reales de forma accesible. Aprende más en [tinytapeout.com](https://tinytapeout.com).

## 🧪 Simulación local del diseño

1. Instala [OpenLane 2 con nix](https://openlane2.readthedocs.io/en/latest/getting_started/nix_installation/index.html).
2. Clona `tt-support-tools`:
   ```bash
   git clone -b tt06 https://github.com/TinyTapeout/tt-support-tools tt
   ```
3. Ejecuta:
   ```bash
   rm -rf runs && nix-shell ${OPENLANE2_ROOT}/shell.nix --run "python build.py"
   ```

Para simulación directa puedes usar:
```bash
make sim
```

## 📚 Recursos útiles

- [FAQ de Tiny Tapeout](https://tinytapeout.com/faq/)
- [Lecciones de diseño digital](https://tinytapeout.com/digital_design/)
- [Siliwiz: Aprende cómo funcionan los semiconductores](https://tinytapeout.com/siliwiz/)
- [Únete al Discord](https://discord.gg/rPK2nSjxy8)

## ✍ Autor

- Francisco Mendez

## 🛰 ¿Qué sigue?

- Sube tu diseño a la próxima ronda de shuttle en [tinytapeout.com](https://tinytapeout.com/#submit-your-design).
- Edita este README si realizas mejoras.
- Comparte tu chip en redes con el hashtag `#tinytapeout`:

  - [LinkedIn](https://www.linkedin.com/search/results/content/?keywords=%23tinytapeout)
  - [Mastodon](https://chaos.social/tags/tinytapeout)
  - [Twitter](https://twitter.com/hashtag/tinytapeout?src=hashtag_click)
