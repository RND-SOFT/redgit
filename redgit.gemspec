# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "redgit/version"

Gem::Specification.new do |s|
  s.name        = "redgit"
  s.version     = Redgit::VERSION
  s.authors     = ["Samoilenko Yuri"]
  s.email       = ["kinnalru@gmail.com"]
  s.homepage    = "http://github.com/kinnalru/redgit"
  s.summary     = %q{Redgit is gem for commit-msg git hook redmine integration}
  s.description = %q{Redgit is gem for commit-msg git hook redmine integration. Run redgit in git reposirory folder.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "term-ansicolor"
  s.add_runtime_dependency "activerecord"
  s.add_runtime_dependency 'awesome_print'
  s.add_runtime_dependency 'rack'


end
