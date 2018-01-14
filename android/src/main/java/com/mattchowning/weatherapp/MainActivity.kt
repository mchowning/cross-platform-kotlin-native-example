package com.mattchowning.weatherapp

import android.content.Context
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import android.util.Log
import android.view.KeyEvent
import android.view.KeyEvent.*
import android.view.inputmethod.InputMethodManager
import android.widget.TextView
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    val adapter = CustomAdapter()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        editText.setOnEditorActionListener { textView: TextView, actionId: Int, keyEvent: KeyEvent? ->
            Log.e("EVENT_SENT", "actionId: $actionId, keyEvent: $keyEvent")
            if (keyEvent?.keyCode == KEYCODE_ENTER && keyEvent?.action == ACTION_DOWN) {
                sendToList()
                hideKeyboard()
                true
            } else {
                false
            }
        }
        button.setOnClickListener { sendToList() }

        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = adapter
    }

    private fun hideKeyboard() {
        if (currentFocus != null) {
            val imm = getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
            imm.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0)
        }
    }

    private fun sendToList() {
        Log.d(this.javaClass.simpleName, "sending info from EditText")
        adapter.values.add(editText.text.toString())
        adapter.notifyItemInserted(adapter.values.size - 1)
        editText.setText("")
    }
}
