const frm = document.querySelector("form"); //obtém elementos da página
const resp = document.querySelector("pre");

frm.addEventListener("submit", (e) => {
    e.preventDefault();   //evita envio do form

    const produto = frm.iproduto.value;

    //se houver dados salvos
    if (localStorage.getItem("comprasProduto")) {
        //obtém itens separando-os em elementos de vetor
        const produtos = localStorage.getItem("comprasProduto").split(";");

        //adiciona o novo produto ao vetor
        produtos.push(produto);

        //classifica o vetor
        produtos.sort();

        //salva vetor classificado (com elementos separados por "")
        localStorage.setItem("comprasProduto", produtos.join(";"));
    } else {
        //senão (é a primeira inclusão), salva apenas o produto
        localStorage.setItem("comprasProduto", produto);
    }

    listarProdutos();

    frm.reset();       //ou frm.iproduto.value=""
    frm.iproduto.focus();
});

const listarProdutos = () => {
    if (!localStorage.getItem("comprasProduto")) {
        resp.innerText = "";
        return;
    }

    const produtos = localStorage.getItem("comprasProduto").split(";");

    resp.innerText = `Produtos Adicionados\n----------------------------------\n${produtos.join("\n")}`;
}

window.addEventListener("load", listarProdutos);

frm.blimpar.addEventListener("click", () => {
    if (localStorage.getItem("comprasProduto")) {
        if (confirm("Deseja realmente excluir todos os itens da lista?")) {
            localStorage.removeItem("comprasProduto");
            listarProdutos();
        }
    } else {
        alert("A lista está vazia...");

    }
    frm.iproduto.focus();
})