# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave_audio/version'

Gem::Specification.new do |spec|
  spec.name          = "carrierwave_audio"
  spec.version       = CarrierwaveAudio::VERSION
  spec.authors       = ["doodzik"]
  spec.email         = ["4004blog@gmail.com"]
  spec.summary       = %q{a plugin to use ruby-audio_info with carrierwave and to convert audio files}
  spec.description   = %q{install the ruby-sox https://github.com/TMXCredit/ruby-sox requirements on your system}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_runtime_dependency "ruby-audioinfo"
end
