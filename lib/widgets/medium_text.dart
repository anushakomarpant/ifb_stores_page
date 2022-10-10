import 'package:flutter/cupertino.dart';
import 'package:ifb_store/utils/dimensions.dart';

class MediumText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  MediumText({Key? key, this.color = const Color(0xFF332d2b),
    required this.text,
    this.size=0,
    this.overFlow=TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        maxLines: 1,
        overflow:overFlow,
        style: TextStyle(
            fontFamily: 'Roboto',
            color:color,
            fontSize: size==0?Dimensions.font19:size,
            fontWeight: FontWeight.w400
        )
    );
  }
}
