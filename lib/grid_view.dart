import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/utils/colors.dart';

class StoresGridView extends StatefulWidget {
  const StoresGridView({Key? key}) : super(key: key);

  @override
  State<StoresGridView> createState() => _StoresGridViewState();
}

class _StoresGridViewState extends State<StoresGridView> {
  @override
  Widget build(BuildContext context) {
  return
    Column(
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
  const Choice({required this.title, required this.icon});
  final String title;
  final String icon;
  }

  const List<Choice> choices = <Choice>[
    Choice(title: 'Front Loader', icon: "assets/icons/washing-machine.png"),
    Choice(title: 'Top Loader', icon: "assets/icons/washing-machine1.png"),
    Choice(title: 'Dryer', icon: "assets/icons/tumble-dryer.png"),
    Choice(title: 'Microwave', icon: "assets/icons/microwave.png"),
    Choice(title: 'Dishwasher', icon: "assets/icons/dishwasher.png"),
    Choice(title: 'Split AC', icon: "assets/icons/ac.png"),
    Choice(title: 'Built in Oven', icon: "assets/icons/oven.png"),
    Choice(title: 'Built in Hob', icon: "assets/icons/hob.png"),
    Choice(title: 'Chimney', icon: "assets/icons/chimney.png"),
    Choice(title: 'Accessories', icon: "assets/icons/washing-machine5.png"),
  ];

  class SelectCard extends StatelessWidget {
    const SelectCard({ Key ? key, required this.choice}) : super(key: key);
    final Choice choice;

  @override
  Widget build(BuildContext context) {
    //return Card
    return Container(
        color: AppColors.backgroundColor,
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
        )
    );

  }
  }
