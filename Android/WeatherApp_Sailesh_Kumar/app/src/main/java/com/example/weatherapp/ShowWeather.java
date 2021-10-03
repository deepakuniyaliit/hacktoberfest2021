package com.example.weatherapp;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;
import com.bumptech.glide.Glide;

import org.json.JSONException;
import org.json.JSONObject;

public class ShowWeather extends AppCompatActivity {

    ImageView ivIcon;
    TextView tvTemp, tvDescription, tvCityName, tvPressure, tvWindSpeed, tvHumidity, tvAqi;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_show_weather);

        ivIcon = findViewById(R.id.weatherIcon);
        tvTemp = findViewById(R.id.temperature);
        tvDescription = findViewById(R.id.description);
        tvCityName = findViewById(R.id.city);
        tvPressure = findViewById(R.id.pressure);
        tvWindSpeed = findViewById(R.id.windSpeed);
        tvHumidity = findViewById(R.id.humidity);
        tvAqi = findViewById(R.id.aqi);

        // extract city name from the intent
        String city = getIntent().getExtras().getString("CITY_NAME");
        // getting and displaying weather data
        showWeather(city);
    }

    /**
     * Function to fetch data from weather bit API
     * @param city
     */
    private void showWeather(String city){
        String url = "https://api.weatherbit.io/v2.0/current?"
                    + "city=" + city
                    + "&key=" + getResources().getString(R.string.key);
        Log.d("url", url);

        //////////////// Progress Bar ////////////////
        ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("Please Wait ...");
        progressDialog.show();
        //////////////// Progress Bar started/////////////////

        // Instantiate the RequestQueue.
        RequestQueue queue = Volley.newRequestQueue(this);

        JsonObjectRequest jsonObjectRequest = new JsonObjectRequest
                (Request.Method.GET, url, null, new Response.Listener<JSONObject>() {

                    @Override
                    public void onResponse(JSONObject response) {
                        setDetails(response);
                        /* stop Progress Bar*/
                        progressDialog.hide();
                    }
                }, new Response.ErrorListener() {

                    @Override
                    public void onErrorResponse(VolleyError error) {
                        // TODO: Handle error
                        Toast.makeText(ShowWeather.this, "Error", Toast.LENGTH_SHORT).show();

                    }
                });
        // Add the request to the RequestQueue.
        queue.add(jsonObjectRequest);
    }

    /**
     * Function to display fetched data on Screen
     * @param response
     */
    void setDetails(JSONObject response){
        try {
            String city_name, wind_direction, icon, description;
            int humidity, air_quality_index, temperature ;
            double pressure, wind_speed;

            JSONObject details = response.getJSONArray("data").getJSONObject(0);

            ///////////// get data from the api response /////////////
            city_name = details.getString("city_name");
            wind_direction = details.getString("wind_cdir");
            icon = details.getJSONObject("weather").getString("icon");
            description = details.getJSONObject("weather").getString("description");

            humidity = details.getInt("rh");
            air_quality_index = details.getInt("aqi");
            temperature = details.getInt("temp");

            pressure = details.getDouble("pres");
            wind_speed = details.getDouble("wind_spd");

            //////// display data on screen ////////

            // setting icon
            Glide.with(ShowWeather.this).load("https://www.weatherbit.io/static/img/icons/"+ icon + ".png").into(ivIcon);
            tvTemp.setText(temperature + " °C");
            tvAqi.setText("AQI: " + air_quality_index);

            tvDescription.setText(description);
            tvCityName.setText(city_name);

            tvPressure.setText(pressure + " mb");
            tvWindSpeed.setText(wind_speed + " m/s " + wind_direction);
            tvHumidity.setText(humidity + " %");

        } catch (JSONException jsonException) {
            jsonException.printStackTrace();
        }
    }

}