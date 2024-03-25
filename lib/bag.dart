import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bag extends StatefulWidget {
  const bag({super.key});

  @override
  State<bag> createState() => _bagState();
}

class _bagState extends State<bag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 210, 205),
        toolbarHeight: 100,
        centerTitle: true,
        leading: Text(""),
        title: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Bag"),
                
              ],
            ),Padding(
              padding: const EdgeInsets.only(left: 240),
              child: Icon(Icons.favorite_outline_sharp),
            ),
                Padding(
                  padding: const EdgeInsets.only(left: 280),
                  child: Image.asset("images/bag2.png"),
                ),
          ],
        ),
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            
            SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "images/dress4scnd.png",
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Text("you may also like",style: TextStyle(fontSize: 14,color: Colors.black54),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 280,top: 20),
                      child: Image.asset("images/anglebracket.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
                      child: Image.asset("images/blurreddresses.png",width: 400,fit: BoxFit.fill),
                    ),
                  ],
                ),
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 270, 0, 0),
              child: Image.asset("images/oblonbagtext.png"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(55,370,0,0),
              child: Image.asset("images/anglebracket.png"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(280,330,0,0),
              child: Image.asset("images/addmore.png"),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(child:Row(
        children: [
          IconButton(onPressed: (){}, icon: Icon (Icons.search_outlined)),
          SizedBox(width: 50,),
          IconButton(onPressed: (){}, icon: Icon(Icons.bookmark)),
          SizedBox(width: 50,),
          IconButton(onPressed: (){}, icon: Image.asset("images/home.png",color: Colors.black54,)),
          SizedBox(width: 50,),
          IconButton(onPressed: (){}, icon: Icon(Icons.person_outline))
        ],
      ) ,),
    );
  }
}
