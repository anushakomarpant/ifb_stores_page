import 'package:get/get.dart';
import 'package:ifb_store/utils/dimensions.dart';
import 'package:ifb_store/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:ifb_store/utils/colors.dart';

class ImageListViewPage extends StatefulWidget {
  const ImageListViewPage({Key? key}) : super(key: key);

  @override
  State<ImageListViewPage> createState() => _ImageListViewPageState();
}

class _ImageListViewPageState extends State<ImageListViewPage> {
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
                    child: TextCard(choice: choices[4],hi: hiddenImages,)
                        /*
                    Container(
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

                         */
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
  const Choice({required this.title, required this.icon, required this.img, required this.index});
  final String title;
  final IconData icon;
  final int index;
  final String img;
}
List<Choice> choices = <Choice>[
  const Choice(title: 'Fabric Care', icon: Icons.home, img: "assets/images/fabric-care2.jpg", index:0),
  const Choice(title: 'Machine Care', icon: Icons.contacts, img: "assets/images/fabric-care3.jpg", index:1),
  const Choice(title: 'Dish Care', icon: Icons.map, img: "assets/images/dishwasher.jpg", index:2),
  const Choice(title: 'Kitchen Care', icon: Icons.phone, img: "assets/images/kitchen4.jpg", index:3),
  const Choice(title: 'Kitchen Gadgets', icon: Icons.camera_alt, img: "assets/images/kitchen2.jpg", index:4),
  const Choice(title: 'Accessories', icon: Icons.settings, img: "assets/images/kitchen3.jpg", index:5),
  const Choice(title: 'Fabric Care', icon: Icons.home, img: "assets/images/fabric_care1.jpg", index:6),
  const Choice(title: 'Machine Care', icon: Icons.contacts, img: "assets/images/washing-machine3.jpg", index:6),
  const Choice(title: 'Kitchen Care', icon: Icons.phone, img: "assets/images/kitchen1.jpg", index:7),
  const Choice(title: 'Kitchen Gadgets', icon: Icons.camera_alt, img: "assets/images/kitchen5.jpg", index:8),
  const Choice(title: 'Accessories', icon: Icons.settings, img: "assets/images/kitchen6.jpg", index:9),

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
          //int positn= listView.getItemIdAtPosition(positn);
          Navigator.push(context, MaterialPageRoute(builder:
              (BuildContext context){
            return ImageI(image: choice.img,choice1: choice,i:choice.index); }
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
        child:
        Container(
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

class TextCard extends StatelessWidget {
  const TextCard({ Key ? key, required this.choice,required this.hi}) : super(key: key);
  final Choice choice;
  final int hi;
  @override
  Widget build(BuildContext context) {
    //return Card
    return
      //Card
      Center(
        child:
        GestureDetector(
          onTap: (){
            //int positn= listView.getItemIdAtPosition(positn);
            Navigator.push(context, MaterialPageRoute(builder:
                (BuildContext context){
              return ImageI(image: choice.img,choice1: choice,i:choice.index); }
            ),);
          },
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
            Center(child: Text("+$hi",
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
      );

  }
}

class ImageI extends StatelessWidget {
  ImageI({ Key ? key,
    required this.choice1,
    required this.image,
    required this.i,
  }) : super(key: key);

  Choice choice1;
  final String image;
  late int i;
  late  int z=0;


  PageController pageController = PageController(viewportFraction: 1.0);
  //int currentIndex=1;

  @override
  Widget build(BuildContext context) {
    //return Card
    return
      //Card
      Scaffold(
        body: Center(
          child: SizedBox(
            height: Dimensions.screenWidth,
            width: Dimensions.screenWidth,
            child: PageView.builder(
                controller: pageController,
                itemCount: choices.length,
                itemBuilder: (context, position){
                  //return _buildPageItem(position);
                  return _buildPageItem(position+i);
                  //i++;
                }),
          ),


              /*
          Container(
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

               */
        ),
      );


  }

  Widget _buildPageItem(int index){
    if(index==choices.length||z==choices.length){index=0; z=1;}
    //if(z==choices.length){z=0; }
    return Container(
      //height: Dimensions.width50*3,
      // width: Dimensions.width50*3,
      margin: EdgeInsets.all(Dimensions.width30),
      decoration: BoxDecoration(
        color: index.isEven?const Color(0xFF89dad0):const Color(0xFF9294cc),
        image: DecorationImage(
            fit: BoxFit.fill,
            image:
            //((index.isLowerThan(choices.length))&(index.isGreaterThan(0)))||(index.isEqual(0))?
            index.isLowerThan(choices.length)?
            AssetImage(choices[index++].img) :AssetImage(choices[z++].img)
            //AssetImage(choices[index++].img) :AssetImage(choices[z++].img)
        ),
      ),
    );
    /*
    return Container(
      //height: Dimensions.width50*3,
      // width: Dimensions.width50*3,
      margin: EdgeInsets.all(Dimensions.width30),
      decoration: BoxDecoration(
        color: index.isEven?const Color(0xFF89dad0):const Color(0xFF9294cc),
        image: DecorationImage(
            fit: BoxFit.fill,
            image:
            //((index.isLowerThan(choices.length))&(index.isGreaterThan(0)))||(index.isEqual(0))?
            index.isLowerThan(choices.length)?
            AssetImage(choices[index++].img)
                :AssetImage(choices[z++].img)
                //:AssetImage(choices[(choices.length-index)+z++].img)
          //:(AssetImage(choices[index].img))
            /*
                :(z.isLowerThan(choices.length)?
                AssetImage(choices[z++].img):
            AssetImage(choices[z].img)
            )
        */
        ),
      ),
    );

     */

    //z=z+1;
  }
  //index=index+1;
}
