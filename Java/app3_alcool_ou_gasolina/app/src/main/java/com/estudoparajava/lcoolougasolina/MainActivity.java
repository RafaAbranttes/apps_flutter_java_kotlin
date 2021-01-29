package com.estudoparajava.lcoolougasolina;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import com.google.android.material.textfield.TextInputEditText;

public class MainActivity extends AppCompatActivity {

    private TextInputEditText precoAlcool, kmAlcool, precoGasolina, kmGasolina;
    private TextView textResultado;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        precoAlcool = findViewById(R.id.precoAlcool);
        kmAlcool = findViewById(R.id.kmAlcool);
        precoGasolina = findViewById(R.id.precoGasolina);
        kmGasolina = findViewById(R.id.kmGasolina);
        textResultado = findViewById(R.id.textResultado);
    }

    public void calcularPreco(View view){

        String precoAlcoolRecuperado = precoAlcool.getText().toString();
        String kmAlcoolRecuperado = kmAlcool.getText().toString();
        String precoGasolinaRecuperado = precoGasolina.getText().toString();
        String kmGasolinaRecuperado = kmGasolina.getText().toString();

        //validar os campos

        if(validarCampos(precoAlcoolRecuperado, kmAlcoolRecuperado, precoGasolinaRecuperado, kmGasolinaRecuperado)){
            Double valorAlcool = Double.parseDouble(precoAlcoolRecuperado);
            Double valorKmAlcool = Double.parseDouble(kmAlcoolRecuperado);
            Double valorGasolina = Double.parseDouble(precoGasolinaRecuperado);
            Double valorKmGasolina = Double.parseDouble(kmGasolinaRecuperado);

            if(valorKmAlcool/valorAlcool < valorKmGasolina/valorGasolina){
                textResultado.setText("Gasolina é a melhor opção!");
            }else if(valorKmAlcool/valorAlcool > valorKmGasolina/valorGasolina){
                textResultado.setText("Álcool é a melhor opção");
            }else if(valorKmAlcool/valorAlcool == valorKmGasolina/valorGasolina) {
                textResultado.setText("Não tem diferença");
            }
        }else{
            textResultado.setText("Preencha os dados corretamente!");
        }
    }

    public Boolean validarCampos(String pAlcool, String kAlcool, String pGasolina, String kGasolina){

        Boolean camposValidados = true;

        if(pAlcool == null || pAlcool.equals("")){
            camposValidados = false;
        } else if(pGasolina == null || pGasolina.equals("")){
            camposValidados = false;
        } else if(kAlcool == null || kAlcool.equals("")){
            camposValidados = false;
        } else if(kGasolina == null || kGasolina.equals("")){
            camposValidados = false;
        }
        return camposValidados;
    }
}