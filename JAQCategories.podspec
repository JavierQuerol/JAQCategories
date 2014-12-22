#
# Be sure to run `pod lib lint JAQCategories.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JAQCategories"
  s.version          = "0.1.0"
  s.summary          = "Useful categories"
  s.description      = <<-DESC
                       Some useful categories
                       DESC
  s.homepage         = "https://github.com/javierquerol/JAQCategories"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Javier Querol" => "querol.javi@gmail.com" }
  s.source           = { :git => "https://github.com/javierquerol/JAQCategories.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/javierquerol'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'JAQCategories' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'CocoaSecurity'
end
