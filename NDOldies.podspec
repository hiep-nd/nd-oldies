Pod::Spec.new do |s|
s.name         = "NDOldies"
  s.version      = "0.0.1.1"
  s.summary      = "Support new api for old deployment version."
  s.description  = <<-DESC
  NDOldies is a small framework that support new api for old deployment version.
                   DESC
  s.homepage     = "https://github.com/hiep-nd/nd-oldies.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Nguyen Duc Hiep" => "hiep.nd@gmail.com" }
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.swift_versions = ['4.0', '5.1', '5.2']
  #s.source        = { :http => 'file:' + URI.escape(__dir__) + '/' }
  s.source       = { :git => "https://github.com/hiep-nd/nd-oldies.git", :tag => "Pod-#{s.version}" }
  s.source_files  = "NDOldies/**/*.{h,m,mm,swift}"
  s.public_header_files = "NDOldies/**/*.h"
  s.header_mappings_dir = 'NDOldies'
end
