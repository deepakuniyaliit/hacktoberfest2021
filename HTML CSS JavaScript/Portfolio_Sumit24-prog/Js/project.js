const deg = 6;
const hr = document.querySelector('#hr');
const mn = document.querySelector('#mn');
const sc = document.querySelector('#sc');
setInterval(() => {
    let day = new Date();
    let hh = day.getHours() * 30;
    let mm = day.getMinutes() * deg;
    let ss = day.getSeconds() * deg;

    hr.style.transform = `rotateZ(${hh+(mm/12)}deg)`;
    mn.style.transform = `rotateZ(${mm}deg)`;
    sc.style.transform = `rotateZ(${ss}deg)`;
})

let p;
let c=0;

function change(p) { 
    if (o > 0) {
        let oe = document.getElementById('pr' + o).style;
        oe.height = '200px';
        oe.top = '200px';
    }
    if (c > 0) {
        let te = document.getElementById('pr' + c).style;
        te.left = '-500px';
    }
    let elid = 'pr';
    elid = elid + p;
    let el = document.getElementById(elid).style;
    el.left = '500px';
    el.top = '200px';
    c = p;
}
let n;
let o=0;

function more(n) {
    let info = document.getElementById('pr' + n).style;
    info.top = '80px';
    info.height = '400px'; 
    o = n;
}