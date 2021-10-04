function getData() {
	place = document.getElementById('place').value;
	let url = 'http://api.weatherapi.com/v1/current.json?key=1b8676ab83734bf88d592311210410&q=' + place + '&aqi=no';

	function makeitwork(fun) {
		let time = fun.location.localtime;
		let name = fun.location.name;
		let region = fun.location.region;
		let weather_icon_url = fun.current.condition.icon;
		let weather_text = fun.current.condition.text;
		let temp_c = fun.current.temp_c;
		let visibility_km = fun.current.vis_km;
		let wind_speed = fun.current.wind_kph;

		document.getElementById('show').innerHTML = `<div class="weather-data">
		    <div class="left">
		    <div class="line1">
		        ${name} District, ${region} Weather
		    </div>
		    <div class="line2">
		        As of ${time}
		    </div>
		    <div class="temp">
		        ${temp_c}<sup>o</sup> C
		    </div>
		    <div class="weather-text">
		        ${weather_text}
		    </div>
		    <div class="visibility-km">
		        Visibility is ${visibility_km} KMs
		    </div>
		    <div class="wind-speed">
		        Wind speed is ${wind_speed} KMPH
		    </div>
		</div>
		<div class="right"><br>
            <img src="${weather_icon_url}" alt="">
		    </div>
		</div>
		</div>`;
	}

	fetch(url)
		.then(function(response) {
			return response.json();
		})
		.then(function(data) {
			makeitwork(data);
		})
		.catch(function() {
			console.log('Allow it man');
		});
}
