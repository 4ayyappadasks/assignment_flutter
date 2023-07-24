import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product control.dart';
import '../widget/Widget1.dart';


void main()
{
  runApp(GetMaterialApp(home: homepage(),));
}
class homepage extends StatelessWidget {

  final productcontrol Productcontrol = Get.put(productcontrol());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("product page"),
      ),
      body: SizedBox(
          child:
              Obx(()
              {
                if(Productcontrol.isLoading.value)
                  {
                    return Center(child: CircularProgressIndicator(),);
                  }
                else
                  {
                    return GridView.builder(
                      itemCount: Productcontrol.productlist.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                        itemBuilder:(context, index)
                        {
                          return product_tile(Productcontrol.productlist[index]);
                        },);
                  }
              })
          ),
    );
  }
}
