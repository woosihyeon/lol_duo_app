import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lol_duo_app/controller/app_controller.dart';
import 'package:lol_duo_app/pages/duo.dart';
import 'package:lol_duo_app/pages/explore.dart';
import 'package:lol_duo_app/pages/home.dart';
import 'package:lol_duo_app/pages/profile.dart';

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);

  Widget _appbarWidget() {
    return AppBar(
      shape: Border(bottom: BorderSide(color: Colors.black, width: 2)),
      backgroundColor: HexColor('#27282D'),
      title: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          'LOL-DUO',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      elevation: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: _appbarWidget(),
      ),
      body: Obx(
        () {
          switch(RouteName.values[controller.currentIndex.value]) {
            case RouteName.Home:
              return Home();
              break;
            case RouteName.Explore:
            return Explore();
              break;
            case RouteName.Duo:
            return Duo();
              break;
            case RouteName.Profile:
            return Profile();
              break;
          }
          return Container();
        },
      ),
      bottomNavigationBar:Obx(()=> BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.currentIndex.value,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        onTap: controller.currentIndex,
        backgroundColor:HexColor('#27282D') ,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/icons/home_off.svg'),
            activeIcon: SvgPicture.asset('assets/svg/icons/home_on.svg'),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/icons/compass_off.svg',
              width: 22,
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/icons/compass_on.svg',
              width: 22,
            ),
            label: '탐색',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/icons/friend_off.svg',
              width: 22,
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/icons/friend_on.svg',
              width: 22,
            ),
            label: '듀오',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/icons/user_off.svg',
              width: 22,
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/icons/user_on.svg',
              width: 22,
            ),
            label: '내 정보',
          ),
        ],
      ),
      ));
  }
}
