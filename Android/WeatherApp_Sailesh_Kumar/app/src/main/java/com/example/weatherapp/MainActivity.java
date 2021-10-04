package com.example.weatherapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        EditText et = findViewById(R.id.cityName);
        ImageView next = findViewById(R.id.next);

        next.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // get city name
                String cityName = et.getText().toString();
                if(cityName.isEmpty()){
                    Toast.makeText(MainActivity.this, "Please Enter City Name", Toast.LENGTH_SHORT).show();
                }
                else{
                    Intent intent = new Intent(MainActivity.this, ShowWeather.class);
                    intent.putExtra("CITY_NAME", cityName);
                    startActivity(intent);
                }
            }
        });
    }
}