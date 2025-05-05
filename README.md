# Projeto de Treinamento - Esteira EBDevOps

Este repositório contém um projeto simples desenvolvido com o objetivo de apoiar o **Treinamento da Esteira EBDevOps** destinado aos **Cfrms**.

## 📌 Objetivo

O projeto visa fornecer uma base prática para que os Cfrms compreendam os conceitos fundamentais relacionados à Esteira EBDevOps, incluindo:

- Integração com Git e GitLab;
- Criação e versionamento de código em repositórios;
- Utilização de container com Docker;
- Utilização de pipelines de CI/CD;
- Estruturação de projetos e boas práticas de desenvolvimento colaborativo.

## 🛠️ Tecnologias Utilizadas

- Git
- GitLab (CI/CD)
- HTML5 / CSS3 / JavaScript
- Parcel (bundler)
- Jest (testes unitários)
- Docker
- Docker Compose
- Nginx (para servir a aplicação)
- Kubernetes (opcional)

---

## ⚙️ Estrutura de Build e Deploy

O projeto utiliza um **Dockerfile multi-stage** que realiza:

1. O build da aplicação com o Parcel;
2. A cópia da pasta `dist/` para o Nginx;
3. O serviço da aplicação de forma otimizada via `nginx:alpine`.

Para facilitar, há também um `docker-compose.yml` com a seguinte estrutura:

```yaml
version: "3.9"

services:
  web:
    build:
      context: .
      dockerfile: Dockerfile
    container_name: projeto-esteira
    ports:
      - "8080:80"
    restart: unless-stopped
```

---

## ▶️ Como executar localmente

1. **Instalar dependências e rodar localmente com live reload:**

```bash
npm install
npm run dev
```

2. **Executar testes unitários:**

```bash
npm run test
```

3. **Gerar build otimizado:**

```bash
npm run build
```

4. **Rodar com Docker Compose:**

```bash
docker compose up --build
```

5. **Acessar a aplicação:**

```
http://localhost:8080
```

---

## 📁 .dockerignore

Certifique-se de ter um arquivo `.dockerignore` com o seguinte conteúdo para manter sua imagem leve:

```
node_modules
.parcel-cache
dist
*.log
*.tmp
Dockerfile
docker-compose.yml
.dockerignore
tests
.vscode
.idea
.env
```

---

## 📚 Observações

Este projeto é **didático** e serve como introdução ao uso da esteira de DevOps do Exército Brasileiro. Ele poderá ser expandido com exemplos de pipelines, testes automatizados, deploy automatizado e outras ferramentas utilizadas no contexto real do GPAIME e demais sistemas militares.

## 👨‍🏫 Responsáveis

Desenvolvido e mantido como parte do apoio aos treinamentos internos do IME e do CDS/Exército Brasileiro.
