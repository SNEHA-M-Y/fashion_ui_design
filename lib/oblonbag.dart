import 'package:fashion_ui_design/bag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class oblonbag extends StatefulWidget {
  const oblonbag({super.key});

  @override
  State<oblonbag> createState() => _oblonbagState();
}

class _oblonbagState extends State<oblonbag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(toolbarHeight: 100,
    centerTitle: true,
    title:  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
            Text(
              "Oblon bag",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 50,
            ),
            Icon(Icons.favorite_border_rounded),
            SizedBox(
              width: 20,
            ),
            Stack(children: [
              Image.asset("images/bag.png"),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Image.asset("images/reddot.png"),
              )
            ])
                              ],
                            ),),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
           
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Stack(
                children: [
                  Image.asset("images/dress4scnd.png"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(220, 370, 0, 0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/favourite.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 360, 0, 0),
                    child: Image.asset("images/dollar.png"),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Container(
                height: 50,width: 300,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      offset: Offset(
                        0,
                        1,
                      ),
                      spreadRadius: 1,color: Colors.black12)
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Color"),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("images/ticsign.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("images/whitedot.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("images/orangedot.png"),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 30,left: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Size"),
                  SizedBox(width: 5,),
                  CircleAvatar(backgroundImage: AssetImage("images/qnmark.png"),radius: 8,),
                  SizedBox(width: 40,),
                  Text("XS"),
                  SizedBox(width: 20,),
                  Text("S"),
                  SizedBox(width: 20,),
                  CircleAvatar(backgroundImage: AssetImage("images/medium.png"),radius: 15,),
                  SizedBox(width: 20,),
                  Text("L"),
                  SizedBox(width: 20,),
                  Text("XL")
                ],
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => bag(),));
            }, child: Image.asset("images/addtocart.png"),)
          ],
        ),
      ),
    );
  }
}
