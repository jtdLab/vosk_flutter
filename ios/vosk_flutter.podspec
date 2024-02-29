# To learn more about a Podspec, see http://guides.cocoapods.org/syntax/podspec.html
# 1. https://github.com/dart-lang/sdk/issues/44328#issuecomment-855682903
# 2. https://github.com/Sunbreak/cronet_flutter/blob/master/ios/cronet_flutter.podspec
Pod::Spec.new do |s|
    s.name             = 'vosk_flutter'
    s.version          = '0.0.1'
    s.summary          = 'An iOS implementation of the vosk plugin.'
    s.description      = <<-DESC
    An iOS implementation of the vosk plugin.
                         DESC
    s.homepage         = 'http://example.com'
    s.license          = { :type => 'BSD', :file => '../LICENSE' }
    s.author           = { 'Your Company' => 'email@example.com' }
    s.source           = { :path => '.' }
    s.source_files     = 'Classes/**/*'
    s.public_header_files =  'Classes/**/*.h'
    s.dependency 'Flutter'
    s.platform = :ios, '11.0'
  
    # Flutter.framework does not contain an i386 slice.
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
   
     # telling CocoaPods not to remove framework
    s.preserve_paths = 'Frameworks/libvosk.xcframework'

    # telling linker to include framework & fix symbol not found when without use_framework!
    #s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-framework libvosk -ObjC -all_load' }
    s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }

    # including framework
    s.vendored_frameworks = 'Frameworks/libvosk.xcframework'

    # including system libraries
    s.libraries = 'c++'

    # including system frameworks
    s.frameworks = 'Accelerate'

    s.swift_version = '5.0'
  end
