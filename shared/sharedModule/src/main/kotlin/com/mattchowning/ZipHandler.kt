package com.mattchowning

class ZipHandler {

    fun handleInput(input: String): String =
            if (input.isEmpty()) "You entered nothing!" else "You entered $input"
}
