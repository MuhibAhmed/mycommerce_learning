import 'package:flutter/material.dart';
import 'package:mycommerce/models/products.dart';
import 'package:mycommerce/screens/productscreen.dart';
import 'package:mycommerce/widgets/rating_widget.dart';

class ProductGrid extends StatelessWidget {
  final List<Products> productList;

  const ProductGrid({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        // crossAxisCount: 2, // Two columns
        childAspectRatio: 0.7, // Control the height of the grid items
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: productList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return ProductScreen(product: productList[index]);
            }));
          },
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      productList[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        productList[index].title,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const RatingWidget(rating: 4.5),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  r"$" + productList[index].price.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
