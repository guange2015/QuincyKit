Pod::Spec.new do |s|
  s.name               =  'QuincyKit'
  s.version            =  '3.0.0'
  s.license            =  'MIT & Apache License, Version 2.0'
  s.summary            =  'Live crash report management for iOS and Mac OS X. AppStore ready!.'
  s.homepage           =  'https://github.com/hhuai/QuincyKit'
  s.author             =  { 'Andreas Linde' => 'mail@andreaslinde.de' }
  s.source             =  { :git => 'https://github.com/hhuai/QuincyKit.git', :branch => 'master' }

  s.ios.source_files   =  'client/iOS/*.{h,m}'
  s.ios.resource       =  'client/iOS/Quincy.bundle'
  s.ios.frameworks     =  'SystemConfiguration', 'CrashReporter'
  s.ios.xcconfig       =  { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/QuincyKit/client/iOS"' }
  s.ios.preserve_paths =  'client/iOS/CrashReporter.framework'

  s.osx.source_files   =  'client/Mac/*.{h,m}'
  s.osx.resource       =  'client/Mac/BWQuincyMain.nib'
end
