// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _Counter, Store {
  final _$counterAtom = Atom(name: '_Counter.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$cartsAtom = Atom(name: '_Counter.carts');

  @override
  ObservableList<Product> get carts {
    _$cartsAtom.reportRead();
    return super.carts;
  }

  @override
  set carts(ObservableList<Product> value) {
    _$cartsAtom.reportWrite(value, super.carts, () {
      super.carts = value;
    });
  }

  final _$_CounterActionController = ActionController(name: '_Counter');

  @override
  dynamic increment() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic add(Product product) {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.add');
    try {
      return super.add(product);
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
carts: ${carts}
    ''';
  }
}
