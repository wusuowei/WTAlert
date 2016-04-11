#
# Be sure to run `pod lib lint WTAlert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "WTAlert"
  s.version          = "0.1.0"
  s.summary          = "You can use WTAlert show alert by class method." 
  s.description      = <<-DESC
You can use WTAlert show alert by class method. That is simple.
                       DESC

  s.homepage         = "https://github.com/wusuowei/WTAlert"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "wentianen" => "1206860151@qq.com" }
  s.source           = { :git => "https://github.com/wusuowei/WTAlert.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'WTAlert' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
