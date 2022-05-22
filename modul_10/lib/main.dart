import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tugas pendahuluan 8'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 50.0,
                  height: 50.0,
                  color: Colors.blue,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Muhamad Azmi Rizkifar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "1301218586",
                    )
                  ],
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.blueGrey,
                    ]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: const Text("TP 8",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Rentour",
                        style: TextStyle(color: Colors.white, fontSize: 30.0),
                      ),
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: const [
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: FlutterLogo(
                            size: 75,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
