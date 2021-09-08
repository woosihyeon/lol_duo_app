import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lol_duo_app/controller/home_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:lol_duo_app/models/champion.dart';
import 'package:lol_duo_app/models/ratation.dart';
import 'package:lol_duo_app/repository/riotDragon_repository.dart';
import 'package:lol_duo_app/repository/lol_repository.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController _controller = Get.put(HomeController());

  Server server = Server();

  late int champion_num;
  late int _current;

  @override




  Widget build(BuildContext context) {
    server.getChampion();
//    return buildGridView();
    return Container();
      // FutureBuilder(
      //   future: server.getChampion(),
      //   builder: (BuildContext context, AsyncSnapshot snapshot) {
      //     //data를 아직 받아오지 못했을때
      //     if (snapshot.hasData == false) {
      //       return CircularProgressIndicator();
      //     }
      //     //error 발생시
      //     else if (snapshot.hasError) {
      //       return Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           'Error: ${snapshot.error}',
      //           style: TextStyle(fontSize: 15),
      //         ),
      //       );
      //     }
      //     //정상적으로 데이터 받아왔을때
      //     else {
      //       return buildGridView(snapshot.data);
      //     }
      //   });
  }

  // GridView buildGridView(List<Champion> data) {
  //   List<Champion> champions = data;
  //   champion_num = champions.length; //받아온 데이터에서 챔피언 개수 반영
  //   return GridView.builder(
  //     itemCount: champion_num,
  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 6,
  //       crossAxisSpacing: 10,
  //       mainAxisSpacing: 10,
  //     ),
  //     itemBuilder: (BuildContext context, int index) {
  //       return GestureDetector(
  //         onTapUp: (TapUpDetails details) {
  //           print(details);
  //         },
  //         onDoubleTap: () {
  //           print("double click");
  //           print("show menu: 탑선호 챔피언/정글선호 챔피언/미드선호 챔피언/원딜선호 챔피언/서폿선호 챔피언");
  //         },
  //         child: Container(
  //           child: Column(
  //             children: [
  //               Expanded(
  //                 child: CachedNetworkImage(
  //                   imageUrl:'https://ddragon.leagueoflegends.com/cdn/$version/img/champion/${champions[index].id}.png',
  //                   placeholder: (context, url) => CircularProgressIndicator(),
  //                   errorWidget: (context, url, error) => Icon(Icons.error),
  //                 ),
  //               ),
  //
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }





  // customScrollView(List<Champion> data){
  //   List<Champion> champions = data;
  //   _current = 0;
  //   return Container(
  //     child: Stack(
  //       children: [
  //         CarouselSlider(
  //           items: [
  //             CachedNetworkImage(imageUrl: 'https://ddragon.leagueoflegends.com/cdn/$version/img/champion/.png',),
  //           ],
  //           options: CarouselOptions(
  //             height: 100,
  //             enableInfiniteScroll: false,
  //             viewportFraction: 1,
  //             initialPage: 0,
  //             onPageChanged: (index,reason){
  //               setState((){
  //                 _current = index;
  //               });
  //             }
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  //
  // }


}
