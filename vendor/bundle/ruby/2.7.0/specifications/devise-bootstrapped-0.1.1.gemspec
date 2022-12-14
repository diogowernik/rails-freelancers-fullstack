# -*- encoding: utf-8 -*-
# stub: devise-bootstrapped 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "devise-bootstrapped".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Fomera".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-07-03"
  s.description = " This gem generates nicer default views styled with Bootstrap so you have a bit of a better starting point for your app. ".freeze
  s.email = ["andrew@zerlex.net".freeze]
  s.homepage = "https://github.com/king601/devise-bootstrapped".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Generates nicer views for Devise that use Bootstrap".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
