
const frm = document.querySelector("form");
const resp1 = document.querySelector("h3");
const resp2 = document.querySelector("h4");



frm.addEventListener("submit", (e) => {

    const produto = frm.inProduto.value;
    const valut = Number(frm.inValut.value);

    const desct = (valut / 2.0); 
    const doisprodu = (valut+valut); 
    const total = (desct+doisprodu);

    resp1.innerText = produto;
    resp2.innerText = `R$ ${valut} por uma unidade, ou   R$ ${total} por 3 unidades, a terceira só paga 50%! ( ${desct} )`;

    e.preventDefault(); 







});