import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/big_text.dart';
import 'package:ifb_store/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/utils/colors.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
              padding: EdgeInsets.only(
                left:Dimensions.width20,
                right: Dimensions.width20,
              ),
              //scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              children: List.generate(choices.length, (index) {
                return Center(
                  child: SelectCard(choice: choices[index]),
                );
              }
              )
          ),

          GridView.count(
              padding: EdgeInsets.only(
                left:Dimensions.width20,
                right: Dimensions.width20,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,

              //To reduce height of grid containing text
              childAspectRatio: Dimensions.screenWidth/(Dimensions.screenHeight/4),
              children: List.generate(choices.length, (index) {
                return SizedBox(
                  child: SelectText(choice: choices[index]),
                );
              }
              )
          ),

        ]
    );
  }
}

class Choice {
  const Choice({required this.title, required this.price, required this.icon});
  final String title;
  final String price;
  final String icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Senorita TL-SSDB 7.5Kg', price: '₹ 22,990', icon: "assets/icons/washing-machine2.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', icon: "assets/icons/washing-machine.png"),
  Choice(title: 'Senorita ZXS', price: '₹ 36,550', icon: "assets/icons/washing-machine1.png"),
];

class SelectCard extends StatelessWidget {
  const SelectCard({ Key ? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //return Card
    return
      Card(
      //color: Colors.orange[50],
        color: AppColors.backgroundColor2, //orange.shade50,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    //decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(Dimensions.radius20),),
                    child: Image(
                      //image: AssetImage("assets/icons/ac.png"),
                      image: AssetImage(choice.icon),
                      height: 80,
                      width: 80,
                    ),
                  ),
                  //Icon(choice.icon, size:60.0, ),
                ),
                //Text(choice.title, ),

                //Text(choice.title, ),
              ]
          ),
        )
    );

  }
}

class SelectText extends StatelessWidget {
  const SelectText({ Key ? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //return Card
    return

      SizedBox(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: Dimensions.height15,),

            SmallText(text: choice.title, ),

            SizedBox(height: Dimensions.height5,),

            SmallText(text: choice.price, color: Colors.grey.shade600, ),

            //Text(choice.title, ),
          ]
      ),
    );

  }
}

