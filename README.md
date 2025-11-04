
# ☁️ Gerenciamento de Instâncias EC2 na AWS

Este repositório foi criado como parte do desafio **“Gerenciamento de Instâncias EC2 na AWS”** da [Digital Innovation One (DIO)](https://www.dio.me/).  
O objetivo é aplicar, na prática, os conceitos aprendidos sobre **criação, configuração e gerenciamento de instâncias EC2**.

---

## 🧭 Objetivo do Desafio

Consolidar o conhecimento adquirido nas aulas sobre **AWS EC2**, documentando todo o processo para criar uma base de estudo futura.  
Ao final, este repositório serve como **guia prático** para quem deseja entender o ciclo completo de uma instância na nuvem AWS.

---

## 🧱 Conteúdo do Projeto

### 1️⃣ Criação da Instância EC2
- Escolha da **AMI (Amazon Machine Image)** → *Ubuntu Server 22.04 LTS*  
- Tipo da instância → *t2.micro (Free Tier)*  
- Configuração de **chave SSH** para acesso  
- Liberação de portas (HTTP, HTTPS, SSH) nos **Security Groups**

---

### 2️⃣ Acesso à Instância

- Conexão via terminal usando SSH:
  ```bash
  ssh -i "minha-chave.pem" ubuntu@ec2-xx-xxx-xxx-xx.compute.amazonaws.com
````

* Verificação da conectividade:

  ```bash
  ping google.com
  ```

---

### 3️⃣ Instalação de Servidor Web (Nginx)

```bash
sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
```

Teste no navegador:

```
http://<ip-da-instancia>
```

---

### 4️⃣ Monitoramento e Boas Práticas

* Uso de **CloudWatch** para métricas básicas;
* Configuração de **alarmes simples**;
* **Encerramento** e **exclusão da instância** após os testes para evitar custos.

---

## 🧠 Insights e Aprendizados

* Entendi como a **EC2** é o coração da infraestrutura *IaaS* na AWS.
* Aprendi a importância de configurar **Security Groups** corretamente — segurança é prioridade!
* Vi na prática o uso de **chaves SSH** para autenticação segura.
* Percebi como a **automação com scripts (User Data)** pode economizar tempo em deploys repetitivos.

---

## 🖼️ Capturas de Tela

| Etapa                | Imagem                                             |
| -------------------- | -------------------------------------------------- |
| Criação da instância | ![Instância criada](./images/instancia-criada.png) |
| Conexão SSH          | ![Conexão SSH](./images/conexao-ssh.png)           |
| Nginx ativo          | ![Nginx rodando](./images/terminal.png)            |

---

## 📂 Estrutura do Projeto

```
aws-ec2-gerenciamento-pratico/
│
├── README.md                # Documentação detalhada
├── images/                  # Capturas de tela do processo
└── scripts/
    └── install-nginx.sh     # Script usado para automatizar a instalação
```

---

## ⚙️ Script de Automação (Opcional)

```bash
#!/bin/bash
# install-nginx.sh
sudo apt update -y
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
echo "Nginx instalado e ativo!"
```

---

## 📘 Referências

* [📄 Documentação Oficial AWS EC2](https://docs.aws.amazon.com/pt_br/ec2/)
* [📘 Guia GitHub Markdown](https://docs.github.com/pt/get-started/writing-on-github)
* [☁️ DIO - Formação AWS Cloud Practitioner](https://www.dio.me/)

---

## 🏁 Conclusão

Este projeto reforçou minha compreensão sobre:

* Infraestrutura como serviço (**IaaS**);
* Práticas de **segurança e conectividade** na nuvem;
* **Automação e documentação técnica** com GitHub.

---

## 🚀 Desenvolvido por **Arthur**

📎 [LinkedIn](https://www.linkedin.com/in/carneirodev2002/)
💻 [GitHub](https://github.com/arthurcarneiro1)

```

---

Deseja que eu gere esse arquivo em formato `.md` (Markdown pronto pra upload no GitHub) e `.zip` com a estrutura completa do projeto (`/images`, `/scripts`, `README.md`)?  
Posso preparar tudo pra você baixar e subir direto no repositório.
```
