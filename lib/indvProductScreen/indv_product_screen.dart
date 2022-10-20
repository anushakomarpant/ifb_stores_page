import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ifb_store/indvProductScreen/featues-specifications.dart';
import 'package:ifb_store/indvProductScreen/features.dart';
import 'package:ifb_store/notInUse/image_listview.dart';
import 'package:ifb_store/indvProductScreen/image_listviewPage.dart';
import 'package:ifb_store/product_list.dart';
import 'package:ifb_store/utils/colors.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/big_text.dart';
import 'package:ifb_store/widgets/description_text.dart';
import 'package:ifb_store/widgets/list_widget.dart';
import 'package:ifb_store/widgets/medium_text.dart';
import 'package:ifb_store/widgets/select.dart';
import 'package:ifb_store/widgets/small_text.dart';

class IndvProductScreen extends StatelessWidget {
  final String description=
      "The Senorita Aqua WX from IFB's"
      " Ultra Plus Next Generation range comes"
      "packed with features like 3D Wash, Cradle Wash"
      "and AQUA Energie and ensures that your clothes"
      " are properly washed. Water is energized by this"
      " built-in device. The filter treatment dissolves "
      "detergent better to give clothes a softer wash.";
  final String title;
  final String price;
  final String ratings;
  //final List listn;
  //final Widget screen;

  const IndvProductScreen({Key? key,
   this.title="Senorita ZX 6.5 Kg I 1000 RPM",
    this.price="₹ 30,499",
    this.ratings="4.3",
   // required this.listn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //showing the homePageBody
          Expanded(
          child: SingleChildScrollView(
            //child: StorePageBody(),
            child:
            Column(
              children: [
                Card(
                  margin: EdgeInsets.only(
                    bottom: Dimensions.height5,),
                  child: Column(
                    children: [
                      SizedBox(height: Dimensions.height50),
                      Padding(
                        padding: EdgeInsets.only(
                          left: Dimensions.width20,
                          right: Dimensions.width20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                GestureDetector(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                    child: Icon(Icons.arrow_back)
                                ),


                                SizedBox(width: Dimensions.width20),
                                //BigText(text: title),
                                SizedBox(
                                  width: Dimensions.screenWidth*2/3,
                                  child: BigText(text: title,
                                  //child: BigText(text: "Senorita ZX 6.5 Kg washing machine",
                                      //overFlow: TextOverflow.ellipsis
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(Icons.shopping_cart_outlined),
                              ],
                            ),

                          ],
                        ),
                      ),

                      SizedBox(height: Dimensions.height1),

                      //ImageListView(),
                      ImageListViewPage(),

                      SizedBox(height: Dimensions.height20),

                      Padding(
                        padding: EdgeInsets.only(
                          left: Dimensions.width20,
                          right: Dimensions.width20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Dimensions.screenWidth*2/3,
                              child: MediumText(text: title,
                              //child: MediumText(text: "Senorita ZX 6.5 Kg I 1000 RPM",
                                //overFlow: TextOverflow.ellipsis
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                MediumText(text: ratings, color: Colors.grey[600]),
                                //MediumText(text: "4.3", color: Colors.grey[600]),
                                SizedBox(width: Dimensions.width5,),
                                Icon(Icons.star, size: 15, color: Colors.grey[600],),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimensions.height15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: Dimensions.width20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MediumText(text: 'MRP',color: Colors.grey[600],),
                                  SizedBox(height: Dimensions.height1),
                                  MediumText(text: price,color: Colors.grey[600],),
                                  //MediumText(text: '₹ 30,499',color: Colors.grey[600],),
                                ],
                              ),
                              SizedBox(width: Dimensions.width30),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MediumText(text: 'Online',),
                                  SizedBox(height: Dimensions.height1),
                                  MediumText(text: price,),
                                  //MediumText(text: '₹ 28,499',),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Select(),
                              //Icon(Icons.circle_outlined,size: 20, color: Colors.grey[400],),
                              SizedBox(width: Dimensions.width10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MediumText(text: 'Exchange',),
                                  SizedBox(height: Dimensions.height1),
                                  MediumText(text: price,),
                                  //MediumText(text: '₹ 25,499',),
                                ],
                              ),
                              SizedBox(width: Dimensions.width20),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: Dimensions.height20),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(
                    bottom: Dimensions.height5,),
                  child: Container(
                    //height: Dimensions.height45*3,
                    padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                    ),
                    child:
                    new DescriptionTextWidget(text: description),
                  ),
                ),
/*
                Card(
                  margin: const EdgeInsets.only(
                    bottom: 1.0,),
                  child:
                  SizedBox(
                    height: Dimensions.height45,
                    //width: Dimensions.screenWidth,
                    child:
                    Padding(
                      padding: EdgeInsets.only(
                        left: Dimensions.width50,
                        right: Dimensions.width50,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediumText(text: "Features"),
                          MediumText(text: "Specifications"),
                        ],
                      ),
                    ),
                  ),
                ),
                
 */
                const FeaturesAndSpecifications(),
                const Features(),
                //ProductsLists(listname: listn),

                //screen,
              ],
            ),


          ),),
          //SizedBox(height: Dimensions.screenHeight,),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              Card(
                color: Colors.brown[100],
                shadowColor: Colors.white,
                //color: AppColors.backgroundColor2,
                margin: const EdgeInsets.only(bottom: 0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,),
                child: Container(
                  height: Dimensions.height25*2,
                  width: Dimensions.screenWidth/2.0,

                  child: Center(child: MediumText(text: "Add to Cart", color: Colors.black,)),
                ),
              ),
              Card(
                //color: Colors.grey[500],
                color: Colors.brown[300],
                shadowColor: Colors.black,

                //color: AppColors.backgroundColor2,
                margin: const EdgeInsets.only(bottom: 0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,),
                child: Container(
                  height: Dimensions.height25*2,
                  width: Dimensions.screenWidth/2.0,

                  child: Center(child: MediumText(text: "Buy Now", color: Colors.white,)),
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
