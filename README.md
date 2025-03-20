# Multi-File Extraction Script 🗂️🔓
### Description 📜
This script is designed to help you automate the process of extracting .zip and .rar files from a specified source folder to a destination folder. 🗂️ Whether you're dealing with large batches of compressed files or need to organize multiple archives at once, this script has you covered!

### Key Features:
- Support for .zip and .rar files: It can extract both types of archives using built-in PowerShell commands and 7-Zip for RAR files.
- Automatic Folder Creation: If the destination folder doesn't exist, it will be created automatically.
- Deletion Option: After extraction, you can choose whether to permanently delete the original .zip and .rar files to free up space.

### How to Use 🔧
- Download and Install 7-Zip: If you haven't installed 7-Zip, you can download it from here.
- Run the Script: Open the PowerShell script in your PowerShell terminal.
- Provide Directories: When prompted, input the full path of the folder containing the .zip and .rar files as well as the destination folder where files will be extracted.
- Select Deletion Options: After extraction, the script will ask if you'd like to delete the original .zip and .rar files.

Note: The script uses 7z.exe for extracting .rar files, so make sure that 7-Zip is installed in the default directory (C:\Program Files\7-Zip\7z.exe). If it's installed in another directory, you can modify the $sevenZipPath variable.



# Script de Extração de Arquivos Multiplicados 🗂️🔓
### Descrição 📜
Este script foi projetado para ajudar a automatizar o processo de extração de arquivos .zip e .rar de uma pasta de origem para uma pasta de destino. 🗂️ Seja lidando com grandes quantidades de arquivos comprimidos ou precisando organizar vários arquivos compactados ao mesmo tempo, este script resolve o seu problema!

### Principais Características:
- Suporte para arquivos .zip e .rar: Ele pode extrair ambos os tipos de arquivos usando comandos nativos do PowerShell e o 7-Zip para arquivos RAR.
- Criação Automática de Pastas: Se a pasta de destino não existir, ela será criada automaticamente.
- Opção de Exclusão: Após a extração, você pode escolher se deseja excluir permanentemente os arquivos originais .zip e .rar para liberar espaço.

### Como Usar 🔧
- Baixe e Instale o 7-Zip: Se você ainda não tem o 7-Zip instalado, pode baixá-lo aqui.
- Execute o Script: Abra o script PowerShell no seu terminal PowerShell.
- Forneça os Diretórios: Quando solicitado, insira o caminho completo da pasta contendo os arquivos .zip e .rar, bem como a pasta de destino onde os arquivos serão extraídos.
- Selecione as Opções de Exclusão: Após a extração, o script perguntará se você deseja excluir os arquivos originais .zip e .rar.

Nota: O script utiliza o 7z.exe para extrair arquivos .rar, então certifique-se de que o 7-Zip esteja instalado no diretório padrão (C:\Program Files\7-Zip\7z.exe). Se estiver instalado em outro diretório, basta modificar a variável $sevenZipPath.

Exemplo 💡
