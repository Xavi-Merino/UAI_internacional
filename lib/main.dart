// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_new

import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "data:image/jpeg;base64,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",
                ),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: const Text("Botones con fondo"),
              ),
              body: Stack(
                children: <Widget>[
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
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
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
        title: Text("Third Screen"),
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

class FourthScreen extends StatelessWidget {
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

class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fifth Screen"),
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
            margin: const EdgeInsets.only(top: 300),
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
          child: Text('Se postula como... '),
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
          child: Text('Se postula en... '),
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
          child: Text('Los requisitos son... '),
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
          child: Text('Las pruebas de idioma son...'),
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
          child: Text('El costo de intercambio es de... '),
        )
      ]),
    );
  }
}
