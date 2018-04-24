
Pod::Spec.new do |s|
  s.name         = "opencv2"
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
  s.header_mappings_dir = 'ios/include'
  s.preserve_path = 'ios/libopencv2Static.a'
  s.frameworks = 'Accelerate', 'AssetsLibrary', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMedia', 'CoreVideo', 'Foundation', 'opencv2', 'QuartzCore', 'UIKit'
end
