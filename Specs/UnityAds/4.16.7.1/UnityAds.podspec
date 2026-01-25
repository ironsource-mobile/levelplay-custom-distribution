Pod::Spec.new do |s|
  s.name = 'UnityAds'
  s.version = '4.16.7.1'
  s.license = { :type => 'Unity License', :file => 'LICENSE' }
  s.author = { 'UnityAds' => 'itunes@unity3d.com' }
  s.homepage = 'https://unity3d.com/services/ads'
  s.summary = 'Monetize your entire player base and reach new audiences with video ads.'
  s.platform = :ios
  s.source = { :http => 'https://unity3ddist.jfrog.io/artifactory/unity-ads-generic-stg-local/UnityAds/4.16.7.1/UnityAds.zip' }
  s.ios.deployment_target = '13.0'
  s.ios.vendored_frameworks = 'UnityAds.xcframework'
  s.resource_bundles = { 'UnityAdsResources' => 'UnityAds.xcframework/ios-arm64/**/*.{xcprivacy,js}' }
  s.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CoreGraphics', 'CoreTelephony', 'Foundation', 'QuartzCore', 'StoreKit', 'SystemConfiguration', 'WebKit', 'UIKit', 'AVFAudio', 'CoreFoundation', 'Network'
  s.swift_version = '5.0'
end