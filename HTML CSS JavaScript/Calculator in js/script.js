function calculator(value) {
    let a = parseFloat(document.getElementById('a').value);
    let b = parseFloat(document.getElementById('b').value);
    let result = document.getElementById('result');
    if (value == "Add") {
        result.innerText = a + b;
    } else if (value == "Mul") {
        result.innerText = a * b;
    } else if (value == "Sub") {
        result.innerText = a - b;
    } else if (value == "Div") {
        result.innerText = a / b;
    }

}