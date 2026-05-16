
const frm = document.querySelector("form");
const resp1 = document.querySelector("h3");
const resp2 = document.querySelector("h4");


frm.addEventListener("submit", (e) => {
    e.preventDefault();

    const tempo = frm.imin.value;
    valor = parseFloat(frm.ivalor.value.replace(",", "."));


    //declarando ela para poder mexer aqui

    let troco = 0;

    if (tempo == 120) {
        troco = valor - 3.00;
    } else if (tempo == 60) {
        troco = valor - 1.75;
    } else {
        troco = valor - 1.00
    }

    if (troco < 0) {
        resp1.innerText = `Valor insuficiente!`;
    } else {
        // .toFixed(2) serve para mostrar sempre duas casas decimais (estilo moeda)
        resp2.innerText = `Troco R$: ${troco.toFixed(2)}`;
    }

});