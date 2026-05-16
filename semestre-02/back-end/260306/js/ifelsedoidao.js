// cria referencia ao form e elementos de resposta do programa
const frm = document.querySelector("form")
const resp1 = document.querySelector("h3")
const resp2 = document.querySelector("h4")

// cria um "ouvinte" de evento, acionado quando o botão submit for clicado
frm.addEventListener("submit", (e) => {
    e.preventDefault(); //evita o envio do formulario

    const nome = frm.inome.value //obtem os valores do form
    const n1 = Number(frm.inota1.value)
    const n2 = Number(frm.inota2.value)

    const media = (n1 + n2) / 2 //calcula a media das notas

    resp1.innerText = `Media das notas ${media.toFixed(2)}` //.toFixed(2) mostra duas casas decimais apenas

    //cria as condições
    const situacao = media >= 7
        ? { texto: `Parabéns ${nome}! Você foi aprovado(a)`, cor: "blue" }
        : media >= 4
            ? { texto: `Atenção ${nome}! Você está em exame`, cor: "orange" } // mudei para orange por legibilidade
            : { texto: `Adeeeeeee ${nome}... \n Você reprovou!`, cor: "red" };
    resp2.innerText = situacao.texto;
    resp2.style.color = situacao.cor;
});