

Pod::Spec.new do |s|

  s.name         = "MYCocoaPodsTestYMY"
  s.version      = "0.0.1"
  s.summary      = "MYCocoaPodsTestYMY Source."
  s.description  = <<-DESC
                   MYCocoaPodsTestYMY Source description
                   DESC

  s.homepage     = "http://github.com/yemingyu/MYCocoaPodsTest"

  s.license = {
    :type => 'Copyright',
    :text => <<-LICENSE
           yemingyu copyright
    LICENSE
  }

  s.author             = { "yemingyu" => "me@yemingyu.com" }

  s.platform     = :ios

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "http://github/yemingyu/MYCocoaPodsTest.git", :commit => "104808fac49677ed42c6813422904f91d008bd84"}


  s.source_files  = "MYCocoaPodsTest", "MYCocoaPodsTest/**/*.{h,m,mm}"
  
  s.resources = "MYCocoaPodsTest/**/*.{png,xib,wav,plist}"
  s.requires_arc = true
  s.prefix_header_file = "MYCocoaPodsTest/MYCocoaPodsTest-Prefix.pch"
  #如果对pods有依赖，就添加FRAMEWORK_SEARCH_PATHS
  #s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => "'$(PODS_ROOT)/JSPATCH' '$(PODS_ROOT)/ReactiveCocoa'", 'OTHER_CFLAGS' => '-Xclang -fobjc-runtime-has-weak' , 'CLANG_ENABLE_MODULES' => 'NO' }
  #依赖的framework
  #s.framework = ''
  # non_arc_files = '' 
  #s.exclude_files = non_arc_files
  
  s.subspec 'Service' do |service|
    service.source_files = ''
  end  
  
  s.subspec 'no-arc' do |sna|
    sna.requires_arc = false
    sna.source_files = ''
  end  

  # s.dependency "JSONKit", "~> 1.4"

end
