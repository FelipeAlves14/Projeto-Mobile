package com.example.pratiler.adapters.RecyclerViewLivro;


import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.recyclerview.widget.RecyclerView;

import com.example.pratiler.R;

public class LivroViewHolder extends RecyclerView.ViewHolder {
    ImageView capaLivro;
    TextView titulo;
    TextView sinopse;
    Button comecarLeitura;

    public LivroViewHolder(View view){
        super(view);
        capaLivro = view.findViewById(R.id.capaLivro);
        titulo = view.findViewById(R.id.tituloLivro);
        sinopse = view.findViewById(R.id.sinopseLivro);
        comecarLeitura = view.findViewById(R.id.comecarLeitura);

        comecarLeitura.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String[] livroTituloSeparado = titulo.getText().toString().split(" - ");
                String livro = livroTituloSeparado[0];
                String autor = livroTituloSeparado[1];
                comecarLeitura.setText("Lendo");
                comecarLeitura.setTextColor(0xff221D57);
                comecarLeitura.setBackgroundColor(0xfffefefe);
                Toast.makeText(view.getContext(), "Você iniciou a leitura de " + livro + " de " + autor, Toast.LENGTH_SHORT).show();
            }
        });
    }
}
