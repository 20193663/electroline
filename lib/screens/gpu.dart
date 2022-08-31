import 'package:electroline/drawer.dart';
import 'package:electroline/bottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:electroline/models/product.dart';
import 'package:electroline/models/item_card.dart';

class gpu extends StatefulWidget {
 const gpu({Key? key}) : super(key: key);

  @override
  State<gpu> createState() => gpuState();
}

class gpuState extends State<gpu> {
  int _index = 3;

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            title: Text('GPU',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'GreatVibes',
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
            backgroundColor: Colors.red[900],
          ),
          drawer: appdrawer(),
          body: Center(
            child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GridView.builder(
                            itemCount: products.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20,
                              childAspectRatio: 0.75,
                            ),
                            itemBuilder: (context, index) => ItemCard(
                              product: products[index],
                              press: () {
                                }

                            )),
                      ),
                    ),
                  ],

                ),
              ),
            ),
          bottomNavigationBar: bottomBar(Cindex: _index, context: context),
        ));
  }
}
