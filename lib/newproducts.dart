import 'package:fashion_ui_design/oblonbag.dart';
import 'package:flutter/material.dart';

class newprdcts extends StatefulWidget {
  const newprdcts({super.key});

  @override
  State<newprdcts> createState() => _newprdctsState();
}

class _newprdctsState extends State<newprdcts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Center(
                child: Text(
              "New Products",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [SizedBox(width: 10,),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "All",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )),
                    SizedBox(width: 5,),
                TextButton(
                    onPressed: () {},
                    child: Text("Apparel",
                        style: TextStyle(fontSize: 16, color: Colors.black26))),
                        SizedBox(width: 5,),
                TextButton(
                    onPressed: () {},
                    child: Text("Dress",
                        style: TextStyle(fontSize: 16, color: Colors.black26))),
                        SizedBox(width: 5,),
                TextButton(
                    onPressed: () {},
                    child: Text("T Shirt",
                        style: TextStyle(fontSize: 16, color: Colors.black26))),
                        SizedBox(width: 5,),
                TextButton(
                    onPressed: () {},
                    child: Text("Bag",
                        style: TextStyle(fontSize: 16, color: Colors.black26)))
              ],
            ),
            SizedBox(width: double.infinity,height: 500,
              
                child: GridView.builder(
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 30,mainAxisExtent: 310),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children:[ Card(child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(images[index],width: 270,),
                          SizedBox(height: 10,),
                          Text(data[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500 ),textAlign:TextAlign.center ,),
                          Text(subtext[index],style: TextStyle(fontWeight: FontWeight.w800),)
                        ],
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 25),
                        child: CircleAvatar(backgroundImage: AssetImage("images/new.png"),radius: 15,),
                      )
                      ]
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 120,top: 30),
                child: Row(
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context) =>oblonbag() ,));
                    }, child: Text("Explore More",style:
                     TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
                     Icon(Icons.arrow_forward)
                  ],
                ),
              )
            
          ],
        ),
      ),
    );
  }
}

List images = [
  "images/dress1.png",
  "images/dress2.png",
  "images/dress3.png",
  "images/dress4.png",
];
List data=[
  "21WN reversible angora cardigan",
  "21WN reversible angora cardigan",
  "21WN reversible angora cardigan",
  "Oblon bag"
];

List subtext=[
  "\$120",
  "\$120",
   "\$120",
    "\$120",
  


];
