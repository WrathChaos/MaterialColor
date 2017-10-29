#
# Be sure to run `pod lib lint MaterialColor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MaterialColor'
  s.version          = '1.1.0'
  s.summary          = 'Material Color Palette with Swift 3 Compatibility'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A perfect library to use Material Color Palette. Colors are the most important UI kit for every application. MaterialColors is the best and easiest way of color pallette. Swift 4 compatibility.
                       DESC

  s.homepage         = 'https://github.com/wrathchaos/MaterialColor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'FreakyCoder' => 'kurayogun@gmail.com' }
  s.source           = { :git => 'https://github.com/wrathchaos/MaterialColor.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/freakycodercom'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MaterialColor/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MaterialColor' => ['MaterialColor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
