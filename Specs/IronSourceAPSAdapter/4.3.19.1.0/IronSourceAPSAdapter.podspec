Pod::Spec.new do |s|
  s.name             = 'IronSourceAPSAdapter'
  s.version          = '4.3.19.1.0'
  s.summary          = 'APS Adapter'
  s.description      = <<-DESC
  Use this adapter to show APS ads
  DESC
  s.homepage         = "http://www.is.com/"
  s.license = { :type => 'Commercial', :text => 'https://platform.ironsrc.com/partners/terms-and-conditions-new-user' }
  s.author           = { "IronSource" => "http://www.is.com/contact/" }
  s.source           = { :http => 'https://s3.amazonaws.com/ssa.public/ironsource-mobile/ios-adapters/APS/4.3.19.1/ISAPSAdapter4.3.19.1.zip' }  
  s.source_files        = "ISAPSAdapter/ISAPSAdapter.xcframework/**/*.{h,m}"
  s.public_header_files = 'ISAPSAdapter/ISAPSAdapter.xcframework/**/*.h'
  s.preserve_paths = 'ISAPSAdapter/ISAPSAdapter.xcframework'
  s.platform = :ios, '13.0'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 x86_64' }
  s.vendored_frameworks = 'ISAPSAdapter/ISAPSAdapter.xcframework'
  s.dependency 'IronSourceSDK', '~> 8.8'
  s.dependency 'AmazonPublisherServicesSDK', '= 5.1.0'
  s.swift_version = '5.0'
end
