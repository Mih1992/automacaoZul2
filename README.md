# Projeto de integração de API Estapar e ZUL+
Trata-se da automação no ambiente de QA das APIs que integram o projeto Estapar e ZUL+.  
Tem como funcionalidade facilitrar a criação de massa para futuros teste.

Para conseguir executar o codigo será necessário intalar o Python e o Robot Framework, e manter a VPN do ambiente de QA conectada

### Como instalar o Python no Windows
Acesse a página oficial para realizar o download do instalador do Python na versão 3.8.  
(https://www.python.org/downloads/release/python-387/)  
Vá até a pasta na qual foi feito o download do instalador do Python 3.8.  
Clique com o botão direito em cima do instalador.  
Clique na opção “Executar como Administrador”.  
Com o instalador aberto tenha a certeza de ter marcado as opções “Add Python 3.8 to PATH” para que o comando python fique disponível.  
Por fim clique em “Install Now” e siga o processo padrão de instalação de programas no Windows (next, next, next, finish).  
Para verificar se a instalação foi realizada com sucesso basta abrir algum terminal do Windows (Prompt de Comando ou Power Shell) e digitar o comando abaixo:  
python --version

### Como instalar o Robot Framework no Windows 

No prompt de comando (cmd) execute e aguarde a instalação:  
pip install robotframework  
Para saber se deu tudo certo no prompt de comando (cmd) execute:  
robot --version  

#### Qual editor utilizar que tenha plugin para o Robot?  
Os editores mais conhecidos que têm plugins para o Robot Framework são:  
PyCharm  
Eclipse  
Atom  
Visual Studio Code  
Sublime  
Escolha um de sua preferencia.  
