import 'package:flutter/material.dart';
import 'package:ifb_store/utils/dimensions.dart';


class TextExpandReduce extends StatefulWidget {
  Color? color;
  final String text;
  final String text2;
  final String value;
  final Choice choice;
  final int length;
  TextExpandReduce({Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    required this.text2,
    required this.value,
    required this.choice,
    required this.length,
    //this.text="Weight and Dimensions",
  }) : super(key: key);

  @override
  State<TextExpandReduce> createState() => _TextExpandReduceState();
}

class _TextExpandReduceState extends State<TextExpandReduce> {
  late String firstHalf;
  late String secondHalf;
  late final int l;
  late final String t2;
  late final String v;
  late Choice c;

  final String more= "Read more";
  final String less= "Show less";

  //bool flag = true;



  //String get text2 => t2=text2;

  //String get value => v=value;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 30) {
      firstHalf = widget.text.substring(0, 30);
      secondHalf = widget.text.substring(30, widget.text.length);
      l=widget.length;
      t2=widget.text2;
      v=widget.value;
      c=widget.choice;
    } else {
      firstHalf = widget.text;
      secondHalf = "";
      l=widget.length;
      t2=widget.text2;
      v=widget.value;
      c=widget.choice;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(top: Dimensions.height1, bottom: Dimensions.height1*3),
        children:
        //List.generate(l, (index) {
        List.generate(1, (index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: Dimensions.width20),
                width: Dimensions.screenWidth/2,
                //child: Text(c.title,
                child: Text(t2,
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                      fontFamily: 'Times New Roman',
                      //fontFamily: 'Times New Roman',
                      //color: Colors.grey[700],
                      //wordSpacing: 1.5,
                      height: 1.5
                  ),
                ),
              ),
              Container(
                //color: Colors.cyan,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: Dimensions.width5),
                width: Dimensions.screenWidth/2-4*Dimensions.width20,
                child: Text(v,
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                      fontFamily: 'Times New Roman',
                      //fontFamily: 'Times New Roman',
                      //color: Colors.grey[700],
                      //wordSpacing: 1.5,
                      height: 1.5
                  ),
                ),
              ),
            ],
          );
        }
        )
    );
    /*
      Container(
      padding: EdgeInsets.only(right: Dimensions.width30, ),
      //margin: EdgeInsets.only(bottom: Dimensions.height5),
      //padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: flag?
      (Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: Dimensions.width20),
            width: Dimensions.screenWidth/2,
            child: Text("$firstHalf",
              style: TextStyle(
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
              child: Icon(Icons.keyboard_arrow_up_sharp)),
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
                child: Text("$firstHalf",
                  style: TextStyle(
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
                  child: Icon(Icons.keyboard_arrow_down_sharp)),
            ],
          ),
          ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children:
              //List.generate(l, (index) {
              List.generate(1, (index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: Dimensions.width20),
                      width: Dimensions.screenWidth/2,
                      //child: Text(c.title,
                      child: Text(t2,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 13,
                            fontFamily: 'Times New Roman',
                            //fontFamily: 'Times New Roman',
                            //color: Colors.grey[700],
                            //wordSpacing: 1.5,
                            height: 1.5
                        ),
                      ),
                    ),
                    Container(
                      //color: Colors.cyan,
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: Dimensions.width5),
                      width: Dimensions.screenWidth/2-4*Dimensions.width20,
                      child: Text(v,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 13,
                            fontFamily: 'Times New Roman',
                            //fontFamily: 'Times New Roman',
                            //color: Colors.grey[700],
                            //wordSpacing: 1.5,
                            height: 1.5
                        ),
                      ),
                    ),
                  ],
                );
              }
              )
          ),
          /*
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: Dimensions.width20),
                width: Dimensions.screenWidth/2,
                child: Text("Net weight (Kg)",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                      fontFamily: 'Times New Roman',
                      //fontFamily: 'Times New Roman',
                      //color: Colors.grey[700],
                      //wordSpacing: 1.5,
                      height: 1.5
                  ),
                ),
              ),
              Container(
                //color: Colors.cyan,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: Dimensions.width5),
                width: Dimensions.screenWidth/2-4*Dimensions.width20,
                child: Text("73",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                      fontFamily: 'Times New Roman',
                      //fontFamily: 'Times New Roman',
                      //color: Colors.grey[700],
                      //wordSpacing: 1.5,
                      height: 1.5
                  ),
                ),
              ),
            ],
          ),

           */
        ],
      ))
    );
    */
  }
}

class Choice {
  const Choice({required this.title, required this.value});
  final String title;
  final String value;
}
