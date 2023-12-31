import 'package:flutter/material.dart';

class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
           Padding(padding: EdgeInsets.only(
              left: 10, right: 10 ,bottom:10, top: 20
           ),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
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
                      fontSize: 16,
                      color: Colors.black54),
                )
              ],
            ),
           ),
             SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                  child: Row(children: [
                     for( int i=1; i<8; i++)
                     Container(
                       margin: EdgeInsets.all(10),
                       padding: EdgeInsets.all(5),
                       height: 150,
                        width: 150,
                       decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                             BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8,
                             )
                          ]
                       ),
                        child: Image.asset("images/$i.png",),
                     ),
                  ],),
             ),
        ],
    );
  }
}
