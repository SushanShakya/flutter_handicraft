// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:handicraft/src/modules/handicraft/domain/entities/product.dart';

class CartWidget extends StatelessWidget {
  final Function(GlobalKey) onAddToCart;
  final Product product;
  CartWidget({
    Key? key,
    required this.onAddToCart,
    required this.product,
  }) : super(key: key);

  final GlobalKey widgetKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (c, box) => SizedBox(
        height: box.maxHeight,
        width: box.maxWidth,
        child: Stack(
          children: [
            Positioned.fill(
              child: Body(
                product: product,
                widgetKey: widgetKey,
                onAddToCart: () {
                  onAddToCart(widgetKey);
                },
              ),
            ),
            Positioned(
              bottom: 10,
              right: 20,
              child: IconButton(
                onPressed: () {
                  onAddToCart(widgetKey);
                },
                icon: Container(
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  final GlobalKey widgetKey;
  final void Function() onAddToCart;
  final Product product;
  const Body({
    Key? key,
    required this.widgetKey,
    required this.onAddToCart,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(product.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        key: widgetKey,
                        child: Material(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 15.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Rs " + product.price.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 15.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // TextButton(
                //   onPressed: onAddToCart,
                //   child: const Text('Add to cart'),
                // ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Swipe left to view more',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 15.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
