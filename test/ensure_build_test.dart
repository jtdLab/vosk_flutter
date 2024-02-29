import 'package:build_verify/build_verify.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'ensure_build',
    () async => expectBuildClean(
      packageRelativeDirectory: 'packages/dart_sense/packages/vosk_flutter',
    ),
    timeout: const Timeout.factor(4),
    tags: ['build_verify'],
  );
}
