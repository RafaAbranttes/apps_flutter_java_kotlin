package com.estudoparajava.frasesdodia

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.TextureView
import android.view.View
import android.widget.TextView
import kotlin.random.Random

class MainActivity : AppCompatActivity() {

    lateinit var gerarTexto: TextView
    var texto = arrayOf(
        "O importante não é vencer todos os dias, mas lutar sempre.",
        "Maior que a tristeza de não haver vencido é a vergonha de não lutado.",
        "É melhor conquistar a si mesmo do que vencer mil batalhas.",
        "Enquanto houver vontade de lutar haverá esperança de vencer.",
    )


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun gerarFrase(view: View){
        this.gerarTexto = findViewById<TextView>(R.id.textView)
        gerarTexto.text = texto[Random.nextInt(4)]

    }
}