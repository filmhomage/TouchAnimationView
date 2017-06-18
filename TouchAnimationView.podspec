
Pod::Spec.new do |s|
  s.name             = 'TouchAnimationView'
  s.version          = '0.1.2'
  s.summary          = 'Beautiful Touch Animation View.'
  s.homepage         = 'https://github.com/filmhomage/TouchAnimationView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jonghyun Kim' => 'filmhomage@hotmail.com' }
  s.source           = { :git => 'https://github.com/filmhomage/TouchAnimationView.git', :tag => s.version.to_s }
  s.source_files     = 'TouchAnimationView/Classes/**/*'
  s.ios.deployment_target = '8.0'

# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
# s.resource_bundles = {
#   'TouchAnimationView' => ['TouchAnimationView/Assets/*.png']
# }
# s.public_header_files = 'Pod/Classes/**/*.h'

end
