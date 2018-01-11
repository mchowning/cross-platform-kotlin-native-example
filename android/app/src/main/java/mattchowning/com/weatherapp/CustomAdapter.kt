package mattchowning.com.weatherapp

import android.support.v7.widget.RecyclerView
import android.view.ViewGroup
import android.widget.TextView

class CustomAdapter: RecyclerView.Adapter<CustomAdapter.CustomViewHolder>() {

    val values: MutableList<String> = mutableListOf()

    override fun onCreateViewHolder(parent: ViewGroup?, viewType: Int): CustomViewHolder? {
        return if (parent != null) {
            val tv = TextView(parent.context)
            CustomViewHolder(tv)
        } else {
            null
        }
    }

    override fun getItemCount(): Int = values.size

    override fun onBindViewHolder(holder: CustomViewHolder?, pos: Int) {
        holder?.bindView(values[pos])
    }

    class CustomViewHolder(private val v: TextView): RecyclerView.ViewHolder(v) {
        
        fun bindView(s: String) {
            v.text = ZipHandler.handleInput(s)
        }
    }
}