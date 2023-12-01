import 'package:dart_number_range_checker/dart_number_range_checker.dart';
import 'package:test/test.dart';

void main() {
  group('Number Range Checker Tests', () {
    test('Number within default range', () {
      expect(() => checkNumberRange(50), returnsNormally);
    });

    test('Number outside default range throws OutOfRangeException', () {
      expect(() => checkNumberRange(150), throwsA(isA<OutOfRangeException>()));
    });

    test('Number within custom range', () {
      expect(() => checkNumberRange(150, min: 100, max: 200), returnsNormally);
    });

    test('Number outside custom range throws OutOfRangeException', () {
      expect(() => checkNumberRange(250, min: 100, max: 200),
          throwsA(isA<OutOfRangeException>()));
    });
  });
}
