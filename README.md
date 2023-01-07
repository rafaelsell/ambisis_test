# Processo Seletivo - Etapa 2 - Frontend Dev. Ambisis

Este projeto faz parte do processo seletivo para desenvolvedor
frontend na empresa [Ambisis](https://www.ambisis.com.br).
Esta pequena aplicação de apenas uma tela tem como objetivo principal demonstrar minhas habilidades como desenvolvedor frontend. Esta não é uma aplicação com finalidade real.

Este projeto é baseado no protótipo criado na primeira etapa do processo seletivo. Fique a vontade para visitá-lo [aqui](https://www.figma.com/file/GpQHov7ioMTnOpLhXlXyAr/LeetCode---Ambisis?node-id=0%3A1&t=UHKl4fMadwQoeEPx-1).

## Iniciando a aplicação

Este é projeto desenvolvido em Flutter.

Caso você já tenha flutter configurado no seu computador, por favor siga os passos abaixo:

- Use seu terminal para clonar este repositório com Git

          git clone https://github.com/rafaelsell/ambisis_test.git
          
- Abra o projeto no seu Editor de código favorito.

- Verifique se sua instalação está pronta para uso

          flutter doctor
          
- Verifique se a versão da sua instalação é igual ou superior a **( Channel stable, 3.3.10 )**.

Este projeto usa algumas dependencias externas, confira os pacotes e versões do mesmo abaixo:

- [Google Fonts](https://pub.dev/packages/google_fonts):

          google_fonts: ^3.0.1
            
- [INTL](https://pub.dev/packages/intl):

          intl: ^0.18.0
            
- [FL_Chart](https://pub.dev/packages/fl_chart):

          fl_chart: ^0.55.2

- Tenha certeza de instalar as dependências nas suas respectivas versões com o comando:

          flutter pub get

- Para iniciar a aplicação:

          flutter run -d chrome

  Note que este projeto foi desenvolvido para web/chrome, em um monitor com resolução 1920x1080px, com o navegador em modo janela,
usando a menor tamanho da janela na horizontal, e o tamanho total na vertical. Deste modo pode haver alguns problemas de responsividade caso seja executado em outros formatos ou dispositivos.

- Caso você não tenha flutter instalado em sua máquina, por favor siga os passos de instalação [aqui](https://docs.flutter.dev/).

## Recursos

- Uma barra de navegação superior,
- Uma tela com resumo das estatísticas filtradas por data,
- Um gráfico de barra comparativo,
- Barras de progresso separados por segmento.
