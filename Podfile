source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '12.0'
use_frameworks!

# ignore all warnings from all pods
inhibit_all_warnings!

target 'PugMe' do
  
  target 'PugMeTests' do
    inherit! :search_paths
    pod 'Cuckoo'
    pod 'iOSSnapshotTestCase'
  end
  
  
  project 'PugMe.xcodeproj'
  workspace 'PugMe.xcworkspace'
  
end

target 'UpdatingImageView' do
  
  target 'UpdatingImageViewTests' do
    inherit! :search_paths
    pod 'Cuckoo'
    pod 'iOSSnapshotTestCase'
  end
  
  project './Modules/UpdatingImageView/UpdatingImageView.xcodeproj'
  
end

target 'RedditClient' do
  
  target 'RedditClientTests' do
    inherit! :search_paths
    pod 'Cuckoo'
  end
  
  project './Modules/RedditClient/RedditClient.xcodeproj'
  
end
