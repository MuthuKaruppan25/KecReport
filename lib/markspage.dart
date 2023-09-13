import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'main.dart';





class Neww extends StatelessWidget {
  final String card;
  final String card2;
  List<dynamic> nn;
   Neww({Key? key,required this.card,required this.card2,required this.nn}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(60),
          ),),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child:Container(
            height: 150,
            decoration:BoxDecoration(
              color: Color.fromARGB(255, 7, 19, 95 ),
              borderRadius: BorderRadius.only(

                topLeft: Radius.zero,
                topRight: Radius.zero,
                bottomLeft: Radius.zero,
                bottomRight: Radius.circular(50.0),
              ),
            ) ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Center(child: Text("My Report for ${card.toLowerCase()}",style: GoogleFonts.aclonica(textStyle: TextStyle(color: Color.fromARGB(255, 7, 19, 95 ),fontWeight: FontWeight.w900)),)),
                  ),
                ),
              ],
            ),
          ) ,
        ),
        backgroundColor: Color.fromARGB(255, 7, 19, 95 ),
        centerTitle: true,

        leading: Column(
          children: [
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 27,
                ),
                onPressed: () {

                  Navigator.of(context).pop();

                })

          ],
        ),
        actions: [

        ],
      ),

      body:(card.toLowerCase()!="sem")? SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),

            Container(
              child: StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance.collection("21CSE").doc(bo.get("pass")).collection(card2.toString()).doc(card.toString()).snapshots(),


                builder: (context, AsyncSnapshot snapshot) {
                  List<String> ni=["Python","Database Management\nSystem","Operating System","Probability and Statistics","Web Technology","Design and Analysis\nof Algorithms","Python laboratory","Database Management\nSystem laboratory","Two credit course","Professional Skill\nTraining"];
                  if(snapshot.hasError)
                  {
                    return Text("${snapshot.error}");
                  }
                  else
                  {
                    if(snapshot.hasData) {
                      Map<String,dynamic> vv=snapshot.data.data();

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: vv.length,
                          itemBuilder: (BuildContext context, index){
                            return Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  height: 200,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${ni[index]}",
                                                style:GoogleFonts.poppins(textStyle:TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24
                                                ) ) ,
                                              ),
                                              SizedBox(height: 17,),
                                              Text(
                                                "scored   ${vv[nn[index]]}/100",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  fontWeight: FontWeight.w700
                                                ),
                                              ),
                                            ],
                                          ),


                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ):SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),

            Container(
              child: StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance.collection("21CSE").doc(bo.get("pass")).collection(card2.toString()).doc(card.toString()).snapshots(),


                builder: (context, AsyncSnapshot snapshot) {
                  List<String> ni=["CGPA","GPA","Python","Database Management\nSystem","Operating System","Probability and Statistics","Web Technology","Design and Analysis\nof Algorithms","Python laboratory","Database Management\nSystem laboratory","Two credit course","Professional Skill\nTraining"];

                  if(snapshot.hasError)
                  {
                    return Text("${snapshot.error}");
                  }
                  else
                  {
                    if(snapshot.hasData) {
                      Map<String,dynamic> vv=snapshot.data.data();

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: ni.length,
                          itemBuilder: (BuildContext context, index){
                            if(index>=2)
                            return Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  height: 200,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${ni[index]}",
                                                style:GoogleFonts.poppins(textStyle:TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24
                                                ) ) ,
                                              ),
                                              SizedBox(height: 17,),
                                              Text(
                                                "Grade   ${vv[nn[index]]}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700
                                                ),
                                              ),
                                            ],
                                          ),


                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            );
                            else
                              return Column(
                                children: [
                                  SizedBox(height: 15,),
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    height: 200,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple[900],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${ni[index]}",
                                                  style:GoogleFonts.poppins(textStyle:TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 24
                                                  ) ) ,
                                                ),
                                                SizedBox(height: 17,),
                                                Text(
                                                  "Score   ${vv[nn[index]]}",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w700
                                                  ),
                                                ),
                                              ],
                                            ),


                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              );
                          },
                        ),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

