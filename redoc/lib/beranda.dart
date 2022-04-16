import 'package:flutter/material.dart';
import 'utama.dart';
import 'akun.dart';
import 'pesan.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 7
  int _selectedIndex = 1;

// 8
  static List<Widget> pages = <Widget>[
    const Akun(),
    const Utama(),
    const Pesan(),
  ];

// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_selectedIndex],
        // 4
        bottomNavigationBar: Container(
            height: 60,
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                selectedFontSize: 10.0,
                unselectedFontSize: 10.0,
                unselectedItemColor: Color(0xffffffff),
                selectedItemColor: Color(0xff2C6D72),
                backgroundColor: Color(0xff17B3AC),
                currentIndex: _selectedIndex,
// 11
                onTap: _onItemTapped,
                // 6
                items: <BottomNavigationBarItem>[
                  const BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/user.png'),
                    ),
                    label: 'Akun',
                  ),
                  const BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/homelogo.png'),
                    ),
                    label: 'Beranda',
                  ),
                  const BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/pesan.png'),
                    ),
                    label: 'Pesan',
                  ),
                ],
              ),
            )));
  }
}