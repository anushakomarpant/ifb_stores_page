import 'package:flutter/material.dart';
import 'package:ifb_store/utils/dimensions.dart';


class DescriptionTextWidget extends StatefulWidget {
  Color? color;
  final String text;

  //double size;

  DescriptionTextWidget({Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    //this.size=12,
  }) : super(key: key);

  @override
  State<DescriptionTextWidget> createState() => _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  late String firstHalf;
  late String secondHalf;

  final String more= "Read more";
  final String less= "Show less";

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 183) {
      firstHalf = widget.text.substring(0, 183);
      secondHalf = widget.text.substring(183, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: Dimensions.width30, ),
      //margin: EdgeInsets.only(bottom: Dimensions.height5),
      //padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty ?
      Text(firstHalf,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 13,
          fontFamily: 'Times New Roman',
          //fontFamily: 'Times New Roman',
          //color: Colors.grey[700],
          //wordSpacing: 1.5,
          height: 1.5,
        ),
      ) : Column(
        children: <Widget>[
          Text(flag ? ("$firstHalf...") : (firstHalf + secondHalf),
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
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  flag ?more : less,
                  //flag ? "Read more     " : "Show less     ",
                  style: TextStyle(color: Colors.grey[700], fontFamily: 'Times New Roman',),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                flag = !flag;
              });
            },
          ),
        ],
      ),
    );
  }
}

/*

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({@required this.text});

  @override
  _DescriptionTextWidgetState createState() => new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  String firstHalf;
  String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 50) {
      firstHalf = widget.text.substring(0, 50);
      secondHalf = widget.text.substring(50, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ? new Text(firstHalf)
          : new Column(
        children: <Widget>[
          new Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf)),
          new InkWell(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text(
                  flag ? "show more" : "show less",
                  style: new TextStyle(color: Colors.blue),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                flag = !flag;
              });
            },
          ),
        ],
      ),
    );
  }
}

 */

