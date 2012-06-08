# Provide a simple gemspec so you can easily use your ddd_architect
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "ife_voting"
  s.summary = "Insert IfeVoting summary."
  s.description = "Insert IfeVoting description."
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "0.0.1"
  s.authors = "Author name here."
end
