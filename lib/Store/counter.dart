import 'package:mobx/mobx.dart';
import 'package:mobxdemo/product/product.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int counter = 0;
  @observable
  ObservableList<Product> carts = ObservableList<Product>();
  @action
  increment() {
    counter++;
  }

  @action
  add(Product product) {
    carts.add(product);
  }
}
