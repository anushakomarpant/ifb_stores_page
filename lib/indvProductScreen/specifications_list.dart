import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/text_expand_reduce.dart';


class SpecificationsList extends StatefulWidget  {
  final List listname;
  final String title;

  SpecificationsList({Key? key,
    required this.listname,
    required this.title,
  }) : super(key: key);

  @override
  State<SpecificationsList> createState() => _SpecificationsListState();
}

class _SpecificationsListState extends State<SpecificationsList> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Container(
              padding: EdgeInsets.only(right: Dimensions.width30, ),
              //margin: EdgeInsets.only(bottom: Dimensions.height5),
              //padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child:
              flag?
              (Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: Dimensions.width20),
                    width: Dimensions.screenWidth/2,
                    child: Text(widget.title,
                      //child: Text("$firstHalf",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Times New Roman',
                          //fontFamily: 'Times New Roman',
                          //color: Colors.grey[700],
                          //wordSpacing: 1.5,
                          height: 1.5
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          flag = !flag;
                        });
                      },
                      child: const Icon(Icons.keyboard_arrow_up_sharp)),
                ],
              )):
              (Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: Dimensions.width20),
                        width: Dimensions.screenWidth/2,
                        child: Text(widget.title,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Times New Roman',
                              //fontFamily: 'Times New Roman',
                              //color: Colors.grey[700],
                              //wordSpacing: 1.5,
                              height: 1.5
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              flag = !flag;
                            });
                          },
                          child: const Icon(Icons.keyboard_arrow_down_sharp)),
                    ],
                  ),
                  ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      children:
                      List.generate(widget.listname.length, (index) {
                        //List.generate(1, (index) {
                        //index++;
                        return Center(
                          child: TextExpandReduce(choice: widget.listname[index], text: widget.title, text2: widget.listname[index].title, value: widget.listname[index].value, length: widget.listname.length,),
                          // child: ListWidget(choice: listname[index]),
                        );
                      }
                      )
                  ),
                ],
              ))
          ),
        ],
      );
  }
}


const List<Choice> weight = <Choice>[
  Choice(title: 'Net Weight(Kg)', value: '73'),
  Choice(title: 'Net dimensions (WXHXD)', value: '598x606x875'),
  Choice(title: 'Door diameter (mm)', value: '73'),
  Choice(title: 'Door opening angle (Degree)', value: '73'),
  ];

const List<Choice> rpm = <Choice>[
  Choice(title: 'RPM', value: '1000'),
  Choice(title: 'RPM2', value: '598x606x875'),
  Choice(title: 'RPM3', value: '73'),
  Choice(title: 'RPM4', value: '73'),
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



