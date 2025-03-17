#!/bin/bash

echo "Verificando conectividad con la VM..."
ansible -i ~/Downloads/unir/ansible/hosts vm -m ping || { echo "Error: No se puede conectar a la VM"; exit 1; }

echo "Obteniendo credenciales de ACR..."
export ACR_PASSWORD=$(az acr credential show --name casopractico2acr --query "passwords[0].value" -o tsv)

echo "Ejecutando el playbook..."
ACR_PASSWORD=$ACR_PASSWORD ansible-playbook -i ~/Downloads/unir/ansible/hosts ~/Downloads/unir/ansible/playbook.yml
