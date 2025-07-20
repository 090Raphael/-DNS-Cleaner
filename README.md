🧼 FLUSHDNS - Limpeza de DNS e Renovação de IP
Este é um script em batch (.bat) simples e eficaz para limpar o cache DNS e renovar automaticamente o endereço IP da sua máquina com Windows. Ideal para resolver problemas comuns de conexão, como:

Navegação lenta ou instável

Sites que não carregam corretamente

Conflitos de IP na rede

Falha ao resolver nomes de domínio

🔧 O que o script faz?
Limpa o cache DNS local (ipconfig /flushdns)

Renova o endereço IP da máquina (ipconfig /release + ipconfig /renew)

Reinicia o Winsock (netsh winsock reset)

Reinicia as configurações de IP (netsh int ip reset)

Atualiza o DNS registrado

Remove e renova registros NetBIOS (nbtstat -rr)

▶️ Como usar
Baixe o arquivo flushdns.bat

Clique com o botão direito e selecione Executar como administrador

Siga as instruções na tela

⚠️ Requisitos
Sistema operacional: Windows 7, 8, 10 ou 11

Permissão de administrador para aplicar as mudanças

💡 Observação
Este script é útil para quem está enfrentando problemas de conectividade com a internet em redes domésticas, escolares ou corporativas. Ele não altera configurações avançadas nem faz modificações permanentes no sistema.

