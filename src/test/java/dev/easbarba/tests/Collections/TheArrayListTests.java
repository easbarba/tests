package dev.easbarba.tests.Collections;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class TheArrayListTests {
    TheArrayList theArrayList = new TheArrayList();

    @Test
    void getFirstItem() {
        assertEquals(theArrayList.example().get(0), "Meh");
    }
}
