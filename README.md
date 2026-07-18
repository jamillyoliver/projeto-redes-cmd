# 🛠️ Network Troubleshooting Automation Script

Este projeto consiste em um script de automação desenvolvido em **Batch CLI** para sistemas Windows. O objetivo é centralizar e acelerar o processo de diagnóstico de redes locais e conectividade externa, ferramentas essenciais para profissionais de suporte, infraestrutura e redes.

## 🚀 Funcionalidades e Comandos Utilizados

*   **Validação de IP Local (`ipconfig /all`):** Coleta rápida de informações sobre adaptadores de rede, máscaras de sub-rede e gateway padrão.
*   **Teste de Conectividade (`ping`):** Diagnóstico de perda de pacotes e tempo de latência com hosts dinâmicos.
*   **Análise de Rotas (`tracert`):** Identificação de gargalos e saltos (hops) até o destino final.
*   **Resolução de Problemas de DNS/IP (`flushdns` / `renew`):** Automação de comandos para limpar o cache de DNS e solicitar novas concessões via DHCP.
*   **Monitoramento de Conexões (`netstat`):** Filtragem de conexões ativas estabelecidas na máquina.

## 💻 Como Executar

1. Baixe o arquivo `diagnostico_rede.bat`.
2. Clique com o botão direito e selecione **"Executar como Administrador"** (necessário para os comandos de renovação de IP e DNS).
3. Escolha a opção desejada no menu interativo.

## 📸 Demonstração
<img width="931" height="470" alt="Captura de tela 2026-07-18 114344" src="https://github.com/user-attachments/assets/64d11b6e-8141-4b0a-a43a-fb43d1c00a28" />
<img width="927" height="483" alt="Captura de tela 2026-07-18 114227" src="https://github.com/user-attachments/assets/c1d143cb-abb5-48eb-af6d-0495197d5c5d" />
