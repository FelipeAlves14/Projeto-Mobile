package com.example.pratiler.adapters.RecyclerViewPostagem;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.recyclerview.widget.RecyclerView;

import com.example.pratiler.R;

public class PostagemViewHolder extends RecyclerView.ViewHolder {
    ImageView fotoLeitor;
    TextView nomeLeitor;
    TextView dataPostagem;
    Button seguir;
    TextView paginas;
    TextView titulo;
    TextView texto;
    ImageView curtida;
    TextView quantidadeCurtidas;

    public PostagemViewHolder(View view){
        super(view);
        fotoLeitor = view.findViewById(R.id.perfilLeitor);
        nomeLeitor = view.findViewById(R.id.nomeLeitor);
        dataPostagem = view.findViewById(R.id.dataPostagem);
        seguir = view.findViewById(R.id.botaoSeguir);
        paginas = view.findViewById(R.id.paginasPostagem);
        titulo = view.findViewById(R.id.tituloPostagem);
        texto = view.findViewById(R.id.textoPostagem);
        curtida = view.findViewById(R.id.curtida);
        quantidadeCurtidas = view.findViewById(R.id.quantidadeCurtidas);

        seguir.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(seguir.getText() == "Seguir"){
                    seguir.setText("Seguindo");
                    seguir.setTextColor(0xff221D57);
                    seguir.setBackgroundColor(0xfffefefe);
                    Toast.makeText(view.getContext(), "Agora você segue " + nomeLeitor.getText().toString(), Toast.LENGTH_SHORT).show();
                }
                else{
                    seguir.setText("Seguir");
                    seguir.setTextColor(0xfffefefe);
                    seguir.setBackgroundColor(0xff221D57);
                    Toast.makeText(view.getContext(), "Você deixou de seguir " + nomeLeitor.getText().toString(), Toast.LENGTH_SHORT).show();
                }
            }
        });
        curtida.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(Integer.parseInt(quantidadeCurtidas.getText().toString()) == 12){
                    curtida.setContentDescription("Não curtida");
                    curtida.setImageResource(R.drawable.nao_curtida);
                    String curtidas = quantidadeCurtidas.getText().toString();
                    Integer curtidas_int = Integer.parseInt(curtidas) - 1;
                    quantidadeCurtidas.setText(curtidas_int.toString());
                }
                else{
                    curtida.setContentDescription("Curtida");
                    curtida.setImageResource(R.drawable.curtida);
                    String curtidas = quantidadeCurtidas.getText().toString();
                    Integer curtidas_int = Integer.parseInt(curtidas) + 1;
                    quantidadeCurtidas.setText(curtidas_int.toString());
                }
            }
        });
    }
}
