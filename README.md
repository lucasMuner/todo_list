# TODO List - Projeto Flutter

Este projeto consiste em uma aplicação desenvolvida em Flutter para controle de tarefas/afazeres do dia a dia. 

## Demonstração
![gif_funcionalidade](lib/assets/todo_list_gif.gif)

## APIs e Dependências Utilizadas
- **cupertino_icons**: Pacote contendo os ícones de estilo iOS da Apple.
- **provider**:  Pacote utilizado para gerenciar o estado da aplicação de forma eficiente e reativa.

## Classes e Arquivos do Projeto
- **Task**: Classe das tarefas.
- **TaskData**: Classe ChangeNotifier, possui dos dados de todas as tarefas. É responsável também por adicionar, deletar, pegar e atualizar status da task.
- **AddTasksScreen**: Tela para adicionar uma nova tarefa.
- **TasksScreen**: Tela principal do aplicativo.
- **TasksList**: ListView das tarefas.
- **TasksTile**: Classe de estruturação do Widget 'tarefa'.
- **main**: Inicializa o app.

## Como Executar
1. Certifique-se de ter o ambiente de desenvolvimento Flutter configurado corretamente em seu sistema.
2. Clone este repositório.
3. Abra o projeto em seu editor de código preferido.
4. Execute `flutter pub get` para instalar as dependências.
5. Conecte um dispositivo ou inicie um emulador.
6. Execute `flutter run` para iniciar o aplicativo.

## Autor
Lucas Muner Garcia