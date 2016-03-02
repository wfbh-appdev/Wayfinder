source 'https://github.com/CocoaPods/Specs.git'

workspace 'GenericAF4'
platform :ios, '7.0'

xcodeproj 'GenericAF4.xcodeproj'


target :'GenericAF4', :exclusive => true do
    pod 'CoreNetwork', :git => 'https://github.com/phunware/sdk-ios-appframework-network.git', :branch => 'develop'
    pod 'PWUIKit', :git =>  'https://github.com/phunware/sdk-ios-pwuikit-binary.git'
    pod 'PWLocalpoint', :git => 'https://github.com/phunware/maas-localpoint-ios-sdk.git'
 
    pod 'AppFrameworkCore', :git =>  'https://jenkins-phunware:K3yM%40%24ter%21@github.com/phunware/sdk-ios-appframework-core-binary.git',:branch => 'develop'
    #pod 'AppFrameworkCore', :path =>  '../sdk-ios-appframework-core/AppFrameworkCore/Framework'
    #pod 'AppFrameworkCore', :path =>  '../sdk-ios-appframework-core/AppFrameworkCore'
 
    pod 'AppFrameworkRenderModule', :git => 'https://jenkins-phunware:K3yM%40%24ter%21@github.com/phunware/sdk-ios-appframework-render-binary.git',:branch => 'develop'
    #pod 'AppFrameworkRenderModule', :path =>  '../sdk-ios-appframework-render'
    
    pod 'Google/Analytics'
    
    pod 'AppFrameworkParkingModule', :git =>  'https://jenkins-phunware:K3yM%40%24ter%21@github.com/phunware/sdk-ios-appframework-parking-binary.git',:branch => 'develop'
    
    pod 'AppFrameworkDirectoryModule', :git =>  'https://jenkins-phunware:K3yM%40%24ter%21@github.com/phunware/sdk-ios-appframework-directory-binary.git',:branch => 'develop'
    #pod 'AppFrameworkDirectoryModule', :path => '../sdk-ios-appframework-directory'
    
    pod 'AppFrameworkEventsModule', :git =>  'https://jenkins-phunware:K3yM%40%24ter%21@github.com/phunware/sdk-ios-appframework-events-binary.git',:branch => 'develop'
    pod 'AppFrameworkAlertsModule', :git =>  'https://jenkins-phunware:K3yM%40%24ter%21@github.com/phunware/sdk-ios-appframework-alerts-binary.git',:branch => 'develop'
    pod 'AppFrameworkLocationMarketingModule', :git =>  'https://jenkins-phunware:K3yM%40%24ter%21@github.com/phunware/sdk-ios-appframework-location-marketing-binary.git',:branch => 'develop'
    
    
    pod 'AppFrameworkMappingModule', :git =>  'https://jenkins-phunware:K3yM%40%24ter%21@github.com/phunware/sdk-ios-appframework-mapping-binary.git',:branch => 'develop'
    #pod 'AppFrameworkMappingModule', :path =>  '../sdk-ios-appframework-mapping'
        
    #pod 'AppFrameworkMoviesModule', :path =>  '../sdk-ios-appframework-movies'
    #pod 'AppFrameworkMoviesModule', :git =>  'https://github.com/phunware/sdk-ios-appframework-movies.git'
    
    pod 'AppFrameworkSalesModule', :git =>  'https://jenkins-phunware:K3yM%40%24ter%21@github.com/phunware/sdk-ios-appframework-sales.git',:branch => 'develop'
    #pod 'AppFrameworkSalesModule', :path =>  '../sdk-ios-appframework-sales'
    
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
