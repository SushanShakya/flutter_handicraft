import 'package:add_to_cart_animation/add_to_cart_animation.dart';
import 'package:add_to_cart_animation/add_to_cart_icon.dart';
import 'package:flutter/material.dart';
import 'package:handicraft/src/modules/handicraft/domain/entities/product.dart';
import 'package:handicraft/src/modules/handicraft/gui/components/craft_widget.dart';
import 'package:handicraft/src/modules/handicraft/gui/views/detail_view.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late GlobalKey<CartIconKey> cartKey;
  late Function(GlobalKey) runAddToCartAnimation;

  final List<Product> products = [
    Product(
      image:
          'https://i1.himalayas.life/c/u/f67894297b6134a6b759b3a9ec15b6cb/2018/01/06050847/wooden-Mask-for-nepal.jpg',
      name: "Art of Kathmandu",
      description: 'This is a sacred art',
      price: 100,
    ),
    Product(
      image:
          'https://media.istockphoto.com/id/1194868251/photo/patan.jpg?s=612x612&w=0&k=20&c=C0b9mNx2z5jTnE5LMa2NAPKrDKQ8gEzrf2HQM4hCf3g=',
      name: "Some Other Art",
      description: 'This is some other sacred art',
      price: 100,
    ),
  ];

  @override
  void initState() {
    super.initState();
    cartKey = GlobalKey<CartIconKey>();
  }

  @override
  Widget build(BuildContext context) {
    return AddToCartAnimation(
      gkCart: cartKey,
      receiveCreateAddToCardAnimationMethod:
          (Future<void> Function(GlobalKey<State<StatefulWidget>>) data) {
        runAddToCartAnimation = data;
      },
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned.fill(
                  child: PageView.builder(
                    itemCount: products.length,
                    itemBuilder: (c, i) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => DetailView(product: products[i]),
                          ),
                        );
                      },
                      child: CartWidget(
                        product: products[i],
                        onAddToCart: (key) {
                          runAddToCartAnimation(key);
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: AddToCartIcon(
                    key: cartKey,
                    icon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
