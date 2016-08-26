source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/phunware/phunware-specs.git'

workspace 'GenericAF4'
project 'GenericAF4.xcodeproj'

platform :ios, '8.0'

target :'GenericAF4' do
    pod 'AppFrameworkAlertsModule',            :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binary-alerts.git',             :tag => 'v4.2'
    pod 'AppFrameworkCore',                    :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binary-core.git',               :tag => 'v4.2'
    pod 'AppFrameworkDirectoryModule',         :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binary-directory.git',          :tag => 'v4.2'
    pod 'AppFrameworkEventsModule',            :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binary-events.git',             :tag => 'v4.2'
    pod 'AppFrameworkLocationMarketingModule', :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binary-location-marketing.git', :tag => 'v4.2'
    pod 'AppFrameworkMappingModule',           :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binary-mapping.git',            :tag => 'v4.2'
    pod 'AppFrameworkParkingModule',           :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binary-parking.git',            :tag => 'v4.2'
    pod 'AppFrameworkRenderModule',            :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binary-render.git',             :tag => 'v4.2'
    pod 'CoreNetwork',                         :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-module-network.git',            :tag => 'v4.2'
    pod 'PWUIKit',                             :git => 'ssh://git@bitbucket.phunware.com:7999/af/af-sdk-ios-binary-pwuikit.git',            :tag => 'v4.2'
    
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
    
    project 'GenericAF4.xcodeproj'
end


# Append to your Podfile
post_install do |installer_representation|
    installer_representation.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
        end
    end
end
