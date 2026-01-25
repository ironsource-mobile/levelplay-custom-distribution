 Pod::Spec.new do |s|
    s.name             = 'IronSourceUnityAdsAdapter'
    s.version          = '4.3.58.1'
    s.summary          = 'UnityAds Adapter'
    s.description      = <<-DESC
    Use this adapter to show UnityAds ads
    DESC
    s.homepage         = "http://www.is.com/"
    s.license = { :type => 'Commercial', :text => 'https://platform.ironsrc.com/partners/terms-and-conditions-new-user' }
    s.author           = { "IronSource" => "http://www.is.com/contact/" }
    s.source           = { :http => 'https://s3.amazonaws.com/ssa.public/ironsource-mobile/ios-adapters/UnityAds/4.3.58.1/ISUnityAdsAdapter4.3.58.1.zip' }
    s.source_files        = "ISUnityAdsAdapter/ISUnityAdsAdapter.xcframework/**/*.{h,m}"
    s.public_header_files = 'ISUnityAdsAdapter/ISUnityAdsAdapter.xcframework/**/*.h'
    s.preserve_paths = 'ISUnityAdsAdapter/ISUnityAdsAdapter.xcframework'
    s.platform = :ios, '13.0'
    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 x86_64' }
    s.swift_version = '5.0'

    s.prepare_command = <<-CMD
      # Extract inner ISUnityAdsAdapter.zip (S3 has nested zip structure)
      if [ -f "ISUnityAdsAdapter.zip" ]; then
        unzip -o ISUnityAdsAdapter.zip
        rm -f ISUnityAdsAdapter.zip
      fi
    CMD

    s.vendored_frameworks = 'ISUnityAdsAdapter/ISUnityAdsAdapter.xcframework'
    s.dependency 'IronSourceSDK/Ads', '~> 8.8'
    s.dependency 'UnityAds', '4.16.7.1'
  end
