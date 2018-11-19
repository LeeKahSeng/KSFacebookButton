Pod::Spec.new do |s|
  s.name             = 'KSFacebookButton'
  s.version          = '1.0.8'
  s.summary          = 'A customizable button which looks exactly the same as FBSDKLoginButton '

  s.description      = 'KSFacebookButton is a simple custom button which looks exactly the same as FBSDKLoginButton. The problem with FBSDKLoginButton is that it do not allow any customization on the look and feel of the button. With KSFacebookButton you can change the title, width and height or even corner radius of the button easily.'

  s.homepage         = 'https://github.com/LeeKahSeng/KSFacebookButton'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lee Kah Seng' => 'kahseng.lee123@gmail.com' }
  s.source           = { 
    :git => 'https://github.com/LeeKahSeng/KSFacebookButton.git', 
    :tag => s.version.to_s,
    :branch => 'master'
  }

  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.source_files = 'KSFacebookButton/KSFacebookButton/Sources/*.swift'
  s.resources = 'KSFacebookButton/KSFacebookButton/Sources/Images/*'

end
