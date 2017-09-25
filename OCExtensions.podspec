#
# Be sure to run `pod lib lint OCExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OCExtensions'
  s.version          = '1.10.1'
  s.summary          = 'A bunch of Extensions.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A bunch of Extension: UIView, UIViewController.
                       DESC

  s.homepage         = 'https://github.com/OpenCraft/OCExtensions'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Henrique Morbin' => 'morbin_@hotmail.com' }
  s.source           = { :git => 'https://github.com/OpenCraft/OCExtensions.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Morbix'

  s.ios.deployment_target = '8.0'

  s.source_files = 'OCExtensions/Classes/**/*'
  
  # s.resource_bundles = {
  #   'OCExtensions' => ['OCExtensions/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
