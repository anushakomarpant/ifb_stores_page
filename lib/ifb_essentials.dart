import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/utils/colors.dart';

class IfbEssentials extends StatefulWidget {
  const IfbEssentials({Key? key}) : super(key: key);

  @override
  State<IfbEssentials> createState() => _IfbEssentialsState();
}

class _IfbEssentialsState extends State<IfbEssentials> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: Dimensions.screenWidth/2.0,
            //color: Colors.white,
            child:
              ListView(
                  padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width5),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(choices.length, (index) {
                    return Center(
                      child: SelectCard(choice: choices[index]),
                    );
                  }
                  )
              ),
        ),
      ],
    );

  }
}

class Choice {
  const Choice({required this.title, required this.price, required this.icon});
  final String title;
  final String icon;
  final String price;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Senorita WX', price: '₹ 32,000', icon: "assets/icons/washing-machine.png"),
  Choice(title: 'Senorita ZXS', price: '₹ 36,550', icon: "assets/icons/washing-machine1.png"),
  Choice(title: 'Senorita TL-SSDB 7.5Kg', price: '₹ 22,990', icon: "assets/icons/washing-machine2.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', icon: "assets/icons/washing-machine3.png"),
];

class SelectCard extends StatelessWidget {
  SelectCard({ Key ? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //return Card
    return
      //Card
      Container(
      margin: EdgeInsets.only(right: Dimensions.width15, ),
      //shadowColor: AppColors.backgroundColor,
      //child: Container(
        //height: Dimensions.screenHeight,
          width: Dimensions.screenWidth/3.3,
          color: AppColors.backgroundColor,
          //color: Colors.white,
          //padding: const EdgeInsets.all(5.0),
         // margin: EdgeInsets.only(left: 15, right: 15),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //Expanded
                   Card(
                    color: AppColors.backgroundColor2,
                      margin: const EdgeInsets.only(bottom: 20),
                     shape: const RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(
                         Radius.circular(20.0),
                       ),),
                      //margin: const EdgeInsets.all(15),
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

                      //Icon(choice.icon, size:80.0, )
              ),
                  SmallText(text: choice.title, ),
                  const SizedBox(height: 10),

                  SmallText(text: choice.price, color: Colors.grey.shade600, ),
                ]
            ),
          )
      //),
    );

  }
}
