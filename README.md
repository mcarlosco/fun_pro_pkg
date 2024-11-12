# Fun Pro Package

Package developed with [Dart](https://dart.dev/).

## Features

Functional programming but with [`Coin`](https://github.com/mcarlosco/fun_pro_pkg/blob/main/lib/src/coin.dart)s, which are flipped instead folded to reveal their value.

## Getting started

```yaml
fun_pro_pkg:
  git:
    url: https://github.com/mcarlosco/fun_pro_pkg
    ref: main
```

## Usage

```dart
Coin<double, Exception> divide(int dividend, int divisor) => divisor != 0
    ? Coin.heads(dividend / divisor)
    : Coin.tails(InfinityQuotientException());

// ...

divide(5, 2).flip<void>(print, print); // 2.5
divide(5, 0).flip<void>(print, print); // Instance of 'InfinityQuotientException'
```

## Additional information

Este repositorio es personal y complementa las Fases 3 y 5 de la Ruta de Crecimiento Práctica del Chapter Mobile.
