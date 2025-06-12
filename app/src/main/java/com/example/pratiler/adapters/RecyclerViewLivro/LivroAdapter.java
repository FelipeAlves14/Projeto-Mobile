package com.example.pratiler.adapters.RecyclerViewLivro;

import android.view.LayoutInflater;
import android.view.ViewGroup;

import androidx.recyclerview.widget.RecyclerView;

import com.example.pratiler.R;
import com.example.pratiler.adapters.RecyclerViewPostagem.PostagemViewHolder;
import com.example.pratiler.models.Livro;
import com.example.pratiler.models.Postagem;

import java.util.List;

public class LivroAdapter extends RecyclerView.Adapter<LivroViewHolder> {
    List<Livro> livros;

    public LivroAdapter(List<Livro> livros) {
        this.livros = livros;
    }

    public LivroViewHolder onCreateViewHolder(ViewGroup viewGroup, int viewType) {
        return new LivroViewHolder(
                LayoutInflater.from(viewGroup.getContext())
                        .inflate(R.layout.livro, viewGroup, false)
        );
    }

    @Override
    public void onBindViewHolder(LivroViewHolder livroViewHolder, int position) {
        Livro livro = livros.get(position);
        livroViewHolder.capaLivro.setImageResource(R.drawable.livrocard);
        livroViewHolder.titulo.setText(livro.getTitulo() + " - " + livro.getAutor());
        livroViewHolder.sinopse.setText(livro.getSinopse());
    }

    public int getItemCount(){
        return livros.size();
    }
}
