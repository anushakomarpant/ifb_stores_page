import 'package:ifb_store/essentials.dart';
import 'package:ifb_store/ifb_essentials.dart';
import 'package:ifb_store/orders.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/utils/colors.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/big_text.dart';
import 'package:ifb_store/widgets/small_text.dart';
import 'package:ifb_store/grid_view.dart';

class ProductScroll extends StatefulWidget {
  const ProductScroll({Key? key}) : super(key: key);

  @override
  State<ProductScroll> createState() => _ProductScrollState();
}

class _ProductScrollState extends State<ProductScroll> {
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
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              top: Dimensions.height45,
              bottom: Dimensions.height15),
          padding: EdgeInsets.only(
              top: Dimensions.height10,
              left: Dimensions.width20,
              right: Dimensions.width20),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(text: "Stores"),
              Center(
                child:
                  Icon(
                      Icons.search_sharp,
                      color:Colors.black,
                      size: Dimensions.iconSize30,
                  ),

              ),
            ],

          ),),
        Stack(
          children: [
            SizedBox(
              /*
              Changes made here affects the position of dots indicator too
            hence its necessary to change 'container padding top' in which dots indicator are placed
                */

              //height: Dimensions.pageView2,
              //height: 2000,
              height: Dimensions.pageView4,
                child:
                PageView.builder(
                    controller: pageController,
                    itemCount: 2,
                    itemBuilder: (context, position){
                      return _buildPageItem(position);
                    })
            ),

            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: Dimensions.height40*5,
                //top: 190,

                child:Container(
                  //height: double.maxFinite,
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      //bottom: Dimensions.height30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius30),
                      topLeft: Radius.circular(Dimensions.radius30),

                    ),
                    color: AppColors.backgroundColor,
                    //color: AppColors.mainBlackColor,
                    //color: Colors.white,

                  ),
                )
            ),

          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            left: Dimensions.width20,
            //top: Dimensions.height20,
            //bottom: Dimensions.height30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "Suggested Products"),
              SizedBox(height: Dimensions.height25),
            ],
          ),
        ),

        //const SuggestedProduct(),

        const IfbEssentials(),

        //SizedBox(height: Dimensions.height5),

        Container(
          padding: EdgeInsets.only(
              top: Dimensions.height10,
              left: Dimensions.width20,
              right: Dimensions.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                color: AppColors.brown300,
                //color: AppColors.backgroundColor2,
                margin: const EdgeInsets.only(bottom: 5),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),),
                child: Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      left: Dimensions.width15,
                      right: Dimensions.width15,
                      bottom: Dimensions.height10),
                  height: Dimensions.height40*2,
                  width: Dimensions.screenWidth/2.3,

                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.location_on_outlined,
                        size: 55,
                        color: Colors.white,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(text: "Locate your", color: Colors.white,),
                          const SizedBox(height: 10),
                          SmallText(text: "nearest Store", color: Colors.white,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: AppColors.backgroundColor3,
                  //color: AppColors.backgroundColor2,
                  margin: const EdgeInsets.only(bottom: 5),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height10,
                        left: Dimensions.width15,
                        right: Dimensions.width15,
                        bottom: Dimensions.height10),
                    height: Dimensions.height40*2,
                    width: Dimensions.screenWidth/2.3,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BigText(text: "FASTCOOL",
                          //size: 15,
                        ),
                        const SizedBox(height: 5),
                        SmallText(text: "AC Calculator", ),

                      ],
                    ),
                  ),
              ),


            ],
          ),
        ),

        SizedBox(height: Dimensions.height35),

        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            left: Dimensions.width20,
            //top: Dimensions.height20,
            //bottom: Dimensions.height30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "All Products"),
              SizedBox(height: Dimensions.height25),

            ],
          ),
        ),

        const StoresGridView(),

        SizedBox(height: Dimensions.height35),

        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            left: Dimensions.width20,
            //top: Dimensions.height20,
            //bottom: Dimensions.height30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "IFB Essentials"),
              SizedBox(height: Dimensions.height15),

            ],
          ),
        ),

        const Essentials(),

        SizedBox(height: Dimensions.height5),

        //const IfbEssentials(),

        //SizedBox(height: Dimensions.height25),

        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            left: Dimensions.width20,
            right: Dimensions.width20,
            //top: Dimensions.height20,
            //bottom: Dimensions.height30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(text: "My Orders - Latest"),
                  SmallText(text: "Show All"),
                ],
              ),
              SizedBox(height: Dimensions.height25),
            ],
          ),
        ),

        const MyOrders(),
        SizedBox(height: Dimensions.height25),


      ],
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
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,//image height
            margin: EdgeInsets.only(
              top: Dimensions.height1,
            ),
            decoration: BoxDecoration(
              color: index.isEven?const Color(0xFF89dad0):const Color(0xFF9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image:
                  index.isEven?
                  const AssetImage("assets/newimages/gift3.jpg")
                      :const AssetImage("assets/newimages/gift.jpg")
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              top: Dimensions.height20,
              left: Dimensions.width20,
            ),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text:"Bring Home the best", color: Colors.white,size: 20.0,),
                  BigText(text:"at the best price", color: Colors.white,size: 20.0,),
                ],
              ),
          ),

          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              top: Dimensions.height45*3,
              left: Dimensions.width20,
            ),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(text:"Easy EMI with", color: Colors.white,),
                Container(
                  padding: const EdgeInsets.all(1),
                  child:const Image(
                  image: AssetImage("assets/icons/HDFC_Bank_logo.png"),
                  height: 30.0,
                  width: 70.0,),)

              ],
            ),
          ),

          Container(
            //padding: const EdgeInsets.only(top: 150),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(
                top: Dimensions.height45*3.5,
            ),
            child: SizedBox(
              //height: Dimensions.pageViewContainer,
              //height: Dimensions.pageView,
              //height: Dimensions.scrollPageView1,
              child:
              DotsIndicator(
                dotsCount: 2,
                position: _currPageValue,
                decorator: DotsDecorator(
                  //color: AppColors.mainBlackColor,
                  activeColor: Colors.white,
                  //activeColor: AppColors.mainBlackColor,
                  size: const Size.square(7.0),
                  activeSize: const Size(7.0, 7.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                ),),

            ),
          ),



        ],
      ),
    );



  }
}


