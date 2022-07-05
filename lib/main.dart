// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_new

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/api/welcome.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new HomeScreen());
  }

  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LoginApp",
      home: WelcomePage(),
      builder: EasyLoading.init(),
    );
  }*/
}
// WE CREATE THE HOME SCREEN
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 29, 31, 33),
            image: DecorationImage(
                image: NetworkImage(
                 "https://i.postimg.cc/ncfdmc54/mapamundi.png" // ADD THE WALLPAPER
                ),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: const Text("Botones con fondo"),
              ),
              body: Stack(
                children: <Widget>[ // CREATION OF MENU BOTTONS
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(bottom: 200),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(170, 45),
                        maximumSize: const Size(200, 50),
                      ),
                      child: const Text("CONVENIOS"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondScreen()),
                        );
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(bottom: 100),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(170, 45),
                        maximumSize: const Size(200, 50),
                      ),
                      child: const Text("BECAS"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThirdScreen()),
                        );
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(bottom: 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(170, 45),
                        maximumSize: const Size(200, 50),
                      ),
                      child: const Text("COSTO DE VIDA"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FourthScreen()),
                        );
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 100),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(170, 45),
                        maximumSize: const Size(200, 50),
                      ),
                      child: const Text("FAQ"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FifthScreen()),
                        );
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 200),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 45),
                        maximumSize: const Size(160, 50),
                      ),
                      child: const Text("POSTULAR"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SixthScreen()),
                        );
                      },
                    ),
                  ),
                ],
              ))),
    );
  }
} // END OF CREATION BOTTONS

class SecondScreen extends StatelessWidget { // CREATION OF THE SECOND SCREEN
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONVENIOS"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BECAS"),
      ),
      body: Stack(children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 200), // POSITION OF THE BOTTON
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(160, 45), // SIZE OF THE BOTTON
              maximumSize: const Size(160, 50),
            ),
            child: const Text("Go Back"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        Center(
          child: Text('''*Beca Líderes Emergentes de las Américas (Canadá)
                *Beca de la Fundación Botín (España)
                *Becas ISEP (Diferentes países)
                *Becas de la Alianza del Pacífico.
                *Becas del Gobierno de Corea.'''), // (' ' ') THIS QUOTES MARKS MAKE A JUMP OF LINE
        )
      ]),
    );
  }
}

class FourthScreen extends StatelessWidget { // CREATION OF THE FOURTH SCREEN
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "COSTO DE VIDA",
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/mapa.png"), fit: BoxFit.cover)),
        child: Center(
          child: Expanded(
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
            /*child: Scaffold(
              appBar: AppBar(
                backgroundColor: (Colors.transparent),
                title: Text("COSTO DE VIDA"),
              )
            ),*/
          ),
        ),
      ),
    );
  }
}

class FifthScreen extends StatelessWidget { // CREATION OF THE FIFTH SCREEN
  const FifthScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 29, 31, 33),
            image: DecorationImage(
                image: NetworkImage(
                 "https://i.postimg.cc/ncfdmc54/mapamundi.png"
                ),
                fit: BoxFit.cover),
          ),
      child: Scaffold(
      appBar: AppBar(
        title: Text("FAQ"),
      ),
      body: Stack(children: <Widget>[
        Container(
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.only(bottom: 50),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(160, 45),
              maximumSize: const Size(160, 50),
            ),
            child: const Text("Go Back"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        Center(
          child: Text( // TEXT OF "FAQ" SECTION
            '''Preguntas Frecuentes
            A continuación se daran a concer algunas de las preguntas frecuentes
            1) ¿Cómo postular?
            -Dentro de la aplicación en la seccion postular puedes solucionar tus dudas.
            2) Si quedo seleccionado, ¿Con quien puedo hablar?
            -Puedes hablar con Francisco Ferrer, coordinador de UAI internacional, su correo es francisco.ferrer@uai.cl
            3) ¿Cómo saber si quede seleccionado?
            -Se te dará aviso via correo electronico de los resultados 
            4) ¿Puedo quedarme más de un semestre, en caso de ser seleccionado?
            -Deberas hablar con Francisco ferrer, para saber acerca de las posibilidades.
            5) ¿Debo pagar extra en la universidad de destino?
            -Por lo general no, debes continuar pagando tu arancel UAI con normaliadad, pero hay excepciones.
            6) ¿Debo sacar visa obligatoriamente?
            -Depedendera de a que lugar viajes.
            7) ¿Cómo convalido mis ramos?
            -Una vez quedes seleccionado se te dará una charla explicando el paso a paso.
            8) ¿Cuanto dinero debo llevar?
            -Es muy variable, ya que dependera de tus gastos.''',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 20
           ),
          ),
        )
      ]),
      ),
      ),
      );
  }
}

class SixthScreen extends StatelessWidget {
  const SixthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Postular"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 200),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(170, 45),
                maximumSize: const Size(200, 50),
              ),
              child: const Text("Como postular?"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SevenScreen()),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 200),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(170, 45),
                maximumSize: const Size(200, 50),
              ),
              child: const Text("Cuando postular?"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EightScreen()),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 100),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(170, 45),
                maximumSize: const Size(200, 50),
              ),
              child: const Text("Requisitos"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NineScreen()),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(170, 45),
                maximumSize: const Size(200, 50),
              ),
              child: const Text("Prueba de idioma"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TenScreen()),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 100),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(170, 45),
                maximumSize: const Size(200, 50),
              ),
              child: const Text("Costo de intercambio"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ElevenScreen()),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 300),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(160, 45),
                maximumSize: const Size(160, 50),
              ),
              child: const Text("Go Back"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SevenScreen extends StatelessWidget {
  const SevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Como postular?"),
      ),
      body: Stack(children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 300),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(160, 45),
              maximumSize: const Size(160, 50),
            ),
            child: const Text("Go Back"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        Center(
          child: Text(
              '''Si ya has sido nominado por tu Universidad de origen, entonces recibirás instrucciones para completar tu postulación en línea:
              *Certificado de Notas actualizados (Debe ser en español o inglés)
              *Formulario Preliminar de Acuerdo Académico (Learning Agreement)
              *Certificado que acredite dominio de español (DELE B1) o certificado emitido por la institución de origen (timbrado y firmado) que acredite nivel B1 según el Marco Europeo de Referencia para las Lenguas. 
              (Sólo para estudiantes originarios de países no-hispanoblantes). B2 en el caso de estudiantes en la Facultad de Medicina
              *Copia a color de la hoja de identificación del pasaporte en formato digital (.JPG, .PDF, .PNG)
              *Fotografía en alta definición. '''),
        )
      ]),
    );
  }
}

class EightScreen extends StatelessWidget {
  const EightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuando postular?"),
      ),
      body: Stack(children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 200),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(160, 45),
              maximumSize: const Size(160, 50),
            ),
            child: const Text("Go Back"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        Center(
          child: Text(
              '''Para el Segundo Semestre de  2021 (Julio - Diciembre), el proceso de postulación es entre abril y mayo de 2021. 
                Para el Primer Semestre de 2022 (Marzo – Julio), el proceso de postulación es entre septiembre y octubre de 2021.'''),
        )
      ]),
    );
  }
}

class NineScreen extends StatelessWidget {
  const NineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Requisitos"),
      ),
      body: Stack(children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 200),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(160, 45),
              maximumSize: const Size(160, 50),
            ),
            child: const Text("Go Back"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        Center(
          child: Text(
              '''Para poder ser seleccionado en el programa de intercambio deberás cumplir con los siguientes requisitos:
                *Ser alumno regular UAI de pregrado.
                *Haber cursado el segundo semestre al momento de realizar el intercambio, salvo que la carrera respectiva exija un número de semestre superior al indicado y así esté informado en la Dirección de Globalización.
                *Contar con el visto bueno de la carrera para realizar el intercambio.
                *No estar sometido a sumario o investigación sumaria por falta disciplinaria ni haber sido sujeto de sanción aplicada como consecuencia de tales procedimientos.
                *Tener salud compatible para participar en el intercambio.
                *Estar al día con la matrícula y mensualidades UAI.
                *Cumplir con el Requisito de idioma correspondiente que exige cada universidad extranjera.'''),
        )
      ]),
    );
  }
}

class TenScreen extends StatelessWidget {
  const TenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prueba de idioma"),
      ),
      body: Stack(children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 200),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(160, 45),
              maximumSize: const Size(160, 50),
            ),
            child: const Text("Go Back"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        Center(
          child: Text(
              '''El TOEFL (Test of English as a Foreign Language) es una prueba estandarizada de dominio del idioma inglés estadounidense, específicamente orientada a hablantes no nativos de este idioma. Como estándar, esta prueba es aceptada por muchas instituciones académicas y profesionales de habla Inglesa alrededor del mundo.  Educational Testing Service (ETS), una organización sin fines de lucro, diseña y administra las pruebas.
          El IELTS (International English Language Testing System: ‘Sistema Internacional de Prueba del Idioma Inglés’) es el examen de inglés más utilizado en el mundo para migración y educación superior. Pertenece conjuntamente a Universidad de Cambridge, British Council, e IDPIelts Australia.'''),
        )
      ]),
    );
  }
}

class ElevenScreen extends StatelessWidget {
  const ElevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Costo de intercambio"),
      ),
      body: Stack(children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 200),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(160, 45),
              maximumSize: const Size(160, 50),
            ),
            child: const Text("Go Back"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        Center(
          child: Text(
              '''Una posible fórmula para calcular cuánto cuesta un intercambio sería la siguiente:
          Precio por semana + dinero para gastos (110 USD/semana es razonable) + vuelo + seguro + visa = coste total del intercambio
          El precio promedio que vas a tener que pagar por un programa de intercambio será de unos 600 USD por semana. A esa cantidad es necesario añadirle el costo del viaje, que puede valer tanto como el intercambio, más los gastos de visado (si los hay) y los seguros. También necesitarás algo de dinero para gastos y puede que tengas que pagar algunas comidas. En total, por un intercambio en el extranjero de tres semanas de duración, calcula que deberás contar por lo menos con 3,500 USD todo incluido. Con un presupuesto de 4,500 USD, tendrás más opciones de intercambio. El precio de nuestros intercambios en Toronto empieza en los  190 USD por dos semanas, sin incluir los vuelos.'''),
        )
      ]),
    );
  }
}
