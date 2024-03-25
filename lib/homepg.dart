import 'package:fashion_ui_design/newproducts.dart';
import 'package:flutter/material.dart';

class homepg extends StatefulWidget {
  const homepg({super.key});

  @override
  State<homepg> createState() => _homepgState();
}

class _homepgState extends State<homepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children:[ Image.asset("images/girl1.png",height: double.infinity,
      width: double.infinity,
       fit: BoxFit.fitWidth,),
       SizedBox(child: Image.asset("images/girlblurred.png",width: 200,fit: BoxFit.fitWidth,)),
       Padding(
         padding: const EdgeInsets.only(left: 15),
         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 90),
               child: Text("OUR FASHION",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
             ),
             SizedBox(height:200 ,),
             Container(height: 100,
             width: 170,
             child: Text("shop the most modern essentials",style: 
             TextStyle(fontSize: 24,fontWeight:FontWeight.w700),),
             
             ),
             SizedBox(height: 10,),
             Icon(Icons.arrow_forward),
             SizedBox(height: 40,),
             Row(
               children: [
                 CircleAvatar(backgroundImage: AssetImage("images/fbicon (1).png"),radius: 15,),
                 SizedBox(width: 10,),
                 CircleAvatar(backgroundImage: AssetImage("images/twitter.png",),radius: 15,),
                 SizedBox(width: 10,),
                 CircleAvatar(backgroundImage: AssetImage("images/googleicon.png"),radius: 15,)
               ],
             )
             
             
           ],
         ),
       ),

       Padding(
         padding: const EdgeInsets.fromLTRB(320,75,0,0),
         child: TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>newprdcts() ,));
         }, child: Text("Skip",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),)),
       )]
       ),
      
    );
  }
}