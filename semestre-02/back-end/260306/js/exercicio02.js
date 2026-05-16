const frm = document.querySelector("form");
const resp1 = document.querySelector("h3");
const resp2= document.querySelector("h4");

frm.addEventListener("submit", (e) => {

const minutos = Number(frm.inDuracao.value);
const duracao = Math.ceil(minutos / 15);
const resultado = duracao*3;

resp1.innerText= `valor`;
resp2.innerText= ` RS${resultado},00 `;
e.preventDefault();
});