import 'package:handicraft/src/modules/cart/data/repo/interface/cart.dart';
import 'package:handicraft/src/modules/cart/domain/entities/cart_item.dart';

class CartRepo implements Cart {
  @override
  Future<int> addToCart(CartItem item) {
    // TODO: implement addToCart
    throw UnimplementedError();
  }

  @override
  Future<void> clearCart() {
    // TODO: implement clearCart
    throw UnimplementedError();
  }

  @override
  Future<void> decrement(int id) {
    // TODO: implement decrement
    throw UnimplementedError();
  }

  @override
  Future<void> incrementCount(int id) {
    // TODO: implement incrementCount
    throw UnimplementedError();
  }

  @override
  Future<void> removeFromCart(int id) {
    // TODO: implement removeFromCart
    throw UnimplementedError();
  }
}
