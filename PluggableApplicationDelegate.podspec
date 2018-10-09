#
# Be sure to run `pod lib lint PluggableApplicationDelegate.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PluggableApplicationDelegate'
  s.version          = '0.3.0'
  s.summary          = 'Services oriented AppDelegate in Swift 4.'
  s.description      = <<-DESC
PluggableApplicationDelegate is a way of decoupling AppDelegate, by splitting it into small modules called ApplicationService.
Each ApplicationServices shares the life cycle with AppDelegate, and becomes its observer. Whenever AppDelegate runs any life cycle method, your Application services are notified and perform some action.
PluggableApplicationDelegate is an open class from which your AppDelegate needs to inherit. Your AppDelegate then needs to override its `services` property, returning an ApplicationServices array.
                       DESC

  s.homepage         = 'https://github.com/luis-ct/PluggableApplicationDelegate'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'luis-ct' => 'luiscanadas@gmail.com' }
  s.source           = { :git => 'https://github.com/fmo91/PluggableApplicationDelegate.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'PluggableApplicationDelegate/Classes/**/*'
  
  s.frameworks = 'UIKit'
end
