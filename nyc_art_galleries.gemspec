# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nyc_art_galleries/version"

Gem::Specification.new do |spec|
  spec.name          = "nyc_art_galleries"
  spec.version       = NycArtGalleries::VERSION
  spec.authors       = ["Vicky Lau"]
  spec.email         = ["vlau.nyc@gmail.com"]

  spec.description   = %q{NYC Art Galleries.}
  spec.summary       = %q{This Ruby Gem provides a CLI to view the 10 best galleries in each neighborhood of New York City as per Time Out - New York website.}
  spec.homepage      = "https://github.com/vlaunyc/nyc-art-galleries-cli-gem."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "lib/nyc_art_galleries"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"
end
