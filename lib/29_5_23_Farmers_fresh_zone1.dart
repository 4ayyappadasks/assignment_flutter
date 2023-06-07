import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ffz_home extends StatefulWidget {
  const ffz_home({Key? key}) : super(key: key);

  @override
  State<ffz_home> createState() => _ffz_homeState();
}

class _ffz_homeState extends State<ffz_home> {
  var first_list = [
    "vegetables",
    "fruits",
    "tools",
    "safty items",
    "curry poweders",
    "vegetables",
    "fruits",
    "tools",
    "safty items",
    "curry poweders",
  ];
  var second_list_img = [
//    "assets/images/offer.jpg",
    "assets/images/fruits.jpg",
    "assets/images/fruits.jpg",
    "assets/images/vegitables.jpg",
    "assets/images/curry powder.jpg",
    "assets/images/fruit cuts.jpg",
    "assets/images/incredients.jpg",
    "assets/images/nutritions.jpg",
    "assets/images/proteins.jpg"
  ];
  var second_list_img_names =
      [
        "Offers",
        "fruit",
        "Vegetables",
        "Curry powder",
        "Fruit cuts",
        "Ingredients",
        "Nutritions",
        "Proteins",
      ];

  var cust_rev = [

    "A customer review is a reflection of a customer's experience"
        " with your company's products or services. Reviews can be"
        " found on sites such as Google Reviews, Amazon, Yelp, and"
        " Facebook. Consumers use customer reviews during the buyer's"
        " journey to understand how your product works and whether "
        "it's worth the investment.",

    "A customer review is a reflection of a customer's experience"
        " with your company's products or services. Reviews can be"
        " found on sites such as Google Reviews, Amazon, Yelp, and"
        " Facebook. Consumers use customer reviews during the buyer's"
        " journey to understand how your product works and whether "
        "it's worth the investment.",

    "A customer review is a reflection of a customer's experience"
        " with your company's products or services. Reviews can be"
        " found on sites such as Google Reviews, Amazon, Yelp, and"
        " Facebook. Consumers use customer reviews during the buyer's"
        " journey to understand how your product works and whether "
        "it's worth the investment."
  ];
  var prize =[
    "35",
    "34",
    "33",
    "23"
  ];
  var kg = [
    ".5 kg",
    ".5 kg",
    "1 numer",
    ".5 kg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(children:
          [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                  return SizedBox(
                    width: 150,
                    height: 45,
                    child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        color: Colors.green[50],
                        child: Center(child: Text(first_list[index],
                      style: TextStyle(color: Colors.green[900]),))),);
                },)),
            ),
            
            
            Container(
                width: 330,
                height: 150,
                child: CarouselSlider(items:
                [
                  Image.asset("assets/images/chantal-garnier-910GanwBoew-unsplash.jpg",fit: BoxFit.fitWidth),
                  Image.asset("assets/images/elaine-casap-qgHGDbbSNm8-unsplash.jpg",fit: BoxFit.fitWidth),
                  Image.asset("assets/images/nick-fewings-gpP-OkJ5BbI-unsplash.jpg",fit: BoxFit.fitWidth),
                  Image.asset("assets/images/roman-grachev-eygJ8wxgfng-unsplash.jpg",fit: BoxFit.fitWidth),
                ],
                    options: CarouselOptions(
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                    ))),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black26)),
                child: const Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Column(children: [
                      Icon(Icons.timer, color: Colors.green),
                      Text(
                        "30 MIN POLICY",
                        style: TextStyle(fontSize: 10),
                      )
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 10),
                    child: Column(children: [
                      Icon(Icons.mobile_screen_share_outlined,
                          color: Colors.green),
                      Text("TRACEBILITY", style: TextStyle(fontSize: 10))
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 10),
                    child: Column(children: [
                      Icon(Icons.menu_book_outlined, color: Colors.green),
                      Text("LOCAL SOURCING", style: TextStyle(fontSize: 10))
                    ]),
                  )
                ]),
              ),
            ),

            /// SHOP BY CATRGORY
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text("Shop By Category",
                    style: TextStyle(color: Colors.grey,fontSize: 18)),
              ),
              SizedBox(
                height: 350,
                width: 350,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: Center(child: Text(second_list_img_names[index])),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(second_list_img[index]),alignment: Alignment.topCenter),
                          borderRadius: BorderRadiusDirectional.circular(20),
                        ),
                      );
                    },),),
              TextButton(onPressed: (){}, child: Text("view more",style: TextStyle(color: Colors.green),))
            ]),

            Container(width: 350,height: 150,child: Image.asset("assets/images/frm_qut1.jpg",fit: BoxFit.fitWidth)),

            ///BEST SELLING PRODUCTS
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text("Best selling Products",
                    style: TextStyle(color: Colors.grey,fontSize: 18)),
              ),
              SizedBox(

                height: 350,
                width: 350,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return SizedBox(height: 350,width: 100,
                      child: ListTile(
                        title: Image.asset(second_list_img[index]),
                      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(second_list_img_names[index]),
                          Text("rs.${prize[index]}"),
                          Row(children: [
                            Text(kg[index]),
                            ElevatedButton(onPressed: (){}, 
                              child: Text("ADD"),style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.green)),)
                          ],)
                        ],
                      ),) ,);
                  },),),
              TextButton(onPressed: (){}, child: Text("view more",style: TextStyle(color: Colors.green),))
            ]),


            Container(width: 350,height: 150,child: Image.asset("assets/images/frm_qut2.jpg",fit: BoxFit.fitWidth)),

            Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text("Our Blog Post",
                    style: TextStyle(color: Colors.grey,fontSize: 18)),
              ),
              SizedBox(
                height: 150,
                width: 350,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Image.asset(second_list_img[index]),
                      subtitle: Text(second_list_img_names[index]),);
                  },),),
              TextButton(onPressed: (){}, child: Text("view more",style: TextStyle(color: Colors.green),))
            ]),

            Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 135),
                child: Text("What Our Coustomer Says ?",
                    style: TextStyle(color: Colors.grey,fontSize: 18)),
              ),
              Container(
                width: 350,
                height: 150,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        CircleAvatar(backgroundImage: AssetImage("assets/images/tomandjerry1.jpg")),
                        SizedBox(width: 200,height: 100,child: Text(cust_rev[index]),)
                      ],);
                    },),),
            ],),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 350,height: 70,child:
              Column(
                children: [Text(textAlign: TextAlign.center,
                  "This Kochi based farm to fork online"
                  "marketplace is connecting farmers directly "
                      "to coustomers"),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.telegram),
                Icon(Icons.telegram),
                Icon(Icons.telegram),
                Icon(Icons.telegram)],)
              ],)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 350,height: 150,child: Column(crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  Text("get to know us"),
                  Row(children: [
                    TextButton(onPressed: (){}, child: Text("about us")),
                    TextButton(onPressed: (){}, child: Text("our farmers")),
                    TextButton(onPressed: (){}, child: Text("blog")),
                  ],),
                  Text("usefull links"),
                  Row(children: [
                    TextButton(onPressed: (){}, child: Text("about us")),
                    TextButton(onPressed: (){}, child: Text("our farmers")),
                    TextButton(onPressed: (){}, child: Text("blog")),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon:Icon(Icons.track_changes)),
                      IconButton(onPressed: (){}, icon:Icon(Icons.tv)),
                      IconButton(onPressed: (){}, icon:Icon(Icons.favorite)),
                      IconButton(onPressed: (){}, icon:Icon(Icons.running_with_errors)),
                  ],),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(color: Colors.green),
              child: Center(
                child: Text(textAlign: TextAlign.justify,
                    "Copyright @ 2021 Farmers Fresh Zone"
                "All Rights Reserved v.2.40.22"),
              )),
            )

          ]
            ,),
        )
        );
  }
}
