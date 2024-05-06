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


/* 
  Thrown when the server rejects the API key 
  Commonly caused by expired/invalid/non-existent API key
*/
final class InvalidAppId implements Exception {
  final String message;
  InvalidAppId(this.message);
}

// Input cannot be interpreted by the API
final class UnknownPrompt implements Exception {
  final String message;
  UnknownPrompt(this.message);
} 

// API did not find the required input parameter.
final class MissingRequiredParameter implements Exception {
  final String message;
  MissingRequiredParameter(this.message);
}
