import 'package:fun_pro_pkg/fun_pro_pkg.dart';

final class InfinityQuotientException implements Exception {}

Coin<double, Exception> divide(int dividend, int divisor) => divisor != 0
    ? Coin.heads(dividend / divisor)
    : Coin.tails(InfinityQuotientException());

void main() {
  divide(5, 2).flip<void>(print, print);
  divide(5, 0).flip<void>(print, print);
}
