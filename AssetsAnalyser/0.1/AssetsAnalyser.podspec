
Pod::Spec.new do |s|
  s.name             = 'AssetsAnalyser'
  s.version          = '0.1'
  s.summary          = 'A short description of AssetsAnalyser.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/felipe.valio@movile.com/AssetsAnalyser'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'felipe.valio@movile.com' => 'felipe.valio@movile.com' }

  s.source = { :http => "https://github.com/Movile/assets-analyser-ios/releases/download/#{s.version}/assets-analyser.zip" }
  s.preserve_paths = '*'
end
