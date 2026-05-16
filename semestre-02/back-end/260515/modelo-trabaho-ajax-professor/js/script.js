document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('agendaForm');
    const tabela = document.getElementById('tabelaContatos');

    // Função para Listar
    const listarContatos = async () => {
        const res = await fetch('api.php?action=list');
        const dados = await res.json();

        tabela.innerHTML = dados.map(c => `
            <tr>
                <td><small>${c.id}</small></td>
                <td>${c.nome}</td>
                <td>${c.tel}</td>
                <td>${c.email}</td>
                <td class="text-center">
                    <button class="btn btn-warning btn-sm" onclick="prepararEdicao('${c.id}', '${c.nome}', '${c.tel}', '${c.email}')">Editar</button>
                    <button class="btn btn-danger btn-sm" onclick="excluirContato('${c.id}')">Eliminar</button>
                </td>
            </tr>
        `).join('');
    };

    // Função para Salvar/Atualizar
    form.onsubmit = async (e) => {
        e.preventDefault();
        const formData = new FormData(form);

        await fetch('api.php?action=save', {
            method: 'POST',
            body: formData
        });

        form.reset();
        document.getElementById('contatoId').value = '';
        listarContatos();
    };

    // Função para Excluir
    window.excluirContato = async (id) => {
        if (confirm('Deseja realmente excluir?')) {
            const fd = new FormData();
            fd.append('id', id);
            await fetch('api.php?action=delete', { method: 'POST', body: fd });
            listarContatos();
        }
    };

    // Preencher formulário para edição
    window.prepararEdicao = (id, nome, tel, email) => {
        document.getElementById('contatoId').value = id;
        document.getElementById('nome').value = nome;
        document.getElementById('tel').value = tel;
        document.getElementById('email').value = email;
    };

    document.getElementById('btnNovo').onclick = () => {
        form.reset();
        document.getElementById('contatoId').value = '';
    };

    listarContatos();
});