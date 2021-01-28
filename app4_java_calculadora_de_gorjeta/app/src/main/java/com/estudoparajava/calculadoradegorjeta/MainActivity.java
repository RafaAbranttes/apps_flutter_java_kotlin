package com.estudoparajava.calculadoradegorjeta;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import java.text.DecimalFormat;

public class MainActivity extends AppCompatActivity {

    private SeekBar seekBatGorjeta;
    private EditText textValor;
    private TextView textPorcentagem;
    private TextView textTotal;
    private TextView textGorjeta;

    private double porcentagem = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        seekBatGorjeta = findViewById(R.id.seekBarPorcentagem);
        textValor = findViewById(R.id.textConta);
        textPorcentagem = findViewById(R.id.textPorcentagem);
        textTotal = findViewById(R.id.textTotal);
        textGorjeta = findViewById(R.id.valorGorjeta);

        seekBatGorjeta.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                porcentagem = progress;
                textPorcentagem.setText(Math.round(porcentagem) + "%");
                calcular();
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });
    }

    public void calcular (){
        String valorRecuperado = textValor.getText().toString();
        if(valorRecuperado == null || valorRecuperado.equals("")){
            Toast.makeText(getApplicationContext(), "Digite um valor Primeiro!", Toast.LENGTH_SHORT).show();
        } else {
            double valorDigitado = Double.parseDouble(valorRecuperado);

            double gorjeta = valorDigitado * (porcentagem/100);
            double total = gorjeta + valorDigitado;

            DecimalFormat df = new DecimalFormat("###,##0.00");

            textGorjeta.setText("R$ " + df.format(gorjeta));
            textTotal.setText("R$ " + df.format(total));
        }
    }
}