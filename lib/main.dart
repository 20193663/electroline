import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  "images/built.png",
  "images/case.jpg",
  "images/graph.jpg",
  "images/mother.jpg"
]; //fore slide images

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 100, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Welcome to ElectroLine!',
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.red[900],
      ),
      drawer: Drawer(
        width: 200,
        backgroundColor: Colors.black,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Text(
              "Build your dream PC :)",
              style: TextStyle(color: Colors.red[900], fontSize: 30),
            )),
            ListTile(
              title: Text(
                'Graphics Card',
                style: TextStyle(color: Colors.red[900]),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.red[900]),
            ),
            ListTile(
              title: Text(
                'CPUs',
                style: TextStyle(color: Colors.red[900]),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.red[900]),
            ),
            ListTile(
              title: Text(
                'Motherboards',
                style: TextStyle(color: Colors.red[900]),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.red[900]),
            ),
            ListTile(
              title: Text(
                'Meomery',
                style: TextStyle(color: Colors.red[900]),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.red[900]),
            ),
            ListTile(
              title: Text(
                'Power supplies',
                style: TextStyle(color: Colors.red[900]),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.red[900]),
            ),
            ListTile(
              title: Text(
                'Cases',
                style: TextStyle(color: Colors.red[900]),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.red[900]),
            ),
            ListTile(
              title: Text(
                'Fans & Cooling Components',
                style: TextStyle(color: Colors.red[900]),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.red[900]),
            ),
            ListTile(
              title: Text(
                'Accesories',
                style: TextStyle(color: Colors.red[900]),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.red[900]),
            )
          ],
        ),
      ),
      body: DefaultTabController(

          length: 3,
          child: Column(children: <Widget>[
            TabBar(
                labelColor: Colors.red[900],
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.red[900],
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Deals",
                  ),
                  Tab(
                    text: "Contact Us",
                  ),
                ]),
            /*Container(
                child: CarouselSlider(
              options: CarouselOptions(
                autoPlayCurve: Curves.easeOutQuad,
                enableInfiniteScroll: true,
                aspectRatio: 1.6,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
              ),
              items: imageSliders,
            )),*/

            Stack(
              children: <Widget>[
            ListView(

              shrinkWrap: true,
              children:<Widget> [

                Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlayCurve: Curves.easeOutQuad,
                        enableInfiniteScroll: true,
                        aspectRatio: 1.6,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                      ),
                      items: imageSliders,
                    )),

                  Row(children: <Widget>[
                  Container(
                    width: 180,
                    height: 180,
                    //margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      color: Colors.black,
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            child: Image(image: AssetImage('images/built.png')),
                          ),
                          Container(
                            color: Colors.black,
                            child: Center(
                              child: Text("GPU",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: "Times",
                                    color: Colors.red[900],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 180,
                    //margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      color: Colors.black,
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            child: Image(image: AssetImage('images/built.png')),
                          ),
                          Container(
                            color: Colors.black,
                            child: Center(
                              child: Text("GPU",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: "Times",
                                    color: Colors.red[900],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
                  Row(children: <Widget>[
                    Container(
                      width: 180,
                      height: 180,
                      //margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              child: Image(image: AssetImage('images/built.png')),
                            ),
                            Container(
                              color: Colors.black,
                              child: Center(
                                child: Text("GPU",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: "Times",
                                      color: Colors.red[900],
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 180,
                      //margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              child: Image(image: AssetImage('images/built.png')),
                            ),
                            Container(
                              color: Colors.black,
                              child: Center(
                                child: Text("GPU",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: "Times",
                                      color: Colors.red[900],
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),

                ],)


              ],
            )
          ]) // This trailing comma makes auto-formatting nicer for build methods.
          ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'User', icon: Icon(Icons.person_outline)),
          BottomNavigationBarItem(
              label: 'Cart', icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.settings))
        ],
        currentIndex: _index,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.red[900],
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
