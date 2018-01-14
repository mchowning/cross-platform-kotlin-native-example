package com.mattchowning


class ZipHandler {

//    fun handleInput(input: String): String =
//            if (input.isEmpty()) "You entered nothing!" else "You entered $input"

    fun handleInput(input: String): String {
        val isValidZipCode = input.toIntOrNull() != null && input.length == 5
        return if (isValidZipCode) {
            "You entered a valid zip code of $input"
        } else {
            "$input is not a valid zip code."
        }
    }
}
