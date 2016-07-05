source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/phunware/phunware-specs.git'

workspace 'GenericAF4'
xcodeproj 'GenericAF4.xcodeproj'

platform :ios, '8.0'

target :'GenericAF4', :exclusive => true do
    pod 'AppFrameworkAlertsModule',             :git =>  'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binary-alerts.git',              :tag => 'develop'
    pod 'AppFrameworkCore',                     :git =>  'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binary-core.git',                :tag => 'develop'
    pod 'AppFrameworkDirectoryModule',          :git =>  'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binary-directory.git',           :tag => 'develop'
    pod 'AppFrameworkEventsModule',             :git =>  'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binary-events.git',              :tag => 'develop'
    pod 'AppFrameworkLocationMarketingModule',  :git =>  'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binary-location-marketing.git',  :tag => 'develop'
    pod 'AppFrameworkMappingModule',            :git =>  'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binary-mapping.git',             :tag => 'develop'
    pod 'AppFrameworkParkingModule',            :git =>  'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binary-parking.git',             :tag => 'develop'
    pod 'AppFrameworkRenderModule',             :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binary-render.git',               :tag => 'develop'
    pod 'CoreNetwork',                          :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-module-network.git',              :tag => 'develop'
    pod 'PWUIKit',                              :git =>  'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binary-pwuikit.git',             :tag => 'develop'
    
    pod 'Google/Analytics'
    pod 'PWLocalpoint', '2.6.3.1'
    
    #pod 'AppFrameworkAlertsModule', :path =>  '../af-sdk-ios-module-alerts'
    #pod 'AppFrameworkCore', :path =>  '../af-sdk-ios-module-core/AppFrameworkCore'
    #pod 'AppFrameworkDirectoryModule', :path =>  '../af-sdk-ios-module-directory'
    #pod 'AppFrameworkEventsModule', :path =>  '../af-sdk-ios-module-events'
    #pod 'AppFrameworkLocationMarketingModule', :path =>  '../af-sdk-ios-module-location-marketing'
    #pod 'AppFrameworkMappingModule', :path =>  '../af-sdk-ios-module-mapping'
    #pod 'AppFrameworkParkingModule', :path =>  '../af-sdk-ios-module-parking'
    #pod 'AppFrameworkRenderModule', :path =>  '../af-sdk-ios-module-render'
    
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
