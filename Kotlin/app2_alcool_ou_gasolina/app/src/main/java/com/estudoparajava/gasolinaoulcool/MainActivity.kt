package com.estudoparajava.gasolinaoulcool

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.TextView

class MainActivity : AppCompatActivity() {



    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun calculo(view: View){

        var gasolinaa = findViewById<EditText>(R.id.editTextNumberDecimal3).text.toString()
        var kmGasolinaa = findViewById<EditText>(R.id.editTextNumberDecimal4).text.toString()
        var alcoola = findViewById<EditText>(R.id.editTextNumberDecimal).text.toString()
        var kmAlcoola = findViewById<EditText>(R.id.editTextNumberDecimal2).text.toString()
        var textoFinal  = findViewById<TextView>(R.id.textView2)




        if(gasolinaa == null || kmGasolinaa == null || alcoola == null || kmAlcoola == null || gasolinaa == "" || alcoola == "" || kmGasolinaa == "" || kmAlcoola == ""  ){
            textoFinal.text = "Número inválidos"

        } else {

            var  gasolina = gasolinaa.toDouble()
            var alcool = alcoola.toDouble()
            var kmAlcool = kmAlcoola.toDouble()
            var kmGasolina = kmGasolinaa.toDouble()
            if(kmGasolina / gasolina > kmAlcool / alcool){
                textoFinal.text = "Gasolina é a melhor opção"
            } else if (kmGasolina / gasolina < kmAlcool / alcool){
                textoFinal.text = "Álcool é a melhor opção"
            } else if (kmGasolina / gasolina == kmAlcool / alcool ){
                textoFinal.text = "Não tem diferença"
            }
        }
    }
}