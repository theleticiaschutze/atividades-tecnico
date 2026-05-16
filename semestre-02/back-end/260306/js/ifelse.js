// cria referencia ao form e elementos de resposta do programa
const frm= document.querySelector("form")
const resp1= document.querySelector("h3")
const resp2= document.querySelector("h4")

// cria um "ouvinte" de evento, acionado quando o botão submit for clicado
frm.addEventListener("submit", (e) => {
    e.preventDefault (); //evita o envio do formulario

    const nome = frm.inome.value //obtem os valores do form
    const n1 = Number(frm.inota1.value)
    const n2 = Number(frm.inota2.value)

    const media = (n1 + n2) / 2 //calcula a media das notas

    resp1.innerText = `Media das notas ${media.toFixed(2)}` //.toFixed(2) mostra duas casas decimais apenas

    //cria as condições
    if (media >= 7) {
        //altera o texto e estilo da cor do elemento resp2
        resp2.innerText = `Parabéns ${nome}! Você foi aprovado(a)`
        resp2.style.color = "blue"
    } else if (media >= 4) {
        resp2.innerText = `Atenção ${nome}! Você está em exame`
        resp2.style.color = "yellow"
    } else {
        resp2.innerText = `Adeeeeeee ${nome}... \n Você reprovou!`
        resp2.style.color = "red"
    }



});