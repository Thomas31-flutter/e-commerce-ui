import 'package:e_commerce/screens/profilepage.dart';
import 'package:e_commerce/screens/settingpage.dart';
import 'package:flutter/material.dart';

String username='';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List categories = [
    {'iconname': Icons.headphones, 'title': "headphones"},
    {'iconname': Icons.watch, 'title': "watch"},
    {'iconname': Icons.tv, 'title': "TV"},
    {'iconname': Icons.camera, 'title': "camera"},
    {'iconname': Icons.electric_car, 'title': "car"}
  ];

  List items = [
    {
      'image': 'images/61nuJiJelML._AC_UF894,1000_QL80_.jpg',
      'title': "headphones",
      'subtitle': 'for selling',
      'price': "350\$"
    },
    {
      'image': 'images/vivo-mobile-phone.jpg',
      'title': "mobile",
      'subtitle': 'for selling',
      'price': "400\$"
    },
    {
      'image': 'images/81+d6eSA0eL._AC_UY1000_.jpg',
      'title': "watch",
      'subtitle': 'for selling',
      'price': "500\$"
    },
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 17,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,

        currentIndex: selectedIndex,
        onTap: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfilePage();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.person),
              ),
              label: 'profile'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SettingsApp();
                    },),
                  );
                },
                icon: Icon(Icons.settings),
              ),
              label: 'settings'),
        ],
      ),
      appBar: AppBar(
        title: Text("E-commerce ui"),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        height: 720,
        width: 700,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome ',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  username,
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey[350], shape: BoxShape.circle),
                          child: Icon(
                            categories[index]['iconname'],
                            size: 40,
                          ),
                        ),
                        Text(
                          categories[index]['title'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              child: Text(
                'Best Selling',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        color: Colors.grey[400],
                        child: Image.asset(items[index]['image'],
                            height: 140, fit: BoxFit.fill),
                      ),
                      Text(
                        items[index]['title'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        items[index]['subtitle'],
                      ),
                      Text(
                        items[index]['price'],
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ],
                  ),
                );
              },
              itemCount: items.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
