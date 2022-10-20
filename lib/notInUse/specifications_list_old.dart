import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/widgets/text_expand_reduce.dart';


class SpecificationsListOld extends StatelessWidget  {
  final List listname;
  final String title;

  const SpecificationsListOld({Key? key,
    required this.listname,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children:
              List.generate(listname.length, (index) {
                //List.generate(1, (index) {
                //index++;
                return Center(
                  child: TextExpandReduce(choice: listname[index], text: title, text2: listname[index].title, value: listname[index].value, length: listname.length,),
                  // child: ListWidget(choice: listname[index]),
                );
              }
              )
          ),
        ],
      );
  }
}

const List<Choice> weight = <Choice>[
  Choice(title: 'Net Weight(Kg)', value: '73'),
  Choice(title: 'Net dimensions (WXHXD)', value: '598x606x875'),
  Choice(title: 'Door diameter (mm)', value: '73'),
  //Choice(title: 'Door opening angle (Degree)', value: '73'),
];

const List<Choice> rpm = <Choice>[
  Choice(title: 'RPM', value: '1000'),
  Choice(title: 'Net dimensions (WXHXD)', value: '598x606x875'),
  Choice(title: 'Door diameter (mm)', value: '73'),
  Choice(title: 'Door opening angle (Degree)', value: '73'),
];


const List<Choice> wash = <Choice>[
  Choice(title: 'Net Weight(Kg)', value: '73'),
  Choice(title: 'Net dimensions (WXHXD)', value: '598x606x875'),
  Choice(title: 'Door diameter (mm)', value: '73'),
  Choice(title: 'Door opening angle (Degree)', value: '73'),
];


const List<Choice> hygiene = <Choice>[
  Choice(title: 'Net Weight(Kg)', value: '73'),
  Choice(title: 'Net dimensions (WXHXD)', value: '598x606x875'),
  Choice(title: 'Door diameter (mm)', value: '73'),
  Choice(title: 'Door opening angle (Degree)', value: '73'),
];

const List<Choice> warranty = <Choice>[
  Choice(title: 'Net Weight(Kg)', value: '73'),
  Choice(title: 'Net dimensions (WXHXD)', value: '598x606x875'),
  Choice(title: 'Door diameter (mm)', value: '73'),
  Choice(title: 'Door opening angle (Degree)', value: '73'),
];


const List<Choice> performance = <Choice>[
  Choice(title: 'Net Weight(Kg)', value: '73'),
  Choice(title: 'Net dimensions (WXHXD)', value: '598x606x875'),
  Choice(title: 'Door diameter (mm)', value: '73'),
  Choice(title: 'Door opening angle (Degree)', value: '73'),
];


