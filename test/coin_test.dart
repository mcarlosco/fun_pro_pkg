import 'package:fun_pro_pkg/fun_pro_pkg.dart';
import 'package:test/test.dart';

void main() {
  const h = '🥸';
  const t = '💲';

  group('Coin.flip invokes a callback based on object construction', () {
    test('Coin._h is passed to onHeads because of Coin.heads', () {
      const coin = Coin.heads(h);

      coin.flip<void>((heads) {
        expect(heads, equals(h));
      }, (tails) {
        expect(tails, isNull);
      });
    });

    test('Coin._t is passed to onTails because of Coin.tails', () {
      const coin = Coin.tails(t);

      coin.flip<void>((heads) {
        expect(heads, isNull);
      }, (tails) {
        expect(tails, equals(t));
      });
    });
  });

  group('Coin.flip returns the value returned by a callback', () {
    test('Coin._h is returned because is what onHeads returns', () {
      const coin = Coin.heads(h);

      final result = coin.flip((heads) => heads, (tails) => tails);

      expect(result, equals(h));
    });

    test('Coin._t is returned because is what onTails returns', () {
      const coin = Coin.tails(t);

      final result = coin.flip((heads) => heads, (tails) => tails);

      expect(result, equals(t));
    });
  });
}
