package com.mattchowning

class ZipHandler {

    companion object {
        fun handleInput(input: String): String =
                if (input.isEmpty()) "You entered nothing!" else "You entered $input"
    }
}
