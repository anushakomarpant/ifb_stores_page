import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ifb_store/indvProductScreen/features.dart';
import 'package:ifb_store/indvProductScreen/specifications.dart';
import 'package:ifb_store/utils/colors.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/medium_text.dart';

class FeaturesAndSpecifications extends StatefulWidget {
  const FeaturesAndSpecifications({Key? key}) : super(key: key);

  @override
  State<FeaturesAndSpecifications> createState() => _FeaturesAndSpecificationsState();
}

class _FeaturesAndSpecificationsState extends State<FeaturesAndSpecifications> {
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
    return Card(
      margin: EdgeInsets.zero,
      child:
      Column(
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
                  MediumText(text: "Features"),

                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (BuildContext context){
                          return Specifications();
                        }
                          //=> choice.screen
                        ),);
                      },
                      child: MediumText(text: "Specifications")),
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
        children: [
          /*
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
                  MediumText(text: "Features"),
                  MediumText(text: "Specifications"),
                ],
              ),
            ),
          ),
          */
          Container(
            padding: EdgeInsets.zero,
            alignment: Alignment.bottomLeft,
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
                  //activeColor: Colors.white,
                  spacing: EdgeInsets.zero,
                  activeColor: Colors.redAccent,
                  //activeColors: [Colors.redAccent, Colors.grey],
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
