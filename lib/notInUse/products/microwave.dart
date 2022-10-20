import 'package:flutter/material.dart';
import 'package:ifb_store/widgets/list_widget.dart';

class Microwave extends StatefulWidget {
  const Microwave({Key? key}) : super(key: key);

  @override
  State<Microwave> createState() => _MicrowaveState();
}

class _MicrowaveState extends State<Microwave> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: List.generate(products.length, (index) {
          return Center(
            child: ListWidget(choice: products[index]),
          );
        }
        )
    );
  }
}

const List<Choice> products = <Choice>[
  Choice(title: 'Microwave ZX', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/microwave.png"),
  Choice(title: 'Microwave ZXS', price: '₹ 36,550', ratings:'4.1', icon: "assets/icons/oven.png"),
  Choice(title: 'Microwave TL-SSDB 5Kg', price: '₹ 22,990', ratings:'4.7', icon: "assets/icons/microwave.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'4.0', icon: "assets/icons/oven.png"),
  Choice(title: 'Microwave WX', price: '₹ 32,000', ratings:'4.2', icon: "assets/icons/microwave.png"),
  Choice(title: 'Microwave ZXS', price: '₹ 36,550', ratings:'4.3', icon: "assets/icons/oven.png"),
  Choice(title: 'Microwave TL 5Kg', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/microwave.png"),
  Choice(title: 'Microwave WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/oven.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'4.8', icon: "assets/icons/microwave.png"),
  Choice(title: 'Microwave ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/oven.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'5.0', icon: "assets/icons/microwave.png"),
];