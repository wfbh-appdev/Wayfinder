source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/phunware/phunware-specs.git'

workspace 'GenericAF4'
project 'GenericAF4.xcodeproj'

platform :ios, ‘9.0’

target :'GenericAF4' do

    pod 'AppFrameworkCore',                     :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkDirectoryModule',          :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkEventsModule',             :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkLocationMarketingModule',  :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkMappingModule',            :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkParkingModule',            :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    pod 'AppFrameworkRenderModule',             :git => 'https://bitbucket.phunware.com/scm/af/af-sdk-ios-binaries.git',       :branch => 'develop'
    
    pod 'Google/Analytics'
    pod 'PWLocalpoint', '2.6.3.1'

    #pod 'AppFrameworkCore',                    :path => '../af-sdk-ios/af-modules/af-core’
    #pod 'AppFrameworkDirectoryModule',         :path => ’../af-sdk-ios/af-modules/af-directory’
    #pod 'AppFrameworkEventsModule',            :path => ’../af-sdk-ios/af-modules/af-events’
    #pod 'AppFrameworkLocationMarketingModule', :path => ’../af-sdk-ios/af-modules/af-location-marketing’
    #pod 'AppFrameworkMappingModule',           :path => ’../af-sdk-ios/af-modules/af-mapping’
    #pod 'AppFrameworkParkingModule',           :path => ’../af-sdk-ios/af-modules/af-parking’
    #pod 'AppFrameworkRenderModule',            :path => ’../af-sdk-ios/af-modules/af-render’
    
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
