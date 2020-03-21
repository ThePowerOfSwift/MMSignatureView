#
# Be sure to run `pod lib lint MMSignatureView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MMSignatureView'
  s.version          = '0.1.0'
  s.summary          = 'A simple and easy cocoapod for signing/drawing.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
"Add a new UIView where you want the signature capture field. Set its class to MMSignatureView, and connect it to an @IBOutlet property in your UIViewController. For saving and clearing the signature, add two buttons to your view controller. Hook each button up to an @IBAction function."
                       DESC

  s.homepage         = 'https://github.com/mir-taqi/MMSignatureView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mir-taqi' => 'taqi1435@gmail.com' }
  s.source           = { :git => 'https://github.com/mir-taqi/MMSignatureView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MMSignatureView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MMSignatureView' => ['MMSignatureView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit' , 'CoreGraphics'
  # s.dependency 'AFNetworking', '~> 2.3'
end
