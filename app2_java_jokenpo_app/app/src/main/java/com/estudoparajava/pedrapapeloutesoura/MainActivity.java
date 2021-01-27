package com.estudoparajava.pedrapapeloutesoura;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;


import java.util.Random;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void selecionadoPedra(View view){
        this.opcaoSelecionada("pedra");
    }

    public void selecionadoPapel(View view){
        this.opcaoSelecionada("papel");
    }

    public void selecionadoTesoura(View view){
        this.opcaoSelecionada("tesoura");
    }

    public void opcaoSelecionada(String opcaoSelecionada){
        ImageView imageView = findViewById(R.id.imageView);
        TextView textView = findViewById(R.id.textView3);
        int numero;
        numero = new Random().nextInt(3);
        String[] opcoes = {"pedra" , "papel", "tesoura"};
        String opcaoApp = opcoes[numero];

        switch (opcaoApp){
            case "pedra" : imageView.setImageResource(R.drawable.pedra);
                break;
            case "papel" : imageView.setImageResource(R.drawable.papel);
                break;
            case "tesoura" : imageView.setImageResource(R.drawable.tesoura);
                break;
            default: imageView.setImageResource(R.drawable.padrao);
        }
        if(
                (opcaoApp.equals("tesoura") && opcaoSelecionada.equals("papel")) ||
                (opcaoApp.equals("papel") && opcaoSelecionada.equals("pedra")) ||
                (opcaoApp.equals("pedra") && opcaoSelecionada.equals("tesoura"))
        ){
                textView.setText("App é o vencedor");
        }else if(
                (opcaoSelecionada.equals("tesoura") && opcaoApp.equals("papel")) ||
                (opcaoSelecionada.equals("papel") && opcaoApp.equals("pedra")) ||
                (opcaoSelecionada.equals("pedra") && opcaoApp.equals("tesoura"))
        ){
                textView.setText("Você é o vencedor");
        }else{
            textView.setText("Empate");
        }
    }


}