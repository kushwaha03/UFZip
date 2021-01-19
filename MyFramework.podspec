Pod::Spec.new do |spec|

  spec.name         = 'MyFramework'
  spec.version      = '1.0.0'
  spec.summary      = 'A MyFramework is the'
  spec.description      = <<-DESC
    blaha blah blah .
                       DESC
                       
  spec.homepage     = 'https://github.com'
  spec.license     = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { 'krishna' => 'krishna@gmail.com' }

  spec.source       = { :git => 'https://github.com/kushwaha03/ShooterFramework.git', :tag => '1.0.0' }

  spec.ios.deployment_target = '11.0'

  spec.subspec 'FolderName' do |c|
    c.vendored_frameworks = 'FolderName/MyFramework.framework'
  end
  
    spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
    spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
