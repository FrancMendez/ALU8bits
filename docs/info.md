<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->
# ALU de 8 Bits - Tiny Tapeout

Este proyecto implementa una Unidad Aritmético Lógica (ALU) de 8 bits que incluye operaciones básicas utilizando un sumador de tipo *carry look-ahead*. Está diseñado para ser fabricado como un chip digital usando el flujo de diseño de [Tiny Tapeout](https://tinytapeout.com/).

## 🧠 Funcionalidad

La ALU implementa las siguientes operaciones:

| sel (3 bits) | Operación       |
|--------------|-----------------|
| 000          | A + B (sumador) |
| 001          | A - B           |
| 010          | A & B           |
| 011          | A | B           |
| otros        | Resultado = 0   |

## 🔌 Entradas y Salidas

- `io_in[7:4]` → Entrada A (4 bits)
- `io_in[3:0]` → Entrada B (4 bits)
- `io_in[2:0]` → Selección de operación
- `io_out[7:0]` → Resultado de la ALU

> Nota: A y B son extendidos a 8 bits internamente (relleno de ceros por la izquierda).

## 📁 Archivos principales

- `src/user_module.v`: Módulo compatible con Tiny Tapeout
- `src/alu_8bit.v`: ALU con operaciones aritmético-lógicas
- `src/carry_lookahead_adder_8bit.v`: Sumador optimizado tipo look-ahead
- `test/user_module_tb.v`: Testbench básico
- `info.yaml`: Metadatos del proyecto
- `user_project_wrapper.v`: Wrapper requerido por la plataforma
- `visual.json`: 

## ✍ Autor

- Francisco Mendez

