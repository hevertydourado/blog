#!/bin/bash

# Caminho da pasta de destino
DESTINO="/var/www/douratto.run/html/"

# Caminho da pasta _site
ORIGEM="_site/"

# Verifica se o usuário tem permissões de superusuário
if [ "$EUID" -ne 0 ]; then
  echo "Por favor, execute como root"
  exit
fi

# Apaga todo o conteúdo da pasta de destino
echo "Apagando conteúdo em $DESTINO"
rm -rf ${DESTINO}*

# Move o conteúdo da pasta _site para a pasta de destino
echo "Movendo conteúdo de $ORIGEM para $DESTINO"
cp -r ${ORIGEM}* $DESTINO

echo "Operação concluída com sucesso!"
