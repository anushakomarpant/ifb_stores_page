import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ifb_store/indvProductScreen/features.dart';
import 'package:ifb_store/indvProductScreen/indv_product_screen.dart';
import 'package:ifb_store/indvProductScreen/specifications_list.dart';
import 'package:ifb_store/utils/colors.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/big_text.dart';
import 'package:ifb_store/widgets/description_text.dart';
import 'package:ifb_store/widgets/medium_text.dart';
import 'package:ifb_store/widgets/select.dart';
import 'package:ifb_store/widgets/text_expand_reduce.dart';

class Specifications extends StatefulWidget {
  const Specifications({Key? key}) : super(key: key);

  @override
  State<Specifications> createState() => _SpecificationsState();
}

class _SpecificationsState extends State<Specifications> {
  PageController pageController = PageController(viewportFraction: 1.0);
  var _currPageValue= 0.0;
  final double _scaleFactor= 1.0;//image size while scrolling horizontally
  final double _height= Dimensions.pageViewContainer;//same as size of image

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue= pageController.page!;
        //print("Current value is "+_currPageValue.toString());
      });
    });
  }
  @override
  void dispose() {
    pageController.dispose();
  }

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
                                      child: const Icon(Icons.arrow_back),
                                  ),


                                  SizedBox(width: Dimensions.width20),
                                  //BigText(text: title),
                                  SizedBox(
                                    width: Dimensions.screenWidth*2/3,
                                    child: BigText(text: "Senorita ZX 6.5 Kg washing machine",
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


                        SizedBox(height: Dimensions.height40),

                        Padding(
                          padding: EdgeInsets.only(
                            left: Dimensions.width20,
                            right: Dimensions.width20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  height: Dimensions.width50,
                                  width: Dimensions.width50,
                                  //margin: EdgeInsets.all(Dimensions.width20),
                                  decoration: const BoxDecoration(
                                    //color: Colors.grey,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("assets/icons/washing-machine4.png",)
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Dimensions.screenWidth*2/3,
                                    child: MediumText(text: "Senorita ZX 6.5 Kg I 1000 RPM",
                                      //overFlow: TextOverflow.ellipsis
                                    ),
                                  ),
                                  SizedBox(height: Dimensions.height1),
                                  MediumText(text: '₹ 30,499',color: Colors.grey[600],),
                                  SizedBox(height: Dimensions.height1),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      MediumText(text: "4.3", color: Colors.grey[600]),
                                      SizedBox(width: Dimensions.width5,),
                                      Icon(Icons.star, size: 15, color: Colors.grey[600],),
                                    ],
                                  ),
                                  SizedBox(width: Dimensions.width5,),

                                ],
                              ),
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
                      width: Dimensions.screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                      onTap: (){
                                        Navigator.pop(context);
                                      },
                                    /*
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder:
                                            (BuildContext context){
                                          return IndvProductScreen();
                                        }
                                          //=> choice.screen
                                        ),);
                                      },
                                */
                                      child: MediumText(text: "Features")),

                                  MediumText(text: "Specifications"),
                                ],
                              ),
                            ),
                          ),



                          SizedBox(
                              height: 2,
                              child:
                              PageView.builder(
                                  controller: pageController,
                                  itemCount: 1,
                                  itemBuilder: (context, position){
                                    return _buildPageItem(position);
                                  })
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: Dimensions.height5,),

                  ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      children: List.generate(choices.length, (index) {
                        return Card(
                          margin: EdgeInsets.only(top: Dimensions.height5, bottom: Dimensions.height5),
                          child:
                          Container(
                            width: Dimensions.screenWidth,
                            alignment: Alignment.centerLeft,
                            child: SpecificationsList(listname: choices[index].list, title: choices[index].title,),

                          ),
                        );

                          /*Center(
                          child: SpecificationsList(listname: choices[index].list, title: choices[index].title,),
                          // child: ListWidget(choice: listname[index]),
                        );

                           */
                      }
                      )
                  ),
/*
                  Card(
                    margin: EdgeInsets.zero,
                    child:
                    SizedBox(
                      width: Dimensions.screenWidth,
                      child: SpecificationsList(listname: choices[index].list, title: choices[index].title,),

                    ),
                  ),
                  */
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

  Widget _buildPageItem(int index){
    Matrix4 matrix = Matrix4.identity();
    if(index==_currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index ==_currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index ==_currPageValue.floor()-1){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else{
      var currScale=0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 0);
    }

    return Transform(
      transform: matrix,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.zero,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.zero,
            //margin: EdgeInsets.only(top: Dimensions.height45*4,),
            child: SizedBox(
              child:
              DotsIndicator(
                mainAxisAlignment: MainAxisAlignment.start,
                dotsCount: 1,
                position: _currPageValue,
                decorator: DotsDecorator(
                  color: Colors.white,
                  //activeColor: Colors.black,
                  spacing: EdgeInsets.zero,
                  activeColor: Colors.grey,
                  //activeColors: [Colors.grey, Colors.redAccent],
                  size: Size(Dimensions.screenWidth/2, 2.0),
                  activeSize: Size(Dimensions.screenWidth/2, 2.0),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                ),),

            ),
          ),
        ],
      ),
    );



  }
}

class Choice {
  const Choice({required this.title, required this.list});
  final String title;
  final List list;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Weight & Dimensions', list: weight),
  Choice(title: 'Spin Speed options (RPM)', list: rpm),
  Choice(title: 'Wash Programs', list: wash),
  Choice(title: 'Hygiene', list: hygiene),
  Choice(title: 'Warranty', list: warranty),
  Choice(title: 'Performance', list: performance),
  ];
