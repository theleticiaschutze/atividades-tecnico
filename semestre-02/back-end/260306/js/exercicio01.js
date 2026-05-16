//criando os elementos que vou pegar
const frm = document.querySelector("form")
const resp = document.querySelector("h3")

//pegando as coisas do formulário
frm.addEventListener("submit", (e) =>{
    const preco = Number(frm.ipreco.value) //pega o valor do produto

    const final = Math.floor(preco * 2)

    resp.innerText = `O valor final com desconto é R$${final},00`

    e.preventDefault()
});

