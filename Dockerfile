#a imagem que irá ser usada de base
FROM node
#informar o diretório padrão
WORKDIR /
#variável de ambiente durante o build do DockerFile
ARG PORT=3000
#variável de ambiente da aplicação
ENV PORT=$PORT
#deixar a porta da máquina visivel
EXPOSE $PORT
#copiar os arquivos do terminal que estamos para a imagem que estamos criando
COPY ./ .
#comando em bash que podemos usar para pré inicializar a aplicação
RUN npm install
#iniciar a aplicação
ENTRYPOINT npm start

