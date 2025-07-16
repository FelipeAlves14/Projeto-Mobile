package com.example.pratiler;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.pratiler.adapters.RecyclerViewLivro.LivroAdapter;
import com.example.pratiler.models.Livro;

import java.util.ArrayList;
import java.util.List;

public class LivrosPopularesActivity extends AppCompatActivity {

    private List<Livro> listarLivros(){
        List<Livro> livros = new ArrayList<Livro>();

        livros.add(new Livro("O Senhor dos Anéis", "Uma jornada épica para destruir o Um Anel e salvar a Terra-média das trevas.",
                "J.R.R. Tolkien", "https://exemplo.com/capa-senhor-aneis.jpg"));

        livros.add(new Livro("1984", "Um clássico distópico sobre vigilância governamental e controle da mente.",
                "George Orwell", "https://exemplo.com/capa-1984.jpg"));

        livros.add(new Livro("Orgulho e Preconceito", "A história de Elizabeth Bennet e Mr. Darcy em uma crítica à sociedade inglesa do século XIX.",
                "Jane Austen", "https://exemplo.com/capa-orgulho-preconceito.jpg"));

        livros.add(new Livro("Cem Anos de Solidão", "A saga da família Buendía e a mágica cidade de Macondo.",
                "Gabriel García Márquez", "https://exemplo.com/capa-cem-anos.jpg"));

        livros.add(new Livro("O Pequeno Príncipe", "A jornada filosófica de um príncipe infantil por diversos planetas.",
                "Antoine de Saint-Exupéry", "https://exemplo.com/capa-pequeno-principe.jpg"));

        return livros;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_livros_populares);
        RecyclerView livros = findViewById(R.id.livros);
        livros.setLayoutManager(new LinearLayoutManager(this));
        livros.setAdapter(new LivroAdapter(listarLivros()));
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
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });
    }
}