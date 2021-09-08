import 'package:flutter/material.dart';
import 'package:lol_duo_app/repository/lol_repository.dart';
import 'package:lol_duo_app/repository/lol_respository2.dart';
import 'package:lol_duo_app/repository/riotDragon_repository.dart';

// ignore: must_be_immutable
class Explore extends StatelessWidget {

  @override


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child:FlatButton(onPressed: () async {
          print(await lol_repository2().freeChampion());
        }, child: Container(
          color: Colors.black,
        ),)
      ),
    );
  }
}
