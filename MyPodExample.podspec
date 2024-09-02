Pod::Spec.new do |s|
  s.name             = 'MyPodExample'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MyPodExample.'

  s.description      = <<-DESC
TODO: Add a long description of the pod here.
Describe what it does, why it was written, and its focus.
Keep it clear and informative.
  DESC

  s.homepage         = 'https://github.com/jordantangy/MyPodExample'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jordantangy' => 'jordantangy@gmail.com' }
  s.source           = { :git => 'https://github.com/jordantangy/MyPodExample.git', :tag => s.version.to_s }

  s.platform         = :osx
  s.osx.deployment_target = '10.10'

  s.source_files     = 'MyPodExample/Classes/**/*'

  # Define a subspec
  s.subspec 'SubComponent' do |subspec|
    subspec.source_files = 'MyPodExample/SubComponent/**/*'
    subspec.dependency 'AFNetworking'  # Add any dependencies specific to this subspec
    # Optionally specify additional attributes for the subspec
    # subspec.resources = 'MyPodExample/SubComponent/Assets/*'
  end

  # Additional configurations can go here if needed
end


