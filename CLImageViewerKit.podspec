
Pod::Spec.new do |s|

  s.name         = "CLImageViewerKit"
  s.version      = "0.0.0"
  s.summary      = "This is a collection of components for images and image views management."

  s.homepage     = "https://github.com/yackle/CLImageViewerKit"
  
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Sho Yakushiji" => "sho.yakushiji@gmail.com" }


  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.source       = { :git => "https://github.com/yackle/CLImageViewerKit.git", :tag => "v#{s.version}" }
  
  
  s.subspec 'UIImagePlaceholder' do |a|
    a.source_files = 'Classes/UIImage+Placeholder/*.{h,m}'
  end
  s.subspec 'CLZoomingImageView' do |a|
    a.source_files = 'Classes/CLZoomingImageView/*.{h,m}'
  end
  s.subspec 'CLFullscreenImageViewer' do |a|
    a.source_files = 'Classes/CLFullscreenImageViewer/*.{h,m}'
    a.dependency 'CLImageViewer/CLZoomingImageView'
  end
  s.subspec 'CLImagePagingView' do |a|
    a.source_files = 'Classes/CLImagePagingView/*.{h,m}'
    a.dependency 'CLImageViewer/CLFullscreenImageViewer'
  end
  
  
  s.subspec 'UIImageViewURLDownload' do |a|
    a.source_files = 'Classes/UIImageView+URLDownload/*.{h,m}'
  end
  s.subspec 'CLCacheManager' do |a|
    a.source_files = 'Classes/CLCacheManager/*.{h,m}'
  end
  s.subspec 'CLImageView' do |a|
    a.source_files = 'Classes/CLImageView/*.{h,m}'
    a.dependency 'CLImageViewer/UIImageViewURLDownload'
    a.dependency 'CLImageViewer/CLCacheManager'
  end
  
end