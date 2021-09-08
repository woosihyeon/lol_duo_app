import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lol_duo_app/models/champion.dart';
import 'package:lol_duo_app/repository/riotDragon_repository.dart';

class Duo extends StatefulWidget {
  Duo({Key? key}) : super(key: key);

  @override
  _DuoState createState() => _DuoState();
}

class _DuoState extends State<Duo> {
  Server server = Server();
  late int _current;

  int? idtokey(int chamionskey) {
    switch (chamionskey) {
      case 266:
        return 0;
        break;
      case 103:
        return 1;
        break;
      case 84:
        return 2;
        break;
      case 166:
        return 3;
        break;
      case 12:
        return 4;
        break;
      case 32:
        return 5;
        break;
      case 34:
        return 6;
        break;
      case 1:
        return 7;
        break;
      case 523:
        return 8;
        break;
      case 22:
        return 9;
        break;
      case 136:
        return 10;
        break;
      case 268:
        return 11;
        break;
      case 432:
        return 12;
        break;
      case 53:
        return 13;
        break;
      case 63:
        return 14;
        break;
      case 201:
        return 15;
        break;
      case 51:
        return 16;
        break;
      case 164:
        return 17;
        break;
      case 69:
        return 18;
        break;
      case 31:
        return 19;
        break;
      case 42:
        return 20;
        break;
      case 122:
        return 21;
        break;
      case 131:
        return 22;
        break;
      case 119:
        return 23;
        break;
      case 36:
        return 24;
        break;
      case 245:
        return 25;
        break;
      case 60:
        return 26;
        break;
      case 28:
        return 27;
        break;
      case 81:
        return 28;
        break;
      case 9:
        return 29;
        break;
      case 114:
        return 30;
        break;
      case 105:
        return 31;
        break;
      case 3:
        return 32;
        break;
      case 41:
        return 33;
        break;
      case 86:
        return 34;
        break;
      case 150:
        return 35;
        break;
      case 79:
        return 36;
        break;
      case 104:
        return 37;
        break;
      case 887:
        return 38;
        break;
      case 120:
        return 39;
        break;
      case 74:
        return 40;
        break;
      case 420:
        return 41;
        break;
      case 39:
        return 42;
        break;
      case 427:
        return 43;
        break;
      case 40:
        return 44;
        break;
      case 59:
        return 45;
        break;
      case 24:
        return 46;
        break;
      case 126:
        return 47;
        break;
      case 202:
        return 48;
        break;
      case 222:
        return 49;
        break;
      case 145:
        return 50;
        break;
      case 429:
        return 51;
        break;
      case 43:
        return 52;
        break;
      case 30:
        return 53;
        break;
      case 38:
        return 54;
        break;
      case 55:
        return 55;
        break;
      case 10:
        return 56;
        break;
      case 141:
        return 57;
        break;
      case 85:
        return 58;
        break;
      case 121:
        return 59;
        break;
      case 203:
        return 60;
        break;
      case 240:
        return 61;
        break;
      case 96:
        return 62;
        break;
      case 7:
        return 63;
        break;
      case 64:
        return 64;
        break;
      case 89:
        return 65;
        break;
      case 876:
        return 66;
        break;
      case 127:
        return 67;
        break;
      case 236:
        return 68;
        break;
      case 117:
        return 69;
        break;
      case 99:
        return 70;
        break;
      case 54:
        return 71;
        break;
      case 90:
        return 72;
        break;
      case 57:
        return 73;
        break;
      case 11:
        return 74;
        break;
      case 21:
        return 75;
        break;
      case 62:
        return 76;
        break;
      case 82:
        return 77;
        break;
      case 25:
        return 78;
        break;
      case 267:
        return 79;
        break;
      case 75:
        return 80;
        break;
      case 111:
        return 81;
        break;
      case 518:
        return 82;
        break;
      case 76:
        return 83;
        break;
      case 56:
        return 84;
        break;
      case 20:
        return 85;
        break;
      case 2:
        return 86;
        break;
      case 61:
        return 87;
        break;
      case 516:
        return 88;
        break;
      case 80:
        return 89;
        break;
      case 78:
        return 90;
        break;
      case 555:
        return 91;
        break;
      case 246:
        return 92;
        break;
      case 133:
        return 93;
        break;
      case 497:
        return 94;
        break;
      case 33:
        return 95;
        break;
      case 421:
        return 96;
        break;
      case 526:
        return 97;
        break;
      case 58:
        return 98;
        break;
      case 107:
        return 99;
        break;
      case 92:
        return 100;
        break;
      case 68:
        return 101;
        break;
      case 13:
        return 102;
        break;
      case 360:
        return 103;
        break;
      case 113:
        return 104;
        break;
      case 235:
        return 105;
        break;
      case 147:
        return 106;
        break;
      case 875:
        return 107;
        break;
      case 35:
        return 108;
        break;
      case 98:
        return 109;
        break;
      case 102:
        return 110;
        break;
      case 27:
        return 111;
        break;
      case 14:
        return 112;
        break;
      case 15:
        return 113;
        break;
      case 72:
        return 114;
        break;
      case 37:
        return 115;
        break;
      case 16:
        return 116;
        break;
      case 50:
        return 117;
        break;
      case 517:
        return 118;
        break;
      case 134:
        return 119;
        break;
      case 223:
        return 120;
        break;
      case 163:
        return 121;
        break;
      case 91:
        return 122;
        break;
      case 44:
        return 123;
        break;
      case 17:
        return 124;
        break;
      case 412:
        return 125;
        break;
      case 18:
        return 126;
        break;
      case 48:
        return 127;
        break;
      case 23:
        return 128;
        break;
      case 4:
        return 129;
        break;
      case 29:
        return 130;
        break;
      case 77:
        return 131;
        break;
      case 6:
        return 132;
        break;
      case 110:
        return 133;
        break;
      case 67:
        return 134;
        break;
      case 45:
        return 135;
        break;
      case 161:
        return 136;
        break;
      case 254:
        return 137;
        break;
      case 234:
        return 138;
        break;
      case 112:
        return 139;
        break;
      case 8:
        return 140;
        break;
      case 106:
        return 141;
        break;
      case 19:
        return 142;
        break;
      case 498:
        return 143;
        break;
      case 101:
        return 144;
        break;
      case 5:
        return 145;
        break;
      case 157:
        return 146;
        break;
      case 777:
        return 147;
        break;
      case 83:
        return 148;
        break;
      case 350:
        return 149;
        break;
      case 154:
        return 150;
        break;
      case 238:
        return 151;
        break;
      case 115:
        return 152;
        break;
      case 26:
        return 153;
        break;
      case 142:
        return 154;
        break;
      case 143:
        return 155;
        break;
    }
    return null;
  }
  // champion id to key ex champion0 = Atraox
  double headertopzone =
      Get.mediaQuery.padding.top + AppBar().preferredSize.height;




  Widget rotationchamption(dynamic championsId, dynamic championsname) {
    return Column(
      children: [
        CachedNetworkImage(
          width: MediaQuery.of(context).size.width - 275,
          height: 100,
          imageUrl:
              'https://ddragon.leagueoflegends.com/cdn/$version/img/champion/$championsId.png',
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        Text(
          '$championsname',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
  // rotationchampion slider
  Widget _makeSliderImage(List<Champion> data) {
    List<Champion> champions = data;
    _current = 0;

    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Center(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 3),
                color: Colors.transparent,
              ),
              child: CarouselSlider(
                items: [
                  rotationchamption(champions[idtokey(3)!.toInt()].id,
                      champions[idtokey(3)!.toInt()].name),
                  rotationchamption(champions[idtokey(24)!.toInt()].id,
                      champions[idtokey(24)!.toInt()].name),
                  rotationchamption(champions[idtokey(50)!.toInt()].id,
                      champions[idtokey(50)!.toInt()].name),
                  rotationchamption(champions[idtokey(64)!.toInt()].id,
                      champions[idtokey(64)!.toInt()].name),
                  rotationchamption(champions[idtokey(67)!.toInt()].id,
                      champions[idtokey(67)!.toInt()].name),
                  rotationchamption(champions[idtokey(68)!.toInt()].id,
                      champions[idtokey(68)!.toInt()].name),
                  rotationchamption(champions[idtokey(75)!.toInt()].id,
                      champions[idtokey(75)!.toInt()].name),
                  rotationchamption(champions[idtokey(78)!.toInt()].id,
                      champions[idtokey(78)!.toInt()].name),
                  rotationchamption(champions[idtokey(89)!.toInt()].id,
                      champions[idtokey(89)!.toInt()].name),
                  rotationchamption(champions[idtokey(90)!.toInt()].id,
                      champions[idtokey(90)!.toInt()].name),
                  rotationchamption(champions[idtokey(141)!.toInt()].id,
                      champions[idtokey(141)!.toInt()].name),
                  rotationchamption(champions[idtokey(163)!.toInt()].id,
                      champions[idtokey(163)!.toInt()].name),
                  rotationchamption(champions[idtokey(246)!.toInt()].id,
                      champions[idtokey(246)!.toInt()].name),
                  rotationchamption(champions[idtokey(432)!.toInt()].id,
                      champions[idtokey(432)!.toInt()].name),
                  rotationchamption(champions[idtokey(498)!.toInt()].id,
                      champions[idtokey(498)!.toInt()].name),
                ],
                options: CarouselOptions(
                    height: 150,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.37,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // lol pro league match item
  Widget playlist(String matchName) {
    return Container(
      child: Column(
        children: [
          Text(
            matchName,
            style: TextStyle(color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              width: MediaQuery.of(context).size.width - 265,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 3),
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Text(
                        'SKT : HLE',
                        style: TextStyle(
                          color: HexColor('#45E0BE'),
                        ),
                      ),
                      //
                      Row(
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/fc/T1logo_std.png/revision/latest/scale-to-width-down/60?cb=20191128095812',
                            width: 50,
                            height: 50,
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Icon(Icons.error),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(' :   3',style: TextStyle(
                              color: HexColor('#45E0BE'),
                            ),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                            'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/e/e9/Hanwha_Life_Esportslogo_std.png/revision/latest/scale-to-width-down/60?cb=20191224101102',
                            width: 50,
                            height: 50,
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Icon(Icons.error),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(' :   2',style: TextStyle(
                              color: HexColor('#45E0BE'),
                            ),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _recentmatch() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: CarouselSlider(
        items: [
          playlist('play-off finals (LCK)'),
          playlist('sd'),
        ],
        options: CarouselOptions(
            height: 200,
            enableInfiniteScroll: false,
            initialPage: 0,
            viewportFraction: 1.5,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Server server = Server();

    return FutureBuilder(
      future: server.getChampion(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData == false) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Error : ${snapshot.error}'),
          );
        }

        return Scaffold(
          body: CustomScrollView(
            controller: ScrollController(),
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: headertopzone - 56),
                        child: Text(
                          '로테이션 챔피언',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    _makeSliderImage(snapshot.data),
                    _recentmatch(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
