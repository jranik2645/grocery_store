
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/widgets/BottomBar.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("FOODS"),centerTitle: true,
          actions: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.shopping_cart, size: 30,),
             ),
          ],
      ),

         body: SafeArea(

            child: SingleChildScrollView(
               child: Column(
                   children: [
                      Container(

                        padding: EdgeInsets.all(20),
                        height: 350,
                        width: double.infinity,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                           image: DecorationImage(
                              image: AssetImage(
                                 "images/2.png",
                              )
                           )
                        ),
                          child: InkWell(
                             onTap: (){
                                 Navigator.pop(context);
                             },
                              
                          ),

                      ),
                        Container(
                            //you can change height  according to  your choice//
                          
                            height: MediaQuery.of(context).size.height * 0.4,
                             margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF00A368),
                               borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                               ),
                            ),
                            child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Padding(padding: EdgeInsets.only(
                                   top: 10, bottom: 15
                                 ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                       Text(
                                          "Fruit Title",
                                          style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 28,
                                             fontWeight: FontWeight.bold,
                                          ),
                                       ),
                                       Row(
                                          children: [
                                             Container(
                                               padding: EdgeInsets.all(5),
                                               decoration: BoxDecoration(
                                                 color: Colors.white,
                                                 borderRadius: BorderRadius.circular(20),
                                               ),
                                                 child: Icon(
                                                    CupertinoIcons.minus
                                                 ),
                                             ),
                                              Container(
                                              margin: EdgeInsets.symmetric(horizontal: 10),
                                                child: Text(
                                                   "01",
                                                  style: TextStyle(
                                                     fontSize: 18,
                                                     fontWeight: FontWeight.bold,
                                                     color: Colors.white,
                                                  ),
                                                ),
                                              ),

                                            Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: Icon(
                                                  CupertinoIcons.plus
                                              ),
                                            ),
                                          ],
                                       ),
                                    ],
                                  ),

                                 ),
                                 Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                      Icon(
                                         Icons.star,
                                         color: Colors.amber,

                                      ),
                                      Text(
                                          "4.8(230)",
                                        style: TextStyle(
                                          color: Colors.white,
                                           fontSize: 18
                                        ),
                                      ),
                                   ],
                                 ),
                                  Padding(padding: EdgeInsets.symmetric(vertical: 20),
                                   child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                        Text("Description:",
                                         style: TextStyle(
                                             fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                         ),
                                        ),
                                        SizedBox(height: 10,),
                                        Text(
                                          "This is the description of the product here you can write more descritbion product manuamy cousuem.. so quickely developry boys in the world ",
                                           style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 17,

                                           ),
                                            textAlign: TextAlign.justify,

                                        ),
                                     ],
                                   ),
                                  ),
                                  Row(
                                      children: [
                                          Text("Delivery Time :",
                                           style: TextStyle(
                                                color: Colors.white,
                                               fontSize: 19,
                                                fontWeight: FontWeight.bold,
                                           ),),
                                          Spacer(),
                                         Icon(CupertinoIcons.clock,
                                         color: Colors.white,),
                                         SizedBox(width: 5,),
                                         Text(
                                             "20 Minutes",
                                            style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 16,
                                               fontWeight: FontWeight.bold,
                                            ),
                                         )

                                      ],
                                  )
                              ],
                            ),
                        ),

                   ],
               ),
            ),
         ),
         bottomNavigationBar: BottomBar(),
    );
  }
}
