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

import com.example.pratiler.adapters.RecyclerViewPostagem.PostagemAdapter;
import com.example.pratiler.models.Leitor;
import com.example.pratiler.models.Livro;
import com.example.pratiler.models.Postagem;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FeedActivity extends AppCompatActivity {

    private List<Postagem> listarPostagens () {
        List<Postagem> postagens = new ArrayList<Postagem>();
        postagens.add(new Postagem("Adorei a reviravolta no capítulo 7! Nunca imaginei que o vilão fosse na verdade o irmão gêmeo do protagonista.",
                new Leitor("Ana Silva", "ana.booklover", "ana.silva@email.com", "ana_profile.jpg"),
                new Livro("O Jogo dos Espelhos", "Um thriller psicológico sobre identidade e duplicidade", "Carlos Ribeiro", "jogo_espelhos.jpg"),
                112, 120, new Date(122, 4, 15), 24, true));

        postagens.add(new Postagem("A descrição da paisagem nessa parte é tão vívida que me senti transportado para o local!",
                new Leitor("Pedro Almeida", "pedro_reads", "pedro.a@mail.com", "pedro_avatar.png"),
                new Livro("Montanhas da Alma", "Uma jornada de autodescoberta nas montanhas do Himalaia", "Clara Montenegro", "montanhas_alma.jpg"),
                45, 48, new Date(123, 1, 28), 15, false));

        postagens.add(new Postagem("Alguém mais ficou confuso com a linha do tempo nesses capítulos? Achei que poderia ser mais claro.",
                new Leitor("Mariana Costa", "mari.literaria", "maricosta@email.com", "mari_prof_pic.jpg"),
                new Livro("Tempos Entrelaçados", "Ficção científica sobre realidades paralelas e escolhas", "Fernando Pessoto", "tempos_entrelacados.jpg"),
                89, 95, new Date(123, 6, 3), 8, true));

        postagens.add(new Postagem("Esse diálogo na página 156 me fez chorar! Tão profundo e verdadeiro...",
                new Leitor("Rafael Souza", "rafa_books", "rafasouza@mail.com", "rafael_souza.jpg"),
                new Livro("O Silêncio Entre Nós", "Drama sobre relacionamentos e comunicação não-verbal", "Juliana Vaz", "silence_between.jpg"),
                156, 157, new Date(123, 9, 18), 32, false));

        postagens.add(new Postagem("Recomendo fortemente esse livro! A construção do mundo é incrível e os personagens são muito bem desenvolvidos.",
                new Leitor("Beatriz Lima", "bea.leitora", "beatriz.leitora@email.com", "bea_profile_pic.png"),
                new Livro("O Reino de Cristal", "Fantasia épica sobre um reino mágico à beira da guerra", "Roberto Farias", "reino_cristal.jpg"),
                1, 320, new Date(123,11,5), 45, true));

        return postagens;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_feed);
        RecyclerView postagens = findViewById(R.id.listaPostagens);
        postagens.setLayoutManager(new LinearLayoutManager(this));
        postagens.setAdapter(new PostagemAdapter(listarPostagens()));
        ImageView postar = findViewById(R.id.postar);
        postar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent("ATUALIZAR_LEITURA");
                startActivity(i);
            }
        });
        ImageView livrosPopulares = findViewById(R.id.livrosPopulares);
        livrosPopulares.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent("LIVROS_POPULARES");
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