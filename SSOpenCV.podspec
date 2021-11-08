Pod::Spec.new do |spec|
  spec.name         = "SSOpenCV"
  spec.version      = "1.0.0"
  spec.summary      = "OpenCV (Computer Vision) for iOS."
  spec.description  = <<-DESC
        OpenCV: Open Source Computer Vision Library
                   DESC
  spec.homepage     = ""
  spec.license      = { :type => "BSD", :file => "FILE_LICENSE" }
  spec.author       = { "SUUNC" => "suunc.suunc@gmail.com" }
  spec.source       = { :http => "https://github.com/opencv/opencv/releases/download/4.5.4/opencv-4.5.4-ios-framework.zip" }
  spec.platform             = :ios, '10.0'
  spec.source_files         = 'opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}'
  spec.public_header_files  = 'opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}'
  spec.header_mappings_dir  = 'opencv2.framework/Versions/A/Headers/'
  spec.vendored_frameworks  = 'opencv2.framework'
  spec.preserve_paths       = 'opencv2.framework'
  spec.header_dir           = 'opencv2'
  spec.frameworks     = ["Accelerate", "AssetsLibrary", "AVFoundation", "CoreGraphics", "CoreImage", "CoreMedia", "CoreVideo", "Foundation", "QuartzCore", "UIKit"]
  spec.libraries      = "z", "stdc++"
  spec.requires_arc   = false
end
