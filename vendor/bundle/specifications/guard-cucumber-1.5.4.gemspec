# -*- encoding: utf-8 -*-
# stub: guard-cucumber 1.5.4 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-cucumber"
  s.version = "1.5.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Michael Kessler"]
  s.date = "2015-03-08"
  s.description = "Guard::Cucumber automatically run your features (much like autotest)"
  s.email = ["michi@flinkfinger.com"]
  s.homepage = "http://github.com/guard/guard-cucumber"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Guard plugin for Cucumber"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard-compat>, ["~> 1.0"])
      s.add_runtime_dependency(%q<cucumber>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<nenv>, ["~> 0.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
    else
      s.add_dependency(%q<guard-compat>, ["~> 1.0"])
      s.add_dependency(%q<cucumber>, [">= 1.3.0"])
      s.add_dependency(%q<nenv>, ["~> 0.1"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
    end
  else
    s.add_dependency(%q<guard-compat>, ["~> 1.0"])
    s.add_dependency(%q<cucumber>, [">= 1.3.0"])
    s.add_dependency(%q<nenv>, ["~> 0.1"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
  end
end
