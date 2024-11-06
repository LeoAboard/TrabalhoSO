echo "Digite o nome da pasta a ser criada:"
read -r nome_pasta

if [ -e "$nome_pasta" ]; then
    echo "ERRO: pasta '$nome_pasta' já existe"
    echo "Deseja renomeá-la? (s/n)"
    read -r resposta

    if [ "$resposta" = "s" ]; then
        echo "Digite o novo nome da pasta:"
        read -r novo_nome
        if [ -e "$novo_nome" ]; then
            echo "ERRO: pasta '$novo_nome' já existe"
        else
            mv "$nome_pasta" "$novo_nome"
            echo "Pasta renomeada!"
        fi
    else
        echo "Cancelado"
    fi

else
    mkdir "$nome_pasta"
    echo "Pasta '$nome_pasta' criada!"
fi
