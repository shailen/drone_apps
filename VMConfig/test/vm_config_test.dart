import 'package:unittest/unittest.dart';
import 'package:unittest/vm_config.dart';

void main() {
  useVmConfiguration();
  test("add", () {
    expect(3 + 4, equals(7));
  });
}