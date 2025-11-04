#!/bin/bash
# ============================================================
# Script: install-nginx.sh
# Autor: Arthur
# Descrição: Automatiza a instalação e inicialização do Nginx
# Data: 2025-11-04
# ============================================================

# Atualiza os pacotes do sistema
echo "🔄 Atualizando pacotes do sistema..."
sudo apt update -y

# Instala o servidor web Nginx
echo "🌐 Instalando o servidor Nginx..."
sudo apt install nginx -y

# Inicia o serviço Nginx
echo "🚀 Iniciando o serviço Nginx..."
sudo systemctl start nginx

# Ativa o Nginx para iniciar automaticamente no boot
echo "⚙️ Ativando o Nginx na inicialização do sistema..."
sudo systemctl enable nginx

# Exibe o status do Nginx
echo "📊 Verificando o status do Nginx..."
sudo systemctl status nginx | grep Active

# Exibe o IP público da instância (útil para teste)
echo "🌍 IP público da instância:"
curl -s http://169.254.169.254/latest/meta-data/public-ipv4

echo ""
echo "✅ Instalação concluída com sucesso!"
echo "Acesse o servidor no navegador usando o IP público exibido acima."
