package com.tutortics;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class problema_ps_3_1_test {

    @Test
    void testSumaPrimerosCincoNumeros() {
        // 1 + 2 + 3 + 4 + 5 = 15
        int resultado = problema_ps_3_1.calcularSuma(5);
        assertEquals(15, resultado);
    }

    @Test
    void testSumaPrimerosDiezNumeros() {
        // 1 + 2 + 3 + ... + 10 = 55
        int resultado = problema_ps_3_1.calcularSuma(10);
        assertEquals(55, resultado);
    }

    @Test
    void testSumaUnSoloNumero() {
        // Solo 1 = 1
        int resultado = problema_ps_3_1.calcularSuma(1);
        assertEquals(1, resultado);
    }

    @Test
    void testSumaCero() {
        // Suma de 0 números = 0
        int resultado = problema_ps_3_1.calcularSuma(0);
        assertEquals(0, resultado);
    }

    @Test
    void testSumaPrimerosCienNumeros() {
        // 1 + 2 + 3 + ... + 100 = 5050 (fórmula: n*(n+1)/2)
        int resultado = problema_ps_3_1.calcularSuma(100);
        assertEquals(5050, resultado);
    }

    @Test
    void testSumaPrimerosTresNumeros() {
        // 1 + 2 + 3 = 6
        int resultado = problema_ps_3_1.calcularSuma(3);
        assertEquals(6, resultado);
    }
}
