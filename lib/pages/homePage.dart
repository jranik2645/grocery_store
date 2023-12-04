import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/widgets/BottomCartSheet.dart';
import 'package:grocery_store/widgets/categories_widget.dart';
import 'package:grocery_store/widgets/itemwidget.dart';
import 'package:grocery_store/widgets/popular_item.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00A368),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 15,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    Container(
                      //padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              blurRadius: 2,
                            )
                          ]),
                      child: Badge(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.all(6),
                        textStyle: TextStyle(color: Colors.red),
                        child: InkWell(
                            onTap: () {
                              showSlidingBottomSheet(
                                context,
                                 builder: (context){
                                   return SlidingSheetDialog(
                                      elevation: 8,
                                       cornerRadius: 16,
                                      builder: (context , state){
                                         return BottomCartSheet();
                                      }
                                   );
                                 }
                                );
                            },
                            child: Icon(
                              CupertinoIcons.cart,
                              size: 30,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              //Welcome Text/
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WellCome",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "What do you want to Buy?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              //Search Widget//
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "SearchBar"),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.filter_list),
                  ],
                ),

              ),
                 //products Widgets//
                Container(
                  padding: EdgeInsets.only(top: 20),
                   decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                         topRight: Radius.circular(30),
                      )
                   ),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       CategoriesWidget(),
                       PopularItemWidget(),
                       ItemsWidget(),
                     ],
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
