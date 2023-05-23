Pod::Spec.new do |s|
  s.name             = 'YunoAntifraudRiskified'
  s.version          = '0.0.3'
  s.summary          = 'Risquified integration to YunoSDK.'

  s.description      = <<-DESC
  A YunoSDK addition to integrate Risquified antifraud features.
                       DESC


  s.homepage         = 'https://www.y.uno/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Viviana Amezquita' => 'viviana.mesa@y.uno' }
  s.source           = { :http => 'https://github.com/yuno-payments/yuno-antifraud-riskified-ios/releases/download/' + s.version.to_s + '/YunoAntifraudRiskified.xcframework.zip' }

  s.ios.deployment_target = '13.0'
  s.swift_version         = '5.4'
  s.platform              = :ios, '13.0'

  s.requires_arc          = true
  s.dependency 'RiskifiedBeacon', '~> 1.3.2'
  
  s.vendored_frameworks = 'YunoAntifraudRiskified.xcframework'

  s.xcconfig = { 'SWIFT_INCLUDE_PATHS' => ['${PODS_XCFRAMEWORKS_BUILD_DIR}/YunoAntifraudRiskified'] }
  s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
end
