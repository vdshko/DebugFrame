Pod::Spec.new do |spec|
  spec.name         = "DebugFrame"
  spec.version      = "0.1.4"
  spec.summary      = "Debug frame modifier for SwiftUI views."
  spec.homepage     = "https://github.com/vdshko/DebugFrame.git"
  spec.license      = { :type => "MIT", :file => "License" }
  spec.author       = { "Vladislav Shkodich" => "vladislavshkodich@gmail.com" }
  spec.frameworks   = 'Foundation'
  spec.source       = { :git => "https://github.com/vdshko/DebugFrame.git", :tag => "#{spec.version}" }
  spec.source_files = 'Source/DebugFrame/**/*.swift'
  spec.ios.deployment_target = "14.0"
  spec.swift_versions = "5.0"
end