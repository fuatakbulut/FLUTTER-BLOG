import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //ekranımın genel boyutları

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(onPressed: (){}, icon: Image.asset("resimler/menu.png")),

        ),
      ),

      body: Column(
          children: [
            Container(
              height: size.height*0.2, //ekranımın en fazla yüzde 20'si
              child: Stack(

                children: <Widget>[
                  Container(
                    height: size.height*0.2 - 27,
                    decoration: BoxDecoration(color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),

                    ),
                    ),
                    child: Row(
                      children: <Widget> [
                        Padding(
                          padding: const EdgeInsets.only(left: 36.0, bottom: 45.0, right: 36.0),
                          child: Text(
                      "BLOGX", style: TextStyle(fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold
                          ),
                          ),
                        ),


                      ],
                    ),


                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric( vertical: 16.0,  horizontal: 16.0),
                    height: 54,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0,10),
                            blurRadius: 50,
                            color: Colors.black.withOpacity((0.23)),
                          )
                        ],
                    ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(


                          decoration: InputDecoration(

                            hintText: "Metin Ara",
                            hintStyle: TextStyle(color: Colors.blue.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon:
                              IconButton(onPressed: (){}, icon: Image.asset("resimler/search.png")),


                      ),
                        ),
                      ),




                    ),

                  ),

                ] ,

              ),
         ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, bottom: 10),
                      width: 150,
                      height: 150,
                      child: ElevatedButton(onPressed: (){},
                        child:
                        Text("Teknoloji", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight:FontWeight.bold),),), //
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10),),
                        boxShadow: [ BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: Offset(0, 3),),],),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(right: 10, bottom: 10),
                      width: 150,
                      height: 150,
                      child: ElevatedButton(onPressed: (){}, child: Text("Bilim", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight:FontWeight.bold),),),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10),),
                        boxShadow: [ BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: Offset(0, 3),),],

                      ),
                    ),
                  ),

                ],

              ),
            ),
            Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                width: 150,
                height: 150,
                child: ElevatedButton(onPressed: (){}, child: Text("Yazılım", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight:FontWeight.bold),),),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10),),
                  boxShadow: [ BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: Offset(0, 3),),],

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(right: 10, bottom: 10),
                width: 150,
                height: 150,
                child: ElevatedButton(onPressed: (){}, child: Text("Sanat", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight:FontWeight.bold),),),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10),),
                  boxShadow: [ BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: Offset(0, 3),),],

                ),
              ),
            ),

          ],

        ),
      ),

          ],),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0,-10),
              blurRadius: 35,
              color: Colors.lightBlue.withOpacity(0.38),
            ),

          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            IconButton(onPressed: (){}, icon: Image.asset("resimler/home.png")),
            IconButton(onPressed: (){}, icon: Image.asset("resimler/compass.png")),
            IconButton(onPressed: (){}, icon: Image.asset("resimler/user.png")),
          ],
        ),
      ),



        );



            

        


  }
}
