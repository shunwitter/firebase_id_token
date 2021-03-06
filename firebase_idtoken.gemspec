
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'firebase_idtoken/version'

Gem::Specification.new do |spec|
  spec.name          = 'firebase_idtoken'
  spec.version       = FirebaseIdtoken::VERSION
  spec.authors       = ['shunwitter']

  spec.summary       = %q{Ruby implementation to verify Google firebase ID token}
  spec.description   = %q{Retrieved UID on server side using ID token sent from client}
  spec.homepage      = 'https://github.com/shunwitter/firebase_idtoken'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'jwt', '~> 2.1'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
end
