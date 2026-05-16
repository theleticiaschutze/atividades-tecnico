// cria referencia ao form e elementos de resposta do programa
const frm= document.querySelector("form")
const resp= document.querySelector("h3")


// cria um "ouvinte" de evento, acionado quando o botão submit for clicado
frm.addEventListener("submit", (e) => {
    e.preventDefault (); //evita o envio do formulario

    const l1 = Number(frm.il1.value);
    const l2 = Number(frm.il2.value);
    const l3 = Number(frm.il3.value);

    //mostra só no caso
    if (l1 == l2 && l1==l3) {
        resp.innerText = "Equilatero";
    } else if (l1 == l2 || l2 == l3) {
        resp.innerText = "Isoceles";
    } else {
        resp.innerText = "Escaleno";
    }

});