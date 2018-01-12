package mattchowning.com.weatherapp

class AndroidZipHandler {

    companion object {
        fun handleInput(input: String): String =
                if (input.isEmpty()) "You entered nothing!" else "You entered $input"
    }
}