import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def test_basic_addition(dut):
    # sel = 000 (suma), A = 3, B = 2
    sel = 0b000
    A = 3
    B = 2

    # Codificar en io_in: [7:5]=sel, [4:2]=A, [1:0]=B
    dut.io_in.value = (sel << 5) | (A << 2) | B

    await Timer(10, units='ns')

    expected = A + B
    actual = dut.io_out.value.integer

    assert actual == expected, f"Suma fallida: esperado {expected}, obtenido {actual}"
