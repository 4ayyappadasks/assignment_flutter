import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../modal/product model.dart';

class product_tile extends StatelessWidget {

  final Welcome product;

  product_tile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView( 
        child: Column(
          children: [
            Stack(
              children: [
                GestureDetector(onTap: () => showModalBottomSheet(isScrollControlled: true,
                  context: context, builder: (context) {
                  return Container(child: Column(children: [
                    Text("details",style: TextStyle(fontSize: 30)),
                    Text("name: ${product.title}"),
                    Text("rate: ${product.rating!.rate}"),
                    Text("count: ${product.rating!.count}"),
                    Text("prize: ${product.price}"),
                    Text("id: ${product.id}"),
                    Text("category: ${product.category}"),
                    Text("description: ${product.description}")]),);
                },),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    clipBehavior:Clip.antiAlias,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: CachedNetworkImage(height: 50,width: 50,imageUrl: product.image,
                    ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
