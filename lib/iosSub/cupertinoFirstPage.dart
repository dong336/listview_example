import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../animalItem.dart';

class CupertinoFirstPage extends StatelessWidget {
  final List<Animal> animalList;

  const CupertinoFirstPage({super.key, required this.animalList});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('동물 리스트'),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(5),
            height: 100,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(
                      animalList[index].imagePath!,
                      fit: BoxFit.contain,
                      width: 80,
                      height: 80,
                    ),
                    Text(animalList[index].animalName!)
                  ],
                ),
                Container(
                  height: 2,
                  color: CupertinoColors.black,
                )
              ],
            ),
          );
        },
        itemCount: animalList.length,
      ),
    );
  }

}