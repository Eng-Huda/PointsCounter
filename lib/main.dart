
import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
   PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
   int teamA_Points=0;

   int teamB_Points=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text("Points Counter",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
            backgroundColor: Colors.amber),
        body: Column(
          children: [
            const SizedBox(height:32 ,),
  //   IntrinsicHeight(  child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
            Column(
              children: [
                Text("Team A",
                  style:TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold

                  ),),
                Text('$teamA_Points',
                  style:TextStyle(
                      fontSize: 120,

                  ),),

                  ElevatedButton(onPressed: (){
                    teamA_Points++;
                    setState(() {

                    });
                  },
                    child: Text("Add 1 Point", style:TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.bold

                    )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.amber ,
                        minimumSize: Size(150, 50)
                    ),),

                const SizedBox(height: 16,),
                  ElevatedButton(onPressed: (){
                    teamA_Points+=2;
                    setState(() {

                    });},
                    child: Text("Add 2 Point", style:TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.bold

                    )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.amber ,
                        minimumSize: Size(150, 50)
                    ),),
                const SizedBox(height: 16,),
                  ElevatedButton(onPressed: (){
                    teamA_Points+=3;
                    setState(() {

                    });},
                    child: Text("Add 3 Point", style:TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.bold

                    )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.amber ,
                        minimumSize: Size(150, 50)
                    ),),


              ],
            ),
            const SizedBox(height: 420,
             child: VerticalDivider(
              color: Colors.grey,
              thickness: 2,
              // width: 15,//t
              // indent: 20,// hickn
              // endIndent: 20,// ess of divier line
            ),),
            Column(
              children: [
                Text("Team B",
                  style:TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold

                  ),),
                Text('$teamB_Points',
                  style:TextStyle(
                      fontSize: 120,

                  ),),

                  ElevatedButton(onPressed: (){
                    teamB_Points++;
                    setState(() {

                    });
                  },
                    child: Text("Add 1 Point", style:TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.bold

                    )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.amber ,
                        minimumSize: Size(150, 50)
                    ),),
                  const SizedBox(height: 16,),
                  ElevatedButton(onPressed: (){
                    teamB_Points+=2;
                    setState(() {

                    });
                  },
                    child: Text("Add 2 Point", style:TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.bold

                    )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.amber ,
                        minimumSize: Size(150, 50)
                    ),),
                  const SizedBox(height: 16,),
                  ElevatedButton(onPressed: (){
                    teamB_Points+=3;
                    setState(() {

                    });
                  },
                    child: Text("Add 3 Point", style:TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.bold

                    )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.amber ,
                        minimumSize: Size(150, 50)
                    ),),

              ],
            ),
          ],),
//),
       const Spacer(flex: 1,),
        ElevatedButton(onPressed: (){
          teamA_Points=0;
          teamB_Points=0;
          setState(() {

          });
        },
              child: Text("Reset", style:TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                  fontWeight: FontWeight.bold

              )),
              style: ElevatedButton.styleFrom(
                  backgroundColor:Colors.amber ,
                  minimumSize: Size(150, 50)
              ),),
            const Spacer(flex: 1,),
        ],),
      ),
    );
  }
}
