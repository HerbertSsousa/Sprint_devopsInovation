# Usar imagem base leve do Java
FROM openjdk:17-jdk-slim

# Criar diretório de trabalho para o aplicativo
WORKDIR /app

# Copiar o arquivo JAR do aplicativo para o diretório de trabalho
COPY target/odontoprev-app.jar /app/odontoprev-app.jar

# Configurar o comando para iniciar a aplicação
ENTRYPOINT ["java", "-jar", "odontoprev-app.jar"]

# Executar o aplicativo como um usuário não root para segurança
RUN useradd -m appuser
USER appuser
