# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{file_mutate}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Kristian Mandrup}]
  s.date = %q{2011-07-20}
  s.description = %q{The file mutation DSL you always wish was included in Ruby}
  s.email = %q{kmandrup@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.textile"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.textile",
    "Rakefile",
    "VERSION",
    "lib/file_mutate.rb",
    "lib/file_mutate/append_content.rb",
    "lib/file_mutate/delete.rb",
    "lib/file_mutate/insert_content.rb",
    "lib/file_mutate/mutate.rb",
    "lib/file_mutate/overwrite_content.rb",
    "lib/file_mutate/remove_content.rb",
    "lib/file_mutate/replace_content.rb",
    "lib/file_mutation.rb",
    "spec/file_mutate/append_content_spec.rb",
    "spec/file_mutate/delete_spec.rb",
    "spec/file_mutate/insert_before_last_spec.rb",
    "spec/file_mutate/insert_content_spec.rb",
    "spec/file_mutate/overwrite_content_spec.rb",
    "spec/file_mutate/remove_content_spec.rb",
    "spec/file_mutate/replace_content_spec.rb",
    "spec/fixtures/application_file.rb",
    "spec/fixtures/class_file.rb",
    "spec/fixtures/class_file.txt",
    "spec/fixtures/content_file.txt",
    "spec/fixtures/empty.txt",
    "spec/fixtures/file.txt",
    "spec/fixtures/non-empty.txt",
    "spec/fixtures/routes_file.rb",
    "spec/fixtures/search_file.txt",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/kristianmandrup/file_mutate}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{Adds file mutation DSL to any module or extends File class}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.1"])
      s.add_runtime_dependency(%q<sugar-high>, [">= 0.4.9.5"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.5"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.10"])
      s.add_development_dependency(%q<jeweler>, [">= 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.1"])
      s.add_dependency(%q<sugar-high>, [">= 0.4.9.5"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.5"])
      s.add_dependency(%q<bundler>, ["~> 1.0.10"])
      s.add_dependency(%q<jeweler>, [">= 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.1"])
    s.add_dependency(%q<sugar-high>, [">= 0.4.9.5"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.5"])
    s.add_dependency(%q<bundler>, ["~> 1.0.10"])
    s.add_dependency(%q<jeweler>, [">= 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

