Pod::Spec.new do |s|
  s.name             = 'SwiftGen-Janitor'
  s.version          = '0.2.1'
  s.summary          = 'A command line tool to search your iOS project by unused assets'

  s.description      = <<-DESC
SwiftGen-Janitor will warn you about any unused string or image in your project
                       DESC

  s.homepage         = 'https://github.com/felipe-valio-movile/SwiftGen-Janitor'
  s.license          = 'MIT'
  s.author           = { 'felipe.valio@movile.com' => 'felipe.valio@movile.com' }

  s.source = { :http => "https://github.com/felipe-valio-movile/SwiftGen-Janitor/releases/download/#{s.version}/swiftgen-janitor.zip" }
  s.preserve_paths = '*'
end
