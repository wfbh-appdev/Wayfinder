source 'https://github.com/CocoaPods/Specs.git'

workspace 'GenericAF4'
platform :ios, '8.0'

target :'GenericAF4', :exclusive => true do
    pod 'AppFrameworkAlertsModule', :git =>  'https://github.com/phunware/sdk-ios-appframework-alerts-binary.git', :branch => 'develop'
    pod 'AppFrameworkCore', :git =>  'https://github.com/phunware/sdk-ios-appframework-core-binary.git', :branch => 'develop'
    pod 'AppFrameworkDirectoryModule', :git =>  'https://github.com/phunware/sdk-ios-appframework-directory-binary.git', :branch => 'develop'
    pod 'AppFrameworkEventsModule', :git =>  'https://github.com/phunware/sdk-ios-appframework-events-binary.git', :branch => 'develop'
    pod 'AppFrameworkLocationMarketingModule', :git =>  'https://github.com/phunware/sdk-ios-appframework-location-marketing-binary.git', :branch => 'develop'
    pod 'AppFrameworkMappingModule', :git =>  'https://github.com/phunware/sdk-ios-appframework-mapping-binary.git', :branch => 'develop'
    pod 'AppFrameworkParkingModule', :git =>  'https://github.com/phunware/sdk-ios-appframework-parking-binary.git', :branch => 'develop'
    pod 'AppFrameworkRenderModule', :git => 'https://github.com/phunware/sdk-ios-appframework-render-binary.git', :branch => 'develop'
    
    pod 'CoreNetwork', :git => 'https://github.com/phunware/sdk-ios-appframework-network.git', :tag => 'v4.0.1'
    pod 'PWUIKit', :git =>  'https://github.com/phunware/sdk-ios-pwuikit-binary.git', :tag => 'v4.0.1'
    
    pod 'Google/Analytics'
    pod 'PWLocalpoint', '2.6.3.1'
    
    #pod 'AppFrameworkAlertsModule', :path =>  '../sdk-ios-appframework-alerts'
    #pod 'AppFrameworkCore', :path =>  '../sdk-ios-appframework-core/AppFrameworkCore'
    #pod 'AppFrameworkDirectoryModule', :path =>  '../sdk-ios-appframework-directory'
    #pod 'AppFrameworkEventsModule', :path =>  '../sdk-ios-appframework-events'
    #pod 'AppFrameworkLocationMarketingModule', :path =>  '../sdk-ios-appframework-location-marketing'
    #pod 'AppFrameworkMappingModule', :path =>  '../sdk-ios-appframework-mapping'
    #pod 'AppFrameworkParkingModule', :path =>  '../sdk-ios-appframework-parking'
    #pod 'AppFrameworkRenderModule', :path =>  '../sdk-ios-appframework-render'
    
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
