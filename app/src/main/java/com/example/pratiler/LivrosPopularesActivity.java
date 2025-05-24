package com.example.pratiler;

import static android.widget.Toast.LENGTH_SHORT;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class LivrosPopularesActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_livros_populares);
        ImageView feed = findViewById(R.id.postagens);
        feed.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent("FEED");
                startActivity(i);
            }
        });
        ImageView postar = findViewById(R.id.postar);
        postar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent("ATUALIZAR_LEITURA");
                startActivity(i);
            }
        });
        Button comecarLeitura = findViewById(R.id.comecarLeitura1);
        comecarLeitura.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView livroTitulo = findViewById(R.id.tituloLivro1);
                String[] livroTituloSeparado = livroTitulo.getText().toString().split(" - ");
                String livro = livroTituloSeparado[0];
                String autor = livroTituloSeparado[1];
                comecarLeitura.setText("Lendo");
                comecarLeitura.setTextColor(0xff221D57);
                comecarLeitura.setBackgroundColor(0xfffefefe);
                Toast.makeText(LivrosPopularesActivity.this, "Você iniciou a leitura de " + livro + " de " + autor, LENGTH_SHORT).show();
            }
        });
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });
    }
}