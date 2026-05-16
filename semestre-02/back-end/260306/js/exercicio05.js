const frm = document.querySelector("form");
const resp = document.querySelector("h3");


frm.addEventListener("submit", (e) =>{
    const gramas = Number(frm.ipeso.value);
    const preco = Number(frm.ipreco.value);

    const final = (gramas / 1000) * preco;

    resp.innerText = `O valor é R$${final.toFixed(2)}`;

    e.preventDefault();
});

