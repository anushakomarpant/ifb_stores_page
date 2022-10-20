import 'package:flutter/material.dart';
import 'package:ifb_store/indvProductScreen/image_listviewPage.dart';
import 'package:ifb_store/indvProductScreen/indv_product_screen.dart';
import 'package:ifb_store/utils/colors.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/big_text.dart';
import 'package:ifb_store/widgets/medium_text.dart';
import 'package:ifb_store/widgets/product_text.dart';
import 'package:ifb_store/widgets/small_text.dart';


class ListWidget extends StatelessWidget {
  ListWidget({ Key ? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //return Card
    return
      Card(
        margin: EdgeInsets.only(top: 1,),
        child: Container(
            margin: EdgeInsets.only(
              top: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: Dimensions.height30,
            ),
            child: Row(
              children:[
                GestureDetector(
                  onTap: (){
                    //int positn= listView.getItemIdAtPosition(positn);
                    Navigator.push(context, MaterialPageRoute(builder:
                        (BuildContext context){
                      return IndvProductScreen(title: choice.title,price: choice.price, ratings: choice.ratings,); }
                    ),);
                  },
                  child: Container(
                    width: Dimensions.listViewImgSize,
                    height: Dimensions.listViewImgSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      //borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white38,
                      //color: Colors.greenAccent,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        //image: AssetImage("assets/newimages/gift.jpg"),
                        image: AssetImage(choice.icon),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    // height: Dimensions.height50*2,
                    //height: Dimensions.listViewTextContSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius20),
                        bottomRight: Radius.circular(Dimensions.radius20),
                      ),
                      //color:Colors.green[50],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: Dimensions.width10,
                        // right: Dimensions.width20
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //MediumText(text: "Senorita WX"),
                          MediumText(text: choice.title),
                          SizedBox(height: Dimensions.height5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ProductText(text: "MRP", color: Colors.grey,),
                                  SizedBox(width: Dimensions.width5,),
                                  ProductText(text: choice.price, color: Colors.grey,),
                                ],
                              ),

                              Row(
                                children: [
                                  ProductText(text: "Online", ),
                                  SizedBox(width: Dimensions.width5,),
                                  ProductText(text: choice.price, ),
                                ],
                              ),

                            ],
                          ),
                          SizedBox(height: Dimensions.height5),
                          Row(
                            children: [
                              ProductText(text: choice.ratings, color: Colors.grey,),
                              SizedBox(width: Dimensions.width5,),
                              const Icon(Icons.star, size: 16, color: Colors.grey,),
                            ],
                          ),
                          SizedBox(height: Dimensions.height20),
                          SmallText(text: "Features", ),
                          SizedBox(height: Dimensions.height5),
                          SmallText(
                            text: "Digital Display I 12 Programs I",
                            color: Colors.grey,),
                          SizedBox(height: Dimensions.height5),
                          SmallText(text: "Stainless Steel Tub", color: Colors.grey,),
                          SizedBox(height: Dimensions.height1),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
      );

  }
}

class Choice {
  const Choice({required this.title, required this.price, required this.ratings, required this.icon});
  final String title;
  final String icon;
  final String price;
  final String ratings;
}


