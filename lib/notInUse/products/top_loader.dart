import 'package:flutter/material.dart';
import 'package:ifb_store/widgets/list_widget.dart';

class TopLoader extends StatefulWidget {
  const TopLoader({Key? key}) : super(key: key);

  @override
  State<TopLoader> createState() => _TopLoaderState();
}

class _TopLoaderState extends State<TopLoader> {
  @override
  Widget build(BuildContext context) {
    //String zipcode;
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
  Choice(title: 'Top Loader ZX', price: '₹ 52,000', ratings:'4.9', icon: "assets/icons/washing-machine5.png"),
  Choice(title: 'Senorita ZXS', price: '₹ 46,550', ratings:'4.3', icon: "assets/icons/washing-machine1.png"),
  Choice(title: 'Senorita TL-SSDB 7.5Kg', price: '₹ 22,990', ratings:'4.2', icon: "assets/icons/washing-machine2.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'4.5', icon: "assets/icons/washing-machine3.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/washing-machine4.png"),
  Choice(title: 'Senorita ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/washing-machine5.png"),
  Choice(title: 'Senorita TL-SSDB 7.5Kg', price: '₹ 22,990', ratings:'4.1', icon: "assets/icons/washing-machine2.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/washing-machine3.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'4.6', icon: "assets/icons/washing-machine4.png"),
  Choice(title: 'Senorita ZXS', price: '₹ 36,550', ratings:'4.4', icon: "assets/icons/washing-machine1.png"),
  Choice(title: 'Senorita TL-SSDB 7.5Kg', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/washing-machine4.png"),
  Choice(title: 'Senorita WX', price: '₹ 52,000', ratings:'4.2', icon: "assets/icons/washing-machine5.png"),
];
