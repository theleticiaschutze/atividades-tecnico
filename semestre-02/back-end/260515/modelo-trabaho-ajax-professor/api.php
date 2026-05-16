<?php
$arquivo = 'agenda.txt';

if (!file_exists($arquivo)) touch($arquivo);

$action = $_GET['action'] ?? '';

// LISTAR
if ($action === 'list') {
    $linhas = file($arquivo, FILE_IGNORE_NEW_LINES);
    $lista = [];
    foreach ($linhas as $linha) {
        $cols = explode('|', $linha);
        if (count($cols) == 4) {
            $lista[] = ['id' => $cols[0], 'nome' => $cols[1], 'tel' => $cols[2], 'email' => $cols[3]];
        }
    }
    echo json_encode($lista);
}

// SALVAR / ATUALIZAR
if ($action === 'save') {
    $id = $_POST['id'] ?: uniqid();
    $nome = str_replace('|', '', $_POST['nome']);
    $tel = str_replace('|', '', $_POST['tel']);
    $email = str_replace('|', '', $_POST['email']);

    $novaLinha = "{$id}|{$nome}|{$tel}|{$email}\n";
    $linhas = file($arquivo);
    $output = "";
    $editado = false;

    foreach ($linhas as $l) {
        if (strpos($l, $id . '|') === 0) {
            $output .= $novaLinha;
            $editado = true;
        } else {
            $output .= $l;
        }
    }

    if (!$editado) $output .= $novaLinha;

    file_put_contents($arquivo, $output);
    echo json_encode(['status' => 'ok']);
}

// EXCLUIR
if ($action === 'delete') {
    $id = $_POST['id'];
    $linhas = file($arquivo);
    $output = "";
    foreach ($linhas as $l) {
        if (strpos($l, $id . '|') !== 0) $output .= $l;
    }
    file_put_contents($arquivo, $output);
    echo json_encode(['status' => 'ok']);
}
