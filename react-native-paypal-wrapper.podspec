require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-paypal-wrapper"
  s.version        = package_json["version"]
  s.homepage       = "https://github.com/taessina/react-native-paypal-wrapper"
  s.summary        = package_json["description"]
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "7.0"
  s.source         = { :git => "#{package_json["repository"]["url"]}.git", :tag => "#{s.version}" }
  s.source_files   = 'ios/*.{h,m}'

  s.dependency 'React'
  s.dependency 'PayPal-iOS-SDK'

end
