
Pod::Spec.new do |s|
  s.name             = 'AssetsAnalyser'
  s.version          = '0.1'
  s.summary          = 'A short description of AssetsAnalyser.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/felipebv+github@gmail.com/AssetsAnalyser'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'felipebv+github@gmail.com' => 'felipebv+github@gmail.com' }

  s.source = { :http => "https://github.com/felipebv/AssetsAnalyser/releases/download/#{s.version}/assets-analyser.zip" }
  s.preserve_paths = '*'
end
