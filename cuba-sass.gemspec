Gem::Specification.new do |s|
  s.name = "cuba-sass"
  s.version = "1.0.0"
  s.summary = "A Cuba plugin to use Sass."
  s.description = "Cuba is a microframework for web applications."
  s.authors = ["Cecille Manalang"]
  s.email = ["cecille@onegoodcode.com"]
  s.homepage = "http://github.com/cecillem/cuba-sass"
  s.license = "UNLICENSE"

  s.files = Dir[
    "README.md",
    "Rakefile",
    "lib/**/*.rb",
    "*.gemspec",
    "test/*.*"
  ]

  s.add_dependency "cuba", "~> 3.3"
  s.add_dependency "sass", "~> 3.4"
  s.add_development_dependency "cutest", "~> 1.2"
  s.add_development_dependency "rack-test", "~> 1.6"
end
