import 'package:flutter/cupertino.dart';

class SmallText extends StatefulWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  double height;
  SmallText({Key? key, this.color = const Color(0xFF332d2b),
    required this.text,
    this.size=12,
    this.overFlow=TextOverflow.ellipsis,
    this.height=1.0
  }) : super(key: key);

  @override
  State<SmallText> createState() => _SmallTextState();
}

class _SmallTextState extends State<SmallText> {
  @override
  Widget build(BuildContext context) {
    return Text(
        widget.text,
        overflow:widget.overFlow,
        style: TextStyle(
            fontFamily: 'Roboto',
            color:widget.color,
            fontSize: widget.size,
            fontWeight: FontWeight.w400,
            height: widget.height
        )
    );
  }
}
