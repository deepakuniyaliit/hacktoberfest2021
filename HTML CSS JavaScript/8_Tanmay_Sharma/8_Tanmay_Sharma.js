const express = require("express");
const https = require("https");
const bodyParser = require("body-parser");

const app = express();

app.use(bodyParser.urlencoded({extended:true}));

app.get("/", function(req,res) {
    
    res.sendFile(__dirname + "/index.html");
})

app.post("/",function(req,res){

    const query = req.body.cityName;
    const apiKey = "11a6012a6f4af2581955b14a84fbc227";
    const unit = "metric";
    const url = "https://api.openweathermap.org/data/2.5/weather?q="+query+"&appid="+apiKey+"&units="+unit;
    https.get(url, function(response){
        console.log(response.statusCode); //status code

        response.on("data", function(data){
            const weatherData = JSON.parse(data)
            const temp = weatherData.main.temp
            const desc = weatherData.weather[0].description
            const icon = weatherData.weather[0].icon
            const imageUrl = " http://openweathermap.org/img/wn/"+icon+"@2x.png"
            console.log(temp);
            console.log(desc);
            res.write("<h1>The temperature in "+query+" is: "+temp+" degrees celsius</h1>");
            res.write("<h3>The weather is currently "+desc+"</h3>");
            res.write("<img src=" +imageUrl+ ">")
            res.send()
        })
    })
})


app.listen(3000, function() {
    console.log("Server running on port 3000");
})