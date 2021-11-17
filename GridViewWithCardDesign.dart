import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  _GridPageState createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {

  final List threelist = [
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
    'assets/k1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        elevation: 0,
      ),
      body: SafeArea(child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(image: const AssetImage('assets/k1.jpg'),
              ),
            ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.white.withOpacity(0.6),
                    Colors.black.withOpacity(0.3),
                  ],
                  begin: Alignment.center,
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Text("Quick Shopping !",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.lightGreen),),
                     SizedBox(height: 10,),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child:  Text("Buy Now"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: GridView.count(crossAxisCount: 4,
             mainAxisSpacing: 10,
             crossAxisSpacing: 10,
             padding: EdgeInsets.all(20),
             children: threelist.map((e) => Card(
               child:  Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   image: DecorationImage(image: AssetImage(e)),
                 ),
                 child: Transform.translate(offset: Offset(75, -75),
                 child: Container(
                   margin: EdgeInsets.symmetric(horizontal: 100,vertical: 100),
                   child: Icon(Icons.money_off,color: Colors.pink,),
                 ),
                 ),
               ),
             )).toList(),
            ))
          ],
        ),
      )),
    );
  }
}
