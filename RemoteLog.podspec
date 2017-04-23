Pod::Spec.new do |s|
  s.name             = 'RemoteLog'
  s.version          = '0.1.0'
  s.summary          = 'A short description of RemoteLog.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/willpowell8/RemoteLog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'willpowell8' => 'willpowell8@gmail.com' }
  s.source           = { :git => 'https://github.com/willpowell8/RemoteLog.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/willpowelluk'

  s.ios.deployment_target = '8.3'
  s.vendored_frameworks = 'RemoteLog/RemoteLogLibrary.framework'
end
