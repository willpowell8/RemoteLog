Pod::Spec.new do |s|
  s.name             = 'RemoteLog'
  s.version          = '1.0.15'
    s.summary          = 'Logging and support remotely for iOS app. See users & testers real journeys, network log, console, ui screenshots, and their screen touches'

  s.description      = <<-DESC
Remote logging provides an app provider a unique way of being able to improve testing reporting, realtime customer app support and remote live bug detection and bug fixing. RemoteLog provides a stream of events and even screenshots when activated by the user. This stream covers console printing, network requests, ui screenshot events when changing view controllers or touching buttons. Tap and touch events. And the device you are examining can be anywhere in the world.
                       DESC

  s.homepage         = 'https://github.com/willpowell8/RemoteLog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'willpowell8' => 'willpowell8@gmail.com' }
  s.source           = { :git => 'https://github.com/willpowell8/RemoteLog.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/willpowelluk'

  s.ios.deployment_target = '8.3'
  s.vendored_frameworks = 'RemoteLog/RemoteLogLibrary.framework'
end
