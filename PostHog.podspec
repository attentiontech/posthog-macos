Pod::Spec.new do |s|
  s.name             = "PostHog"
  s.version          = "1.0.1"
  s.summary          = "The hassle-free way to add posthog to your macOS app."

  s.description      = <<-DESC
                       PostHog for macOS provides a single API that lets you
                       integrate with over 100s of tools.
                       DESC

  s.homepage         = "http://posthog.com/"
  s.license          =  { :type => 'MIT' }
  s.author           = { "PostHog" => "tim@posthog.com" }
  s.source           = { :git => "https://github.com/attentiontech/posthog-macos.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/PostHogHQ'

  s.osx.deployment_target = '11'

  s.ios.frameworks = 'CoreTelephony'
  s.frameworks = 'Security', 'StoreKit', 'SystemConfiguration', 'UIKit'

  s.source_files = [
    'PostHog/Classes/**/*',
    'PostHog/Internal/**/*',
    'PostHog/Vendor/**/*'
  ]
end
