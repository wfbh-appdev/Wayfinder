source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/phunware/phunware-specs.git'

workspace 'GenericAF4'
xcodeproj 'GenericAF4.xcodeproj'

platform :ios, '8.0'

target :'GenericAF4', :exclusive => true do

    pod 'AppFrameworkAlertsModule',             :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkCore',                     :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkDirectoryModule',          :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkEventsModule',             :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkLocationMarketingModule',  :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkMappingModule',            :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkParkingModule',            :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkRenderModule',             :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'CoreNetwork',                          :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-module-network.git', :branch => 'develop'
    pod 'PWUIKit',                              :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binary-pwuikit.git', :branch => 'develop'
    
    pod 'Google/Analytics'
    pod 'PWLocalpoint', '2.6.3.1'
    
    #pod 'AppFrameworkAlertsModule',            :path => '../af-sdk-ios/af-modules/af-alerts’
    #pod 'AppFrameworkCore',                    :path => '../af-sdk-ios/af-modules/af-core’
    #pod 'AppFrameworkDirectoryModule',         :path => ’../af-sdk-ios/af-modules/af-directory’
    #pod 'AppFrameworkEventsModule',            :path => ’../af-sdk-ios/af-modules/af-events’
    #pod 'AppFrameworkLocationMarketingModule', :path => ’../af-sdk-ios/af-modules/af-location-marketing’
    #pod 'AppFrameworkMappingModule',           :path => ’../af-sdk-ios/af-modules/af-mapping’
    #pod 'AppFrameworkParkingModule',           :path => ’../af-sdk-ios/af-modules/af-parking’
    #pod 'AppFrameworkRenderModule',            :path => ’../af-sdk-ios/af-modules/af-render’
    #pod ‘CoreNetwork’,                         :path => ’../af-sdk-ios/af-modules/af-network’
    #pod ‘PWUIKit’,                             :path => ’../af-sdk-ios/af-modules/af-pwuikit’
    
    xcodeproj 'GenericAF4.xcodeproj'

end


# Append to your Podfile
post_install do |installer_representation|
    installer_representation.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
        end
    end
end
