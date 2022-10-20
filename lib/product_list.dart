import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/widgets/list_widget.dart';

class ProductsLists extends StatelessWidget {
  final List listname;

   const ProductsLists({Key? key,
    required this.listname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: List.generate(listname.length, (index) {
          return Center(
            child: ListWidget(choice: listname[index]),
          );
        }
        )
    );
  }
}

const List<Choice> frontLoader = <Choice>[
  Choice(title: 'Senorita ZX', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/washing-machine.png"),
  Choice(title: 'Senorita ZXS', price: '₹ 36,550', ratings:'4.1', icon: "assets/icons/washing-machine1.png"),
  Choice(title: 'Senorita TL-SSDB 7.5Kg', price: '₹ 22,990', ratings:'4.7', icon: "assets/icons/washing-machine2.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'4.0', icon: "assets/icons/washing-machine3.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'4.2', icon: "assets/icons/washing-machine4.png"),
  Choice(title: 'Senorita ZXS', price: '₹ 36,550', ratings:'4.3', icon: "assets/icons/washing-machine5.png"),
  Choice(title: 'Senorita TL-SSDB 7.5Kg', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/washing-machine2.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/washing-machine3.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'4.8', icon: "assets/icons/washing-machine4.png"),
  Choice(title: 'Senorita ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/washing-machine1.png"),
  Choice(title: 'Senorita WX', price: '₹ 32,000', ratings:'5.0', icon: "assets/icons/washing-machine6.png"),
];

const List<Choice> topLoader = <Choice>[
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

const List<Choice> dryer = <Choice>[
  Choice(title: 'Dryer ZX', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/tumble-dryer.png"),
  Choice(title: 'Dryer ZXS', price: '₹ 36,550', ratings:'4.1', icon: "assets/icons/dryer1.png"),
  Choice(title: 'Dryer TL-SSDB 7.5Kg', price: '₹ 22,990', ratings:'4.7', icon: "assets/icons/dryer2.png"),
  Choice(title: 'Dryer WX', price: '₹ 32,000', ratings:'4.0', icon: "assets/icons/dryer3.png"),
  Choice(title: 'Dryer WX', price: '₹ 32,000', ratings:'4.2', icon: "assets/icons/dryer4.png"),
  Choice(title: 'Dryer Senorita ZXS', price: '₹ 36,550', ratings:'4.3', icon: "assets/icons/dryer6.png"),
  Choice(title: 'Dryer SSDB 7.5Kg', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/tumble-dryer.png"),
  Choice(title: 'Dryer WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/dryer3.png"),
  Choice(title: 'Dryer WX', price: '₹ 32,000', ratings:'4.8', icon: "assets/icons/dryer4.png"),
  Choice(title: 'Dryer ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/dryer1.png"),
  Choice(title: 'Dryer WX', price: '₹ 32,000', ratings:'5.0', icon: "assets/icons/dryer.png"),
];

const List<Choice> microwave = <Choice>[
  Choice(title: 'Microwave ZX', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/oven.png"),
  Choice(title: 'Microwave ZXS', price: '₹ 36,550', ratings:'4.1', icon: "assets/icons/oven1.png"),
  Choice(title: 'Microwave TL-SSDB 5Kg', price: '₹ 22,990', ratings:'4.7', icon: "assets/icons/oven2.png"),
  Choice(title: 'Microwave WXY', price: '₹ 32,000', ratings:'4.0', icon: "assets/icons/oven3.png"),
  Choice(title: 'Microwave WX', price: '₹ 32,000', ratings:'4.2', icon: "assets/icons/oven4.png"),
  Choice(title: 'Microwave ZXS', price: '₹ 36,550', ratings:'4.3', icon: "assets/icons/oven5.png"),
  Choice(title: 'Microwave TL 5Kg', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/oven6.png"),
  Choice(title: 'Microwave WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/oven.png"),
  Choice(title: 'Microwave WX', price: '₹ 32,000', ratings:'4.8', icon: "assets/icons/microwave-oven2.png"),
  Choice(title: 'Microwave ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/oven1.png"),
  Choice(title: 'Microwave WX', price: '₹ 32,000', ratings:'5.0', icon: "assets/icons/microwave-oven.png"),
];

const List<Choice> dishwasher = <Choice>[
  Choice(title: 'Dishwasher ZX', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/dishwasher7.png"),
  Choice(title: 'Dishwasher AC ZXS', price: '₹ 36,550', ratings:'4.1', icon: "assets/icons/dishwasher1.png"),
  Choice(title: 'Dishwasher AC', price: '₹ 22,990', ratings:'4.7', icon: "assets/icons/dishwasher.png"),
  Choice(title: 'Dishwasher WX', price: '₹ 32,000', ratings:'4.0', icon: "assets/icons/dishwasher2.png"),
  Choice(title: 'Dishwasher Senorita WX', price: '₹ 32,000', ratings:'4.2', icon: "assets/icons/dishwasher3.png"),
  Choice(title: 'Dishwasher ZXS', price: '₹ 36,550', ratings:'4.3', icon: "assets/icons/dishwasher4.png"),
  Choice(title: 'Dishwasher TL', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/dishwasher1.png"),
  Choice(title: 'Dishwasher Ac WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/dishwasher.png"),
  Choice(title: 'Dishwasher WX', price: '₹ 32,000', ratings:'4.8', icon: "assets/icons/dishwasher5.png"),
  Choice(title: 'Dishwasher ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/dishwasher7.png"),
  Choice(title: 'Dishwasher WX', price: '₹ 32,000', ratings:'5.0', icon: "assets/icons/dishwasher6.png"),
];

const List<Choice> ac = <Choice>[
  Choice(title: 'AC ZX', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/ac.png"),
  Choice(title: 'AC ZXS', price: '₹ 36,550', ratings:'4.1', icon: "assets/icons/ac1.png"),
  Choice(title: 'AC', price: '₹ 22,990', ratings:'4.7', icon: "assets/icons/ac2.png"),
  Choice(title: 'AC WX', price: '₹ 32,000', ratings:'4.0', icon: "assets/icons/ac3.png"),
  Choice(title: 'AC Senorita WX', price: '₹ 32,000', ratings:'4.2', icon: "assets/icons/ac4.png"),
  Choice(title: 'AC ZXS', price: '₹ 36,550', ratings:'4.3', icon: "assets/icons/ac5.png"),
  Choice(title: 'AC TL-SSDB', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/ac6.png"),
  Choice(title: 'Ac WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/ac.png"),
  Choice(title: 'AC WX', price: '₹ 32,000', ratings:'4.8', icon: "assets/icons/ac1.png"),
  Choice(title: 'AC ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/ac2.png"),
  Choice(title: 'AC WX', price: '₹ 32,000', ratings:'5.0', icon: "assets/icons/ac4.png"),
];

const List<Choice> oven = <Choice>[
  Choice(title: 'Oven ZX', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/microwave.png"),
  Choice(title: 'Oven ZXS', price: '₹ 36,550', ratings:'4.1', icon: "assets/icons/oven.png"),
  Choice(title: 'Oven TL-SSDB 5Kg', price: '₹ 22,990', ratings:'4.7', icon: "assets/icons/microwave-oven.png"),
  Choice(title: 'Oven WX', price: '₹ 32,000', ratings:'4.0', icon: "assets/icons/oven3.png"),
  Choice(title: 'Oven WX', price: '₹ 32,000', ratings:'4.2', icon: "assets/icons/microwave-oven2.png"),
  Choice(title: 'Oven ZXS', price: '₹ 36,550', ratings:'4.3', icon: "assets/icons/oven4.png"),
  Choice(title: 'Oven TL 5Kg', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/microwave.png"),
  Choice(title: 'Oven WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/oven1.png"),
  Choice(title: 'Oven WX', price: '₹ 32,000', ratings:'4.8', icon: "assets/icons/oven7.png"),
  Choice(title: 'Oven ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/oven6.png"),
  Choice(title: 'Oven Senorita WX', price: '₹ 32,000', ratings:'5.0', icon: "assets/icons/microwave-oven.png"),
];

const List<Choice> hob = <Choice>[
  Choice(title: 'Hob AC ZX', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/hob.png"),
  Choice(title: 'Hob ZXS', price: '₹ 36,550', ratings:'4.1', icon: "assets/icons/hob1.png"),
  Choice(title: 'Hob AC', price: '₹ 22,990', ratings:'4.7', icon: "assets/icons/hob2.png"),
  Choice(title: 'Hob WX', price: '₹ 32,000', ratings:'4.0', icon: "assets/icons/hob3.png"),
  Choice(title: 'Hob AC Senorita WX', price: '₹ 32,000', ratings:'4.2', icon: "assets/icons/hob4.png"),
  Choice(title: 'Hob  ZXS', price: '₹ 36,550', ratings:'4.3', icon: "assets/icons/hob5.png"),
  Choice(title: 'Hob ', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/hob6.png"),
  Choice(title: 'Hob  WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/hob7.png"),
  Choice(title: 'Hob AC WX', price: '₹ 32,000', ratings:'4.8', icon: "assets/icons/hob.png"),
  Choice(title: 'Hob ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/hob1.png"),
  Choice(title: 'Hob  WX', price: '₹ 32,000', ratings:'5.0', icon: "assets/icons/hob2.png"),
];

const List<Choice> chimney = <Choice>[
  Choice(title: 'Chimney ZX', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/chimney.png"),
  Choice(title: 'Chimney ZXS', price: '₹ 36,550', ratings:'4.1', icon: "assets/icons/chimney2.png"),
  Choice(title: 'Chimney', price: '₹ 22,990', ratings:'4.7', icon: "assets/icons/chimney3.png"),
  Choice(title: 'Chimney WX', price: '₹ 32,000', ratings:'4.0', icon: "assets/icons/chimney.png"),
  Choice(title: 'Chimney WX', price: '₹ 32,000', ratings:'4.2', icon: "assets/icons/chimney2.png"),
  Choice(title: 'Chimney ZXS', price: '₹ 36,550', ratings:'4.3', icon: "assets/icons/chimney3.png"),
  Choice(title: 'Chimney', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/chimney.png"),
  Choice(title: 'Chimney WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/chimney2.png"),
  Choice(title: 'Chimney WX', price: '₹ 32,000', ratings:'4.8', icon: "assets/icons/kitchen-cabinet.png"),
  Choice(title: 'Chimney ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/chimney.png"),
  Choice(title: 'Chimney WX', price: '₹ 32,000', ratings:'5.0', icon: "assets/icons/kitchen-cabinet2.png"),
];

const List<Choice> accessories = <Choice>[
  Choice(title: 'Accessories', price: '₹ 32,000', ratings:'4.3', icon: "assets/icons/washing-machine5.png"),
  Choice(title: 'Accessories ZXS', price: '₹ 36,550', ratings:'4.1', icon: "assets/icons/dishwashing.png"),
  Choice(title: 'Accessories', price: '₹ 22,990', ratings:'4.7', icon: "assets/icons/dishwashing3.png"),
  Choice(title: 'Accessories WX', price: '₹ 32,000', ratings:'4.0', icon: "assets/icons/dishwashing2.png"),
  Choice(title: 'Accessories WX', price: '₹ 32,000', ratings:'4.2', icon: "assets/icons/kitchen-cabinet.png"),
  Choice(title: 'Accessories ZXS', price: '₹ 36,550', ratings:'4.3', icon: "assets/icons/kitchen-cabinet2.png"),
  Choice(title: 'Accessories TL', price: '₹ 22,990', ratings:'4.3', icon: "assets/icons/kitchen-cabinet3.png"),
  Choice(title: 'Accessories WX', price: '₹ 32,000', ratings:'4.7', icon: "assets/icons/oven7.png"),
  Choice(title: 'Accessories WX', price: '₹ 32,000', ratings:'4.8', icon: "assets/icons/ac1.png"),
  Choice(title: 'Accessories ZXS', price: '₹ 36,550', ratings:'4.9', icon: "assets/icons/ac.png"),
  Choice(title: 'Accessories WX', price: '₹ 32,000', ratings:'5.0', icon: "assets/icons/dishwashing.png"),
];