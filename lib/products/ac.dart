import 'package:flutter/material.dart';
import 'package:ifb_store/widgets/list_widget.dart';
class AC extends StatefulWidget {
  const AC({Key? key}) : super(key: key);

  @override
  State<AC> createState() => _ACState();
}

class _ACState extends State<AC> {
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
  Choice(title: 'AC ZX', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/ac.png"),
  Choice(title: 'AC ZXS', price: '₹ 36,550', ratings:'4.1', icon: "assets/icons/ac1.png"),
  Choice(title: 'AC', price: '₹ 22,990', ratings:'4.7', icon: "assets/icons/ac1.png"),
  Choice(title: 'AC WX', price: '₹ 32,000', ratings:'4.0', icon: "assets/icons/ac.png"),
  Choice(title: 'AC Senorita WX', price: '₹ 32,000', ratings:'4.2', icon: "assets/icons/ac1.png"),
  Choice(title: 'AC ZXS', price: '₹ 36,550', ratings:'4.3', icon: "assets/icons/ac.png"),
  Choice(title: 'AC TL-SSDB 7.5Kg', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/ac1.png"),
  Choice(title: 'Ac WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/ac.png"),
  Choice(title: 'AC WX', price: '₹ 32,000', ratings:'4.8', icon: "assets/icons/ac1.png"),
  Choice(title: 'AC ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/ac.png"),
  Choice(title: 'AC WX', price: '₹ 32,000', ratings:'5.0', icon: "assets/icons/ac.png"),
];