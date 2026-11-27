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

### Publish from GitHub Actions with a Nexus username and password

The `Publish to Nexus` workflow validates the package and uploads its archive
through the Nexus Components REST API. To enable it:

1. Add repository Actions secrets named `NEXUS_USERNAME` and `NEXUS_PASSWORD`.
2. Push a commit to `main`, or in GitHub open **Actions** → **Publish to Nexus** → **Run workflow**.

The workflow uses the `publish_to` URL and package name/version from
`pubspec.yaml`. Bump the package version before each publish; Nexus rejects a
version that already exists.
