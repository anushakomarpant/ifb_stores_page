import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/utils/colors.dart';


class Essentials extends StatefulWidget {
  const Essentials({Key? key}) : super(key: key);

  @override
  State<Essentials> createState() => _EssentialsState();
}

class _EssentialsState extends State<Essentials> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimensions.screenWidth/2.1,
          //color: Colors.white,

          child:
          ListView(
              padding: EdgeInsets.only(left: Dimensions.width15, right: Dimensions.width5),
              //padding: EdgeInsets.zero,
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
  const Choice({required this.title, required this.icon, required this.img});
  final String title;
  final IconData icon;
  //final Image img;
  final String img;
}
 List<Choice> choices = <Choice>[
   const Choice(title: 'Fabric Care', icon: Icons.home, img: "assets/images/fabric-care2.jpg"),
   const Choice(title: 'Machine Care', icon: Icons.contacts, img: "assets/images/fabric-care3.jpg"),
   const Choice(title: 'Dish Care', icon: Icons.map, img: "assets/images/dishwasher.jpg"),
   const Choice(title: 'Kitchen Care', icon: Icons.phone, img: "assets/images/kitchen4.jpg"),
   const Choice(title: 'Kitchen Gadgets', icon: Icons.camera_alt, img: "assets/images/kitchen2.jpg"),
   const Choice(title: 'Accessories', icon: Icons.settings, img: "assets/images/kitchen3.jpg"),
   const Choice(title: 'Fabric Care', icon: Icons.home, img: "assets/images/fabric_care1.jpg"),
   const Choice(title: 'Machine Care', icon: Icons.contacts, img: "assets/images/washing-machine3.jpg"),
   const Choice(title: 'Kitchen Care', icon: Icons.phone, img: "assets/images/kitchen1.jpg"),
   const Choice(title: 'Kitchen Gadgets', icon: Icons.camera_alt, img: "assets/images/kitchen5.jpg"),
   const Choice(title: 'Accessories', icon: Icons.settings, img: "assets/images/kitchen6.jpg"),

 ];

class SelectCard extends StatelessWidget {
  const SelectCard({ Key ? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //return Card
    return
      //Card
      Container(
          margin: EdgeInsets.only(right: Dimensions.height1,),
          //shadowColor: AppColors.backgroundColor,
          //child: Container(
          height: Dimensions.screenWidth/2.3,
          width: Dimensions.screenWidth/3.1,
          color: AppColors.backgroundColor,
          //color: Colors.white,
          //padding: const EdgeInsets.all(5.0),
          // margin: EdgeInsets.only(left: 15, right: 15),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //Expanded
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.only(top: 10,bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(choice.img)
                        //image: AssetImage("assets/newimages/fabric_care.jpg"),
                        ),
                    ),
                  ),

                  SmallText(text: choice.title, ),
                ]
            ),
          )
        //),
      );

  }
}
