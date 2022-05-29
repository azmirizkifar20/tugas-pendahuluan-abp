import 'package:flutter/material.dart';
import 'package:modul_13/detail.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> listTugas = ['Tubes 1', 'Tubes 2'];
    final List<Color> colors = [Colors.blue, Colors.amber];

    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: const EdgeInsets.all(8.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: listTugas.length,
            itemBuilder: ((context, index) =>
                CardTugas(title: listTugas[index], color: colors[index]))),
      )),
    );
  }
}

class CardTugas extends StatelessWidget {
  final String title;
  final Color color;
  const CardTugas({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, DetailPage.routeName,
            arguments: title),
        child: Card(
          elevation: 1.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100.0))),
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Text(
                  title,
                  style: const TextStyle(color: Colors.blue, fontSize: 24.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
