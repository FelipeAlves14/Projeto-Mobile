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

public class FeedActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_feed);
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
        TextView nomeLeitor = findViewById(R.id.nomeLeitor1);
        Button seguir = findViewById(R.id.botaoSeguir1);
        seguir.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(seguir.getText() == "Seguir"){
                    seguir.setText("Seguindo");
                    seguir.setTextColor(0xff221D57);
                    seguir.setBackgroundColor(0xfffefefe);
                    Toast.makeText(FeedActivity.this, "Agora você segue " + nomeLeitor.getText().toString(), LENGTH_SHORT).show();
                }
                else{
                    seguir.setText("Seguir");
                    seguir.setTextColor(0xfffefefe);
                    seguir.setBackgroundColor(0xff221D57);
                    Toast.makeText(FeedActivity.this, "Você deixou de seguir " + nomeLeitor.getText().toString(), LENGTH_SHORT).show();
                }
            }
        });
        ImageView curtida = findViewById(R.id.curtida1);
        curtida.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView quantidadeCurtidas = findViewById(R.id.quantidadeCurtidas1);
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
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });
    }
}