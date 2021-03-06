Pod::Spec.new do |s|
  s.name         = 'QXYYImage'
  s.summary      = 'a copy from YYImage.'
  s.version      = '1.0.8'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'ibireme' => 'ibireme@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/labi3285/QXYYImage'
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source       = { :git => 'https://github.com/labi3285/QXYYImage.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |core|
    core.source_files = 'YYImage/*.{h,m}'
    core.public_header_files = 'YYImage/*.{h}'
    core.libraries = 'z'
    core.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore', 'AssetsLibrary', 'ImageIO', 'Accelerate', 'MobileCoreServices'
  end
  
  #s.subspec 'WebP' do |webp|
  #  webp.dependency 'QXYYImage/Core'
  #  webp.ios.vendored_frameworks = 'Vendor/WebP.framework'
  #end

  #s.subspec 'libwebp' do |libwebp|
  #  libwebp.dependency 'QXYYImage/Core'
  #  libwebp.dependency 'libwebp'
  #  libwebp.xcconfig = { 
  #    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  #  }
  #end
  
  # pod trunk push QXYYImage.podspec --allow-warnings --verbose

end
