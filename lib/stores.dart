//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/utils/colors.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/big_text.dart';
import 'package:ifb_store/widgets/small_text.dart';
import 'package:ifb_store/product_scroll.dart';


class Stores extends StatefulWidget {
  const Stores({Key? key}) : super(key: key);

  @override
  State<Stores> createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green[50],
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          //showing the header
          Container(
          ),

          //showing the homePageBody
          const Expanded(
              child: SingleChildScrollView(
                //child: StorePageBody(),
                child: ProductScroll(),

              ),),
        ],
      ),
    );
  }
}
