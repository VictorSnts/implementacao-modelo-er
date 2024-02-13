# Use a imagem oficial do MySQL como base
FROM mysql:latest

# Define a senha para o usuário root
ENV MYSQL_ROOT_PASSWORD=senha_root

# Copie os arquivos de inicialização do MySQL
COPY ./scripts/* /docker-entrypoint-initdb.d/