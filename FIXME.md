1. On Android downloading the binaries has to be uncommented
   manually inside `android/build.gradle` `downloadVoskBinaries` when using the plugin the first
   time on a machine.
   Then the example app has to be run with android target.
   After that the previously uncommented code inside `android/build.gradle` has to be commented
   out again to make the plugin work from a app.

2. The pod `libvosk` has to be manually added to the host apps `Podfile`

E.g

```
  pod 'libvosk', :path => '/Users/jonas/Desktop/dart_sense/packages/dart_sense/packages/vosk_flutter/ios/libvosk.podspec'
```
