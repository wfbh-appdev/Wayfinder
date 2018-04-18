source 'https://github.com/CocoaPods/Specs.git'
source 'ssh://git@bitbucket.phunware.com:7999/misc/cocoapods-sdk-ios.git'

workspace 'WakeForest'
project 'WakeForest.xcodeproj'

platform :ios, '10.0'

target :'WakeForest' do

    pod 'AppFrameworkCore',                    :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binaries.git', :branch => 'release/v4.8.0-BETA'
    pod 'AppFrameworkDirectoryModule',         :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binaries.git', :branch => 'release/v4.8.0-BETA'
    pod 'AppFrameworkEventsModule',            :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binaries.git', :branch => 'release/v4.8.0-BETA'
    pod 'AppFrameworkMessageCenterModule',     :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binaries.git', :branch => 'release/v4.8.0-BETA'
    pod 'AppFrameworkMappingModule',           :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binaries.git', :branch => 'release/v4.8.0-BETA'
    pod 'AppFrameworkParkingModule',           :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binaries.git', :branch => 'release/v4.8.0-BETA'
    pod 'AppFrameworkRenderModule',            :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binaries.git', :branch => 'release/v4.8.0-BETA'

    pod 'FirebaseAnalytics',          '3.4.2'
    pod 'FirebaseInstanceID',         '1.0.8'
    pod 'Google',                     '3.0.3'
    pod 'GoogleAnalytics',            '3.17.0'
    pod 'GoogleInterchangeUtilities', '1.2.1'
    pod 'GoogleSymbolUtilities',      '1.1.1'
    pod 'GoogleUtilities',            '1.3.1'
    pod 'JRSwizzle',                  '~> 1.0'

#    pod 'AppFrameworkCore',                    :path => '../af-sdk-ios/af-modules/af-core'
#    pod 'AppFrameworkDirectoryModule',         :path => '../af-sdk-ios/af-modules/af-directory'
#    pod 'AppFrameworkEventsModule',            :path => '../af-sdk-ios/af-modules/af-events'
#    pod 'AppFrameworkMessageCenterModule',     :path => '../af-sdk-ios/af-modules/af-msgcenter'
#    pod 'AppFrameworkMappingModule',           :path => '../af-sdk-ios/af-modules/af-mapping'
#    pod 'AppFrameworkParkingModule',           :path => '../af-sdk-ios/af-modules/af-parking'
#    pod 'AppFrameworkRenderModule',            :path => '../af-sdk-ios/af-modules/af-render'

   project 'WakeForest.xcodeproj'

end


# Append to your Podfile
post_install do |installer_representation|
    installer_representation.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
        end
    end
end
