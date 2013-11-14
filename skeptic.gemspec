# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "skeptic"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stefan Kanev"]
  s.date = "2012-10-25"
  s.description = "An experimental, half-assed, bug-ridden and highly opinionated code analyzer."
  s.email = "stefan.kanev@gmail.com"
  s.executables = ["skeptic"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".rvmrc",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/skeptic",
    "features/skeptic.feature",
    "lib/skeptic.rb",
    "lib/skeptic/critic.rb",
    "lib/skeptic/environment.rb",
    "lib/skeptic/rule_table.rb",
    "lib/skeptic/rules.rb",
    "lib/skeptic/rules/check_syntax.rb",
    "lib/skeptic/rules/line_length.rb",
    "lib/skeptic/rules/lines_per_method.rb",
    "lib/skeptic/rules/max_nesting_depth.rb",
    "lib/skeptic/rules/methods_per_class.rb",
    "lib/skeptic/rules/no_semicolons.rb",
    "lib/skeptic/rules/no_trailing_whitespace.rb",
    "lib/skeptic/scope.rb",
    "lib/skeptic/sexp_visitor.rb",
    "skeptic.gemspec"
  ]
  s.homepage = "http://github.com/skanev/skeptic"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Skeptic points out annoying things in your code"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<trollop>, [">= 1.16.2"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<aruba>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<trollop>, [">= 1.16.2"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<aruba>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<trollop>, [">= 1.16.2"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<aruba>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
