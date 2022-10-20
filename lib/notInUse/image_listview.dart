import 'package:get/get.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/utils/colors.dart';

class ImageListView extends StatefulWidget {
  const ImageListView({Key? key}) : super(key: key);

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  final int hiddenImages=choices.length-5;
  PageController pageController = PageController(viewportFraction: 1.0);
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(
          height: Dimensions.screenWidth-3*Dimensions.width30,
          width: Dimensions.screenWidth-3*Dimensions.width30,
          child: PageView.builder(
              controller: pageController,
              itemCount: choices.length,
              itemBuilder: (context, position){
                return _buildPageItem(position);
              }),
        ),

        Container(
          margin: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width20),
          height: 80,
          //height: Dimensions.screenWidth/3.3,
          //color: Colors.orange,
          child:
          Stack(
            children: [
              ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                  List.generate(4, (index) {
                    return Center(
                      child: ImageCard(choice: choices[index]),
                    );
                  }
                  ),

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: ImageTextCard(choice: choices[4]),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Container(
                      //color: Colors.white,
                      //margin: EdgeInsets.all(1),
                      //height: Dimensions.screenWidth/6,
                      //width: Dimensions.screenWidth/6,
                      height: Dimensions.image,
                      width: Dimensions.image,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.6),
                            //Colors.grey.withOpacity(0.0),
                            //Colors.black
                          ],
                          //stops: [0.0, 1.1]
                        ),
                      ),
                      child:
                      Center(child: Text("+$hiddenImages",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          //decorationThickness: 0.5,
                          //fontWeight: FontWeight.w100
                        ),
                      )),
                    ),
                  ),
                ],
              ),

            ],
          ),

              /*
          ListView(
              //padding: EdgeInsets.only(left: Dimensions.width5, ),
              //padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              children: List.generate(choices.length, (index) {
                return Center(
                  child: SelectCard(choice: choices[index]),
                );
              }
              )
          ),

               */
        ),
      ],
    );
  }
  Widget _buildPageItem(int index){
    return Container(
    //height: Dimensions.width50*3,
   // width: Dimensions.width50*3,
    margin: EdgeInsets.all(Dimensions.width30),
      decoration: BoxDecoration(
        color: index.isEven?const Color(0xFF89dad0):const Color(0xFF9294cc),
        image: DecorationImage(
            fit: BoxFit.fill,
            image:
            index.isLowerThan(choices.length)?
            AssetImage(choices[index++].img)
                :AssetImage(choices[index].img)
        ),
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon, required this.img});
  final String title;
  final IconData icon;
  //final Image img;
  final String img;
}
List<Choice> choices = <Choice>[
  const Choice(title: 'Fabric Care', icon: Icons.home, img: "assets/images/fabric-care2.jpg"),
  const Choice(title: 'Machine Care', icon: Icons.contacts, img: "assets/images/fabric-care3.jpg"),
  const Choice(title: 'Dish Care', icon: Icons.map, img: "assets/images/dishwasher.jpg"),
  const Choice(title: 'Kitchen Care', icon: Icons.phone, img: "assets/images/kitchen4.jpg"),
  const Choice(title: 'Kitchen Gadgets', icon: Icons.camera_alt, img: "assets/images/kitchen2.jpg"),
  const Choice(title: 'Accessories', icon: Icons.settings, img: "assets/images/kitchen3.jpg"),
  const Choice(title: 'Fabric Care', icon: Icons.home, img: "assets/images/fabric_care1.jpg"),
  const Choice(title: 'Machine Care', icon: Icons.contacts, img: "assets/images/washing-machine3.jpg"),
  const Choice(title: 'Kitchen Care', icon: Icons.phone, img: "assets/images/kitchen1.jpg"),
  const Choice(title: 'Kitchen Gadgets', icon: Icons.camera_alt, img: "assets/images/kitchen5.jpg"),
  const Choice(title: 'Accessories', icon: Icons.settings, img: "assets/images/kitchen6.jpg"),

];

class ImageCard extends StatelessWidget {
  const ImageCard({ Key ? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //return Card
    return Center(

        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:
                (BuildContext context){
              return ImageI(image: choice.img,); }
            ),);
          },

          child: Container(
            margin: EdgeInsets.only(right: Dimensions.imageMargin),
            height: Dimensions.image,
            width: Dimensions.image,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(choice.img)
              ),
            ),
          ),
        ),
      );

  }
}

class ImageTextCard extends StatelessWidget {
  const ImageTextCard({ Key ? key, required this.choice}) : super(key: key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    //return Card
    return
      //Card
      Center(
        child: Container(
          //margin: EdgeInsets.all(1),
            height: Dimensions.image,
            width: Dimensions.image,
          //height: Dimensions.screenWidth/6,
          //width: Dimensions.screenWidth/6,
          //margin: const EdgeInsets.only(top: 10,bottom: 10),
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(Dimensions.radius10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(choice.img)
              //image: AssetImage("assets/newimages/fabric_care.jpg"),
            ),
          ),
        ),
      );

  }
}

class ImageI extends StatelessWidget {
  const ImageI({ Key ? key,
    //required this.choice,
    required this.image,
  }) : super(key: key);

  //Choice choice;
  final String image;

  @override
  Widget build(BuildContext context) {
    //return Card
    return
      //Card
      Scaffold(
        body: Center(
          child: Container(
            height: Dimensions.screenWidth*3/4,
            width: Dimensions.screenWidth*3/4,
            margin: EdgeInsets.all(Dimensions.width30),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(image),
              ),
            ),
          ),
        ),
      );

  }
}
