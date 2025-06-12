package com.example.pratiler.adapters.RecyclerViewPostagem;

import android.view.LayoutInflater;
import android.view.ViewGroup;

import androidx.recyclerview.widget.RecyclerView;

import com.example.pratiler.R;
import com.example.pratiler.models.Postagem;

import java.util.List;

public class PostagemAdapter extends RecyclerView.Adapter<PostagemViewHolder> {
    List<Postagem> postagens;

    public PostagemAdapter(List<Postagem> postagens) {
        this.postagens = postagens;
    }


    public PostagemViewHolder onCreateViewHolder(ViewGroup viewGroup, int viewType) {
        return new PostagemViewHolder(
                LayoutInflater.from(viewGroup.getContext())
                        .inflate(R.layout.postagem, viewGroup, false)
        );
    }

    @Override
    public void onBindViewHolder(PostagemViewHolder postagemViewHolder, int position) {
        Postagem postagem = postagens.get(position);
        postagemViewHolder.nomeLeitor.setText(postagem.getLeitor().getNome());
        postagemViewHolder.fotoLeitor.setImageResource(R.drawable.perfil_2);
        postagemViewHolder.dataPostagem.setText(postagem.getDataPostagem().toString());
        postagemViewHolder.paginas.setText("Da página " + postagem.getPaginaInicial() + " à página " + postagem.getPaginaFinal());
        postagemViewHolder.titulo.setText(postagem.getLivro().getTitulo() + " - " + postagem.getLivro().getAutor());
        postagemViewHolder.texto.setText(postagem.getTexto());
        postagemViewHolder.quantidadeCurtidas.setText(postagem.getCurtidas().toString());
        postagemViewHolder.curtida.setImageResource(postagem.getCurtido() ? R.drawable.curtida : R.drawable.nao_curtida);
    }

    public int getItemCount() {
        return postagens.size();
    }
}
