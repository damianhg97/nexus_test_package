# nexus_test_package

A simple Flutter/Dart package created to test publishing to a private Nexus Repository (Pub hosted).

## Features

- Basic calculator functions (`add`, `subtract`)
- Greeting utility

## Getting started

Add this package to your `pubspec.yaml` (after publishing to Nexus):

```yaml
dependencies:
  nexus_test_package:
    hosted: https://your-nexus-url/repository/pub-hosted
    version: ^0.0.1
```

## Usage

```dart
import 'package:nexus_test_package/nexus_test_package.dart';

void main() {
  final calc = NexusCalculator();
  print(calc.add(5, 3));          // 8
  print(calc.greet('Developer')); // Hello, Developer! ...
}
```

## Publishing to Nexus

1. Update `publish_to` in `pubspec.yaml` with your real Nexus URL.
2. Configure authentication:
   ```bash
   dart pub token add https://your-nexus-url/repository/pub-hosted/
   ```
3. Publish:
   ```bash
   dart pub publish
   ```