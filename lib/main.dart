import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var indice = [
    "O que é Flutter?",
    "Linguagem Dart",
    "Como o Flutter funciona?",
    "O que podemos fazer com o Flutter?",
    "Sobre o Flutter podemos dizer que",
    "Engine do Flutter",
    "Widgets",
    "Widgets de Layout",
    "Widgets de Layout: Container",
    "Widgets de Layout: Row",
    "Widgets de Layout: Column",
    "Widgets de Layout: Stack",
    "Widgets de UI",
    "Ferramentas de Desenvolvimento",
    "Arquiteturas comuns no Flutter",
    "Exemplo de Projeto"
  ];

  var informacoes = [
    "O Flutter é um framework construído pela Google para facilitar o desenvolvimento mobile multiplataforma (Android/iOS) que tem o Dart como principal linguagem de desenvolvimento. Ele utiliza uma abordagem até então única para lidar com os componentes nativos de cada plataforma, em que cada um deles é implementado pelo próprio framework e apresentado ao usuário por um motor de renderização próprio.",
    "Dart é a linguagem do Flutter e o ponto de partida para os seus estudos. É possível aprender Flutter e ao longo do caminho ir adquirindo familiaridade com o Dart, principalmente se você conhece JavaScript, dada a proximidade da sintaxe dessas duas linguagens. Contudo, ao começar do início com o Dart você estará muito melhor preparado para entender o Flutter e tirar proveito dos seus recursos.",
    "O Flutter utiliza uma abordagem até então única para lidar com os componentes nativos de cada plataforma: ao invés de ‘traduzir’ o código para o elemento correspondente (por exemplo, a criação de um botão na tela), o framework implementa os componentes através de um motor de renderização próprio, eliminando assim a necessidade de conversão dos comandos para Android e iOS. Dessa forma, consegue executar o mesmo aplicativo tanto em aplicativos Android quanto em aplicativos iOS. Além disso, por conta dessa solução, também é capaz de executar animações em até 120 fps (frames por segundo).",
    "Com ele podemos utilizar blocos de código prontos que representam Widgets (componentes da tela) como botões, cards, menus e muitos outros para agilizar o desenvolvimento. Porém, também é possível criar e/ou personalizar Widgets livremente.",
    "É multiplataforma; Cria aplicações com ótima performance; É um dos principais frameworks para; Desenvolvimento mobile.",
    "Basicamente, o Flutter é divido em 3 camadas em sua Engine. A primeira é responsável por todo o Framework Flutter escrito em Dart onde você estará trabalhando. A Segunda, é algo que dificilmente você terá que se preocupar, pois se trata do core do Flutter, onde o cérebro dele está, pois lá estará tratamentos específicos de cada sistema e a engine gráfica (OpenGL ES), que é o diferencial do Flutter com React Native, por exemplo. Como Flutter tem sua própria engine de renderização, ela não necessita de uma Bridge específica para cada sistema para a execução do código. No React Native, por exemplo, sempre que você usa um componente de View, basicamente debaixo dos panos ele estará chamando uma View em cada sistema específico, que, de alguma forma ou outra, trará um gargalo para views mais complexas.",
    "No Flutter tudo é considerado um Widget, desde um tema para sua aplicação até mesmo um componente mais complexo como um TextField. Existem dois Widget básicos quando se está criando um layout: StatelessWidget e StatefulWidget. A diferença entre eles é que o Stateless como o próprio nome já diz, não tem estado. Já o Stateful, ele mantém o estado da view e sempre que alguma variável do estado mudar, o Flutter irá enviar um evento para seus filhos serem atualizados.",
    "Para desenhar layouts, existem alguns Widgets que normalmente são os pilares, sendo eles o Container, Row, Column e Stack.",
    "O Container é um Widget que possuí atributos como margin, padding, alinhamento, color, controle de largura e altura, sombras e bordas.",
    "Já o Row é um Widget para se posicionar coisas horizontalmente e podendo controlar o espaçamento entre eles.",
    "O Column não é muito diferente do Row, sendo a única diferença entre eles é que seus filhos serão posicionado verticalmente.",
    "O Stack é bem simples, ele te da a flexibilidade de empilhar um filho em cima do outro.",
    "Da mesma forma que em Android e iOS existem componentes básicos para se escrever uma aplicação, no Flutter não seria diferente. Uma coisa bacana do Flutter é que existem dois tipos de componentes visuais, o Material que é baseado no Material Design e o Cuppertino que é baseado em componentes do iOS. Outra coisa quando se está utilizando os Widgets do Material, é que todas as coisas nativas de cada sistema é mantida, como efeitos de scroll, fonte e animação de navegação.",
    "Para se desenvolver aplicativos em Flutter, existem duas IDEs bem conhecidas que basta a instalação de um plugin e tudo estará pronto. Ambas IDEs possuem o suporte necessário para você começar seu app, inclusive com suporte para Debug e Hot Reloading, que faz com que tudo que você alterar, será imediatamente refletido no seu app. Não vou entrar no mérito de dizer qual é melhor ou não pois isso é o gosto de cada um.",
    "Quando se está desenvolvendo aplicações é muito comum ter a necessidade de quebrar suas regras de negócios em várias camadas, até mesmo para respeitar princípios como SOLID e ter a flexibilidade de testar suas regras. Atualmente a comunidade do Flutter tem se preocupado bastante sobre arquiteturas de desenvolvimento e com isso desenvolveram um site chamado fluttersamples.com, que possui vários exemplos de arquiteturas conhecidas Como Redux, MVI e BloC (Arquitetura proposta pelo Google para Flutter).",
    "Exemplo do que seria um hello world em Flutter."
  ];

  var imagens = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
    "assets/images/img5.jpg",
    "assets/images/img6.jpg",
    "assets/images/img7.jpg",
    "assets/images/img8.jpg",
    "assets/images/img9.jpg",
    "assets/images/img10.jpg",
    "assets/images/img11.jpg",
    "assets/images/img12.jpg",
    "assets/images/img13.jpg",
    "assets/images/img14.jpg",
    "assets/images/img15.jpg",
    "assets/images/img16.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Info Flutter",
          style: TextStyle(color: Colors.grey),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: imagens.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialogFunc(
                  context, imagens[index], indice[index], informacoes[index]);
            },
            child: Card(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          indice[index],
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

showDialogFunc(context, img, ind, info) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 500,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 300,
                    height: 200,
                  ),
                ),
                Text(
                  ind,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      info,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
