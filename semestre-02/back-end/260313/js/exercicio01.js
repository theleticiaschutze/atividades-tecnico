const frm = document.querySelector("form");
const resp = document.querySelector("h2");

//pegando o número para testar né
frm.addEventListener("submit", (e) => {
    e.preventDefault(); //evita envio do formulário

    const num = Number(frm.inum.value); //pega o numero digitado

    if(num % 2 == 0){
        resp.innerText = `O numero ${num} é par`;
    } else{
        resp.innerText = `O numero ${num} é impar`;
    }
});