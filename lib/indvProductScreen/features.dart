import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ifb_store/notInUse/image_listview.dart';
import 'package:ifb_store/product_list.dart';
import 'package:ifb_store/utils/colors.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/big_text.dart';
import 'package:ifb_store/widgets/description_text.dart';
import 'package:ifb_store/widgets/list_widget.dart';
import 'package:ifb_store/widgets/medium_text.dart';
import 'package:ifb_store/widgets/small_text.dart';

class Features extends StatefulWidget {
  const Features({Key? key}) : super(key: key);

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Dimensions.height10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(width: Dimensions.width20,),
            Container(
              height: Dimensions.width45,
              width: Dimensions.width45,
              //margin: EdgeInsets.all(Dimensions.width20),
              decoration: const BoxDecoration(
                //color: Colors.grey,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/icons/washing-machine4.png",)
                ),
              ),
            ),
            SizedBox(width: Dimensions.width25,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MediumText(text: "Aqua Energie"),
                SizedBox(
                  height: Dimensions.height5,
                ),
                SizedBox(
                  //height: Dimensions.height50,
                  width: Dimensions.screenWidth*3/4,
                  child: Text("Water is energized by this built in device."
                      "The filter treatment dissolves detergent better "
                      "to give clothes a softer wash.",
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontFamily: 'Times New Roman',
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          height: Dimensions.pageView4,
          width: Dimensions.screenWidth,
          //padding: EdgeInsets.all(5),
          //color: Colors.grey,
          margin: EdgeInsets.all(Dimensions.width20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
          ),
          child: 
          Image.asset('assets/images/washing-machine.jpg',fit: BoxFit.cover,),
          
          /*
          decoration: const BoxDecoration(
            //color: Colors.grey,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/washing-machine.jpg",)
            ),
          ),
          
           */
        ),
      ],
    );
  }
}
