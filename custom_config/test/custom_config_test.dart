library custom_config;

import 'package:unittest/unittest.dart';

class CustomConfig extends Configuration {
  void onDone(int passed, int failed, int errors, List<TestCase> results,
              String uncaughtError) {
    // Print each test's result. Replace 'PASS' and 'FAIL' with 'GOOD' and 'BAD'
    for (final t in results) {
      var resultString = "${t.result == 'pass' ? 'GOOD' : 'BAD'}";
      print('$resultString: ${t.description}');
    }

    // Show the summary.
    print('');

    var success = false;
    if (passed == 0 && failed == 0 && errors == 0) {
      print('No tests found.');
      // This is considered a failure too.
    } else if (failed == 0 && errors == 0 && uncaughtError == null) {
      // print('All $passed tests passed.');
      print("Everything works, you rock!");
      success = true;
    } else {
      if (uncaughtError != null) {
        print('Top-level uncaught error: $uncaughtError');
      }
      // again, change the message
      print('$passed WORKED, $failed DIDN\'T, $errors MISTAKES');
    }
    
    if (success) {
      // print('unittest-suite-success');
      print('everything\'s good');
    } else {
      // throw new Exception('Some tests failed.');
      throw new Exception('Everything did not work.');
    }
  }
}

void main() {
  configure(new CustomConfig());
  test("something", () {
    expect(1, equals(1));
  });
}
