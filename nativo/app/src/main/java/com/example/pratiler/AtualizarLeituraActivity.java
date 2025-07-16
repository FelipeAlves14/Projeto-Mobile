package com.example.pratiler;

import static android.widget.Toast.LENGTH_SHORT;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.Button;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

import java.util.Objects;

public class AtualizarLeituraActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_atualizar_leitura);
        ImageView livrosPopulares = findViewById(R.id.livrosPopulares);
        livrosPopulares.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent("LIVROS_POPULARES");
                startActivity(i);
            }
        });
        ImageView feed = findViewById(R.id.postagens);
        feed.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent("FEED");
                startActivity(i);
            }
        });
        Button postar = findViewById(R.id.botaoPostar);
        postar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Input paginaInicial = findViewById(R.id.inputPaginaInicial);
                Input paginaFinal = findViewById(R.id.inputPaginaFinal);
                Input comentario = findViewById(R.id.inputComentario);
                String valorPaginaInicial = Objects.requireNonNull(paginaInicial.getText()).toString();
                String valorPaginaFinal = Objects.requireNonNull(paginaFinal.getText()).toString();
                String valorComentario = Objects.requireNonNull(comentario.getText()).toString();
                if (valorPaginaInicial.isEmpty()) {
                    Toast.makeText(AtualizarLeituraActivity.this, "Insira a página inicial para poder postar...", LENGTH_SHORT).show();
                }
                else if (valorPaginaFinal.isEmpty()){
                    Toast.makeText(AtualizarLeituraActivity.this, "Insira a página final para poder postar...", LENGTH_SHORT).show();
                }
                else if(Integer.parseInt(valorPaginaInicial) >= Integer.parseInt(valorPaginaFinal)){
                    Toast.makeText(AtualizarLeituraActivity.this, "Insira a página final maior do que a página inicial", LENGTH_SHORT).show();
                }
                else if (valorComentario.isEmpty()){
                    Toast.makeText(AtualizarLeituraActivity.this, "Insira o comentário para poder postar...", LENGTH_SHORT).show();
                }
                else {
                    Toast.makeText(AtualizarLeituraActivity.this, "Você realizou uma postagem!!", LENGTH_SHORT).show();
                }
            }
        });
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });
    }
}