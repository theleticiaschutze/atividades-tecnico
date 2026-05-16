
const frm = document.querySelector("form");
const resp1 = document.querySelector("h3");
const resp2 = document.querySelector("h4");



frm.addEventListener("submit", (e) => {

    const veiculo = frm.inVeiculo.value;
    const preco = Number(frm.inPreco.value);

    const avista = (preco / 2); 
    const aprazo = (avista / 12); 

    resp1.innerText = veiculo;
    resp2.innerText = `R$ ${avista} a vista e mais 12 vezes de R$ ${aprazo}`;

    e.preventDefault(); 







});