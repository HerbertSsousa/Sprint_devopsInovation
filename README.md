# Sprint_devopsInovation
 
# Solução com Virtualização: DevOps Tools e Cloud Computing

## Equipe

- **Herbert Santos de Sousa**: RM553227
- **João Pedro Pereira**: RM553698
- **Enzo Franco Rocha**: RM553643

## Introdução

Este projeto apresenta uma solução baseada em Máquinas Virtuais (VMs) na plataforma **Azure for Students**. O objetivo é implementar um sistema de **análise preditiva** para **detecção e mitigação de fraudes** no setor odontológico. A escolha das VMs foi justificada pela necessidade de **isolamento** e **controle total** sobre o ambiente de execução, além da **segurança** necessária ao lidar com dados sensíveis.

## Objetivo

O principal objetivo desta solução é desenvolver um sistema de análise preditiva para detectar e mitigar fraudes e sinistros no setor odontológico, utilizando **técnicas de machine learning**. O uso de **Máquinas Virtuais (VMs)** na plataforma **Azure for Students** garante a segurança das operações e promove maior **eficiência operacional** para as operadoras de planos odontológicos.

## Tecnologias Utilizadas

- **Azure for Students** para provisionamento de Máquinas Virtuais
- **Docker** para contêineres e orquestração de ambientes
- **Java** (Spring Boot) para desenvolvimento do backend
- **Oracle Database** para armazenamento de dados
- **Machine Learning** para análise preditiva (TensorFlow, PyTorch)
- **Docker Compose** para facilitar o gerenciamento de múltiplos contêineres
- **Nginx/Apache** para servir a aplicação no frontend
- **Azure Monitor** para monitoramento e coleta de logs
- **Azure DevOps** para CI/CD e entrega contínua

## Estrutura do Projeto

### 1. Backend (API Java/Spring Boot)

O backend da aplicação é desenvolvido utilizando **Java** com **Spring Boot**. Ele interage com o banco de dados **Oracle**, processa requisições de análise preditiva e retorna os resultados para o frontend.

### 2. Banco de Dados (Oracle)

Os dados sensíveis, como informações de pacientes e dentistas, são armazenados em um banco de dados **Oracle**, provisionado em uma **Máquina Virtual (VM)** separada, garantindo o isolamento e a segurança necessária.

### 3. Machine Learning

A camada de **machine learning** é executada em uma **VM com alta capacidade computacional**, onde modelos preditivos são treinados para detectar fraudes e sinistros. O backend se comunica com essa camada para enviar dados e receber os resultados.

### 4. Frontend

O frontend é um **aplicativo mobile** (desenvolvido em Kotlin) ou uma **interface web** que permite aos usuários visualizar os resultados da análise preditiva e interagir com os dados.

### 5. Monitoramento e Logs

O **Azure Monitor** é utilizado para acompanhar o desempenho das VMs e detectar possíveis falhas ou gargalos, garantindo a **saúde** do sistema.

### 6. CI/CD Pipeline

Utilizamos um pipeline de **Integração Contínua e Entrega Contínua (CI/CD)** para facilitar a atualização e o deployment do código e dos modelos de machine learning. **Azure DevOps** é utilizado para automação de processos e entrega de novas versões da aplicação.

## Passo a Passo: Criação das Máquinas Virtuais e Deployment com Docker

### Passo 1: Criação da VM e Instalação do Docker

1. Provisione a Máquina Virtual (VM) na plataforma **Azure for Students**.
2. Instale o **Docker** na VM do Windows para empacotar a aplicação em contêineres.

### Passo 2: Criando os Arquivos Dockerfile e Docker Compose

## Considerações Finais

Este projeto demonstra como utilizar **máquinas virtuais**, **containers Docker** e **Azure** para criar uma solução **segura** e **escalável** para a **análise preditiva** no setor odontológico. A escolha de **VMs** permite a **flexibilidade necessária** para lidar com **dados sensíveis** e treinar **modelos de machine learning** de forma **eficiente**.


#### Dockerfile

```dockerfile
# Definindo a imagem base para Java
FROM openjdk:17-jdk-slim

# Definir diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o arquivo JAR da aplicação para dentro do contêiner
COPY target/your-app-name.jar /app/your-app-name.jar

# Expõe a porta da aplicação (exemplo: 8080)
EXPOSE 8080

# Comando para rodar a aplicação Java quando o contêiner for iniciado
CMD ["java", "-jar", "your-app-name.jar"]
