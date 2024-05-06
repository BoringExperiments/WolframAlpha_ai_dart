// Copyright 2024 punExperiment
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
