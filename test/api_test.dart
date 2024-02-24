import 'package:wolframalpha_ai_dart/wolframalpha.dart';
import 'package:test/test.dart';

void main() {
  group('API', () {
    test('Simple', () async {
      final value = await simple(
        appId: 'DEMO',
        input: 'What is the price of gold?',
      );
      expect(value.toString().isNotEmpty, true);
    });
    test('Short Answers', () async {
      final value = await shortAnswers(
        appId: 'DEMO',
        input: 'How many ounces are in a gallon?',
      );
      expect(value.toString().isNotEmpty, true);
    });
    test('Spoken Answers', () async {
      final value = await spokenAnswers(
        appId: 'DEMO',
        input: 'Convert 42 mi to km',
      );
      expect(value.toString().isNotEmpty, true);
    });
  });
}
