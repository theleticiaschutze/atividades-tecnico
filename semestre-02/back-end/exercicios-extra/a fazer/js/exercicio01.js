const frm = document.querySelector("form"); //obtém elementos da página
const resptitulo = document.querySelector("h3");
const resptexto = document.querySelector("pre");

const times = [];                       //delcara vetor global

frm.btime.addEventListener("click", () => {
    e.preventDefault();                    //evita envio do form
    const nome = frm.ipaciente.value;      //obtém nome do paciente      
    times.push(nome);                  //adiciona o nome ao final do vetor
    let lista = "";    //string para concatenar pacientes(juntar)
    //for "tradicional" (inicia em 0, enquanto menor que o tamanho do array)
    for(let i = 0; i < times.length; i++) {
        lista += `${i + 1}.    ${pacientes[i]}\n`;
    }

    respLista.innerText = lista;  //exibe a lista de pacientes na página
    frm.ipaciente.value = "";   //limpa conteudo do campo de formulário
    frm.ipaciente.focus();      //posiciona cursor no campo
});

//adiciona um "ouvinte para o evento click no "burgencia" que esta no form
frm.blista.addEventListener("click", () => {
    //verifica se as valiudações do form estão ok (no caso paciente is required)
    if (!frm.checkValidity()) {
        alert("Informe o nome do paciente a ser atendido em caráter de urgência");
        frm.ipaciente.focus();  //posiciona o cursor no campo
        return;  //retorna ao form
    }
    const nome = frm.ipaciente.value;    //obtém o nome do paciente
    pacientes.unshift(nome);   //adiciona paciente ao início do vetor
    let lista = "";  //string para concatenar pacientes
    //forEach aplicado sobre o array pacientes
    pacientes.forEach((paciente, i) => (lista += `${i + 1}.    ${pacientes[i]}\n`));
    resptitulo.innerText = "Lista de times";
    resptexto.innerText = lista; //exibe a lista de pacientes na página
    frm.paciente.value = "";  //limpa o conteúdo do campo formulário
    frm.ipaciente.focus();      //posiciona cursor no campo
});

//adiciona um "ouvinte para o evento click no "batender" que esta no form
frm.btabela.addEventListener("click", () => {
    //se o tamanho do vetor = 0
    if (pacientes.length == 0){
        alert("Não há pacientes na lista de espera!");
        frm.ipaciente.focus();
        return;
    }
    const atender = pacientes.shift(); //remove do início da fila(e obtém nome)
    respNome.innerText = atender; //exibe o nome do paciente em atendimento
    resptitulo.innerText = "Lista de times";
    let tabela = "";           //string para concatenar pacientes
    pacientes.forEach((paciente, i) => (tabela += `${i + 1}.    ${pacientes[i]}\n`));
    resptitulo.innerText = "Tabela de jogos";
    resptexto.innerText = lista; //exibe a lista dos jogos
});