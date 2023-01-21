import 'package:handicraft/src/modules/cart/domain/entities/cart_item.dart';

abstract class Cart {
  Future<int> addToCart(CartItem item);
  Future<void> removeFromCart(int id);
  Future<void> incrementCount(int id);
  Future<void> decrement(int id);
  Future<void> clearCart();
}
