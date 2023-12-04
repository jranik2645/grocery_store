import 'package:flutter/material.dart';
import 'package:grocery_store/pages/iteam_page.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, top: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00A368),
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black54),
              )
            ],
          ),
        ),
          GridView.count(
             padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
             physics: NeverScrollableScrollPhysics(),
             crossAxisSpacing: 10,
             mainAxisSpacing: 10,
            crossAxisCount: 2,
             childAspectRatio: 0.6,
             shrinkWrap:  true,
             children: [
                for(int i=1; i<=6; i++)
                Container(
                   padding: EdgeInsets.symmetric(horizontal:10 ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                       borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                           BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                               blurRadius: 6,
                           ),
                        ],

                    ),
                      child: Column(children: [
                         InkWell(
                            onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemPage()));
                            },
                            child: Container(
                               margin: EdgeInsets.all(10),
                                child: Image.asset('images/$i.png',height: 110, width: 110,),
                            ),
                         ),
                          Padding(padding: EdgeInsets.only(
                             bottom: 8
                          ),
                            child: Container(
                               alignment: Alignment.centerLeft,
                                child: Text(
                                     'Item title',
                                   style: TextStyle(
                                       fontSize: 22,
                                       fontWeight: FontWeight.bold,
                                        color: Color(0xFF555555),
                                   ),
                                ),
                            ),
                           ),

                        Padding(padding: EdgeInsets.only(
                            bottom: 8
                        ),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Fresh  Fruit 2KG',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF555555),
                              ),
                            ),
                          ),
                        ),
                     Padding(padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                            Text('\$20',
                              style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                   color: Color(0xFF00A368),
                              ),
                            ),
                             InkWell(
                                 onTap: (){},
                                 child: Container(
                                   padding: EdgeInsets.all(8),
                                   decoration: BoxDecoration(
                                       color: Color(0xFF00A368),
                                     borderRadius: BorderRadius.circular(8),
                                   ),
                                     child: Icon(
                                        Icons.add_shopping_cart,
                                        color: Colors.white,
                                     ),
                                 ),
                             ),
                         ],
                      ),

                     )
                      ],),
                ),
             ],
          )
      ],
    );
  }
}
