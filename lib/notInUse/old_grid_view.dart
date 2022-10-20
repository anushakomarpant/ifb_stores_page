import 'package:ifb_store/notInUse/old_product_screen.dart';
import 'package:ifb_store/product_list.dart';
import 'package:ifb_store/product_screen.dart';
import 'package:ifb_store/notInUse/products/ac.dart';
import 'package:ifb_store/notInUse/products/dryer.dart';
import 'package:ifb_store/notInUse/products/front_loader.dart';
import 'package:ifb_store/notInUse/products/microwave.dart';
import 'package:ifb_store/notInUse/products/top_loader.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/utils/colors.dart';


class OldGridView extends StatefulWidget {
  const OldGridView({Key? key}) : super(key: key);

  @override
  State<OldGridView> createState() => _OldGridViewState();
}

class _OldGridViewState extends State<OldGridView> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          GridView.count(
              padding: EdgeInsets.only(right: Dimensions.width15, left: Dimensions.width15),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 4,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              children: List.generate(choices.length, (index) {
                return Center(
                  child: SelectCard(choice: choices[index]),
                );
              }
              )
          ),
        ]
    );
  }
}

class Choice {
  const Choice({required this.title, required this.list, required this.icon, required this.screen});
  final String title;
  final List list;
  final String icon;
  final Widget screen;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Front Loader', list: frontLoader, icon: "assets/icons/washing-machine.png", screen: FrontLoader()),
  Choice(title: 'Top Loader', list: topLoader, icon: "assets/icons/washing-machine1.png", screen: TopLoader()),
  Choice(title: 'Dryer', list: dryer, icon: "assets/icons/tumble-dryer.png", screen: Dryer()),
  Choice(title: 'Microwave', list: microwave, icon: "assets/icons/microwave.png", screen: Microwave()),
  Choice(title: 'Dishwasher', list: dishwasher, icon: "assets/icons/dishwasher.png", screen: TopLoader()),
  Choice(title: 'Split AC', list: ac, icon: "assets/icons/ac.png", screen: AC()),
  Choice(title: 'Built in Oven', list: oven, icon: "assets/icons/oven.png", screen: Microwave()),
  Choice(title: 'Built in Hob', list: hob, icon: "assets/icons/hob.png", screen: TopLoader()),
  Choice(title: 'Chimney', list: chimney, icon: "assets/icons/chimney.png", screen: TopLoader()),
  Choice(title: 'Accessories', list: accessories, icon: "assets/icons/washing-machine5.png", screen: TopLoader()),
];

class SelectCard extends StatelessWidget {
  const SelectCard({ Key ? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //return Card
    return Container(
        color: AppColors.backgroundColor,
        child:
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:
                (BuildContext context){
              return OldProductScreen(title: choice.title, listn: choice.list, screen: choice.screen);
            }
              //=> choice.screen
            ),);
          },
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Image(
                      //image: AssetImage("assets/icons/ac.png"),
                      image: AssetImage(choice.icon),
                      height: 50,
                      width: 50,
                    ),
                    //Icon(choice.icon, size:60.0, )
                  ),
                  SmallText(text: choice.title, ),
                ]
            ),
          ),
        )
    );

  }
}
