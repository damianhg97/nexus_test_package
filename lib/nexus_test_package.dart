library nexus_test_package;

/// A simple calculator class for testing Nexus publish.
class NexusCalculator {
  /// Returns the sum of two numbers.
  int add(int a, int b) => a + b;

  /// Returns the difference of two numbers.
  int subtract(int a, int b) => a - b;

  /// Returns a greeting message.
  String greet(String name) => 'Hello, $name! Welcome to Nexus Test Package.';
}

/// Simple utility function.
String getPackageVersion() => '0.0.1';