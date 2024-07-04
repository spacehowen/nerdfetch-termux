#!/bin/bash

# Definir colores
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Actualizar los paquetes de Termux
echo -e "${BLUE}Actualizando los paquetes de Termux...${NC}"
pkg upgrade -y

# Instalar NerdFetch
echo -e "${GREEN}Instalando NerdFetch...${NC}"
curl -fsSL https://raw.githubusercontent.com/ThatOneCalculator/NerdFetch/main/nerdfetch -o /data/data/com.termux/files/usr/bin/nerdfetch
chmod a+x /data/data/com.termux/files/usr/bin/nerdfetch

# Agregar NerdFetch a .bashrc para ejecución automática
echo -e "${YELLOW}Configurando NerdFetch para que se ejecute automáticamente al iniciar Termux...${NC}"
echo "nerdfetch" >> ~/.bashrc

# Informar al usuario
echo -e "${CYAN}NerdFetch ha sido instalado y configurado para ejecutarse automáticamente al iniciar Termux.${NC}"