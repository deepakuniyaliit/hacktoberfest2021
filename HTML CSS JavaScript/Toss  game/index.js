var n1=Math.floor(Math.random() * 6)+1;
var n2=Math.floor(Math.random() * 6)+1;
var img1Src="images/dice"+n1+ ".png";
var img2Src="images/dice"+n2+ ".png";
document.querySelectorAll("img")[0].setAttribute("src",img1Src);
document.querySelectorAll("img")[1].setAttribute("src",img2Src);
if(n1>n2)
{
  document.querySelector("h1").classList.add("title-color");
  document.querySelector("h1").textContent="PLAYER 1 WINS"
}
else if(n2>n1)
{
  document.querySelector("h1").classList.add("title-color");
  document.querySelector("h1").textContent="PLAYER 2 WINS"
}
else
{
  document.querySelector("h1").classList.add("title-color");
  document.querySelector("h1").textContent="TIE"
}
