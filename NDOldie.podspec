Pod::Spec.new do |s|
s.name         = "NDOldie"
  s.version      = "0.0.1"
  s.summary      = "Support new api for old deployment version."
  s.description  = <<-DESC
  NDOldie is a small framework that support new api for old deployment version.
                   DESC
  s.homepage     = "https://github.com/hiep-nd/nd-oldie.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Nguyen Duc Hiep" => "hiep.nd@gmail.com" }
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.swift_versions = ['4.0', '5.1', '5.2']
  #s.source        = { :http => 'file:' + URI.escape(__dir__) + '/' }
  s.source       = { :git => "https://github.com/hiep-nd/nd-oldie.git", :tag => "Pod-#{s.version}" }
  s.source_files  = "NDOldie/**/*.{h,m,mm,swift}"
  s.public_header_files = "NDOldie/**/*.h"
  s.header_mappings_dir = 'NDOldie'
end
