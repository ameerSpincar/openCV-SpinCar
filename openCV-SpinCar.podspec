Pod::Spec.new do |s|
  s.name         = "OpenCV"
  s.version      = "3.3.1"
  s.summary      = "OpenCV (Computer Vision) for iOS"
  s.homepage     = "https://opencv.org/"
  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.authors       = "https://github.com/opencv/opencv/graphs/contributors"
 
  s.platform     = :ios
  s.source       = { 
    :git => "https://github.com/ameerSpincar/opencv.git"
  }
 
  s.prepare_command = "touch Empty.m && mv ios/opencv2.framework/Versions/A/opencv2.txt ios/libopencv2Static.a && mv ios/opencv2.framework/Versions/A/Headers ios/include"
  s.source_files = 'Empty.m', 'ios/include/**/*.{h,hpp}'
  s.header_mappings_dir = 'opencv2'
  s.preserve_paths = 'ios/*'
  s.frameworks = 'Accelerate', 'AssetsLibrary', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMedia', 'CoreVideo', 'Foundation', 'opencv2', 'QuartzCore', 'UIKit'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/OpenCV' }
end
