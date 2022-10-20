import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ifb_store/product_list.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/big_text.dart';
import 'package:ifb_store/widgets/list_widget.dart';
import 'package:ifb_store/widgets/medium_text.dart';

class ProductScreen extends StatelessWidget {
  final String title;
  final List listn;
  //final Widget screen;

  const ProductScreen({Key? key,
    required this.title,
    required this.listn,
    //required this.screen,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String zipcode;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //showing the header
          Container(),
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
                                  BigText(text: title),
                                  //BigText(text: "Front Loader"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(Icons.search_sharp),
                                  SizedBox(width: Dimensions.width20),
                                  const Icon(Icons.shopping_cart_outlined),
                                ],
                              ),

                            ],
                          ),
                        ),

                        SizedBox(height: Dimensions.height30),
                        Padding(
                          padding: EdgeInsets.only(
                            left: Dimensions.width50,
                            right: Dimensions.width50,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MediumText(text: "Sort"),
                              MediumText(text: "Filter"),
                            ],
                          ),
                        ),
                        SizedBox(height: Dimensions.height20),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.zero,
                    child:
                    SizedBox(
                      height: Dimensions.height50,
                      //width: Dimensions.screenWidth,
                      child:
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [LengthLimitingTextInputFormatter(6)],
                          showCursor: true,
                          cursorHeight: Dimensions.height30,
                          cursorColor: Colors.grey,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: ' Enter Pincode',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            contentPadding: EdgeInsets.only(
                                left: 15,
                                top: 10,
                                bottom: 10
                            ),
                            hintText: 'Enter Pincode',
                            counterText: '',
                          ),
                          onChanged: (value) => zipcode =value,
                        ),
                      ),
                    ),
                  ),
                  ProductsLists(listname: listn),
                  //screen,
                ],
              ),

            ),),
        ],
      ),
    );
  }
}
