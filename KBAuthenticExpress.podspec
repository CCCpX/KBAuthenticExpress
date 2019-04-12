#
#  Be sure to run `pod spec lint KBFormSheetController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

path = "ssh://git@newgitlab.kuaidihelp.com:2020/Pods"

Pod::Spec.new do |s|

  s.name         = "AuthenticExpress"
  s.version      = "0.0.1"
  s.summary      = "AuthenticExpress."
  s.author       = {"zhaohaiting" => "bajiejiedian@163.com"}
  s.description  = <<-DESC
                    This is AuthenticExpress.
                   DESC

  s.homepage     = "#{path}/AuthenticExpress.git"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "#{path}/AuthenticExpress.git", :branch => 'master' }

  s.source_files  = 'AuthenticExpress/AuthenticExpress/**/*.{h,m}'
  s.resource =  "AuthenticExpress/AuthenticExpress/**/*.xib"

  s.prefix_header_file = "AuthenticExpress/AuthenticExpress.pch"
  s.ios.vendored_library = 'AuthenticExpress/AuthenticExpress/libs/OCR/libexidcard/libexidcardios.a'
  s.framework = 'SystemConfiguration', 'CoreTelephony', 'Security', 'ExternalAccessory', 'GLKit', 'CoreTelephony'
  s.libraries = 'z', 'c++'
  s.vendored_frameworks = 'AMapFoundationKit.framework', 'AMapLocationKit.framework'
  s.requires_arc = true

  s.dependency "DZNEmptyDataSet"
  s.dependency "SDWebImage"
  s.dependency "Masonry"
  s.dependency "KBNetworking"
  s.dependency "JSONModel"
  s.dependency "ReactiveCocoa"
  s.dependency "KBProcessHUD"
  s.dependency "KBToast"
  s.dependency "KBAlertController"
  s.dependency "Categories"
  s.dependency "KBUtils"
  s.dependency "KBMenuSheet"
  s.dependency "login"
  s.dependency "KBModule"
  s.dependency "KBAssets"
  s.dependency "KBCollectionMenu"
  s.dependency "KBMediator"
  s.dependency "KBMediator_Catrgories"
  s.dependency "MJRefresh"

end
