pkg_version = ""

# The package version of determined by parsing the c source file. This ensures the version is
# only ever specified ins a single place.
File.open("ext/sqlanywhere/sqlanywhere.c") do |f|
   f.grep( /const char\* VERSION/ ) do |line|
      pkg_version = /\s*const char\* VERSION\s*=\s*["|']([^"']*)["|'];\s*/.match(line)[1]
   end
end

Gem::Specification.new do |gem|
  gem.authors = ["Eric Farrar"]
  gem.email = 'eric.farrar@ianywhere.com'
  gem.name = 'sqlanywhere'
  gem.summary = 'SQL Anywhere library for Ruby'
  gem.description = <<-EOF
    SQL Anywhere  Driver for Ruby
  EOF
  gem.version = '0.2.1'
  gem.required_ruby_version = '>= 1.8.6'
  gem.files = Dir["lib/**/*", "ext/**/*.{cpp,rb}", "LICENSE", "Rakefile", "README.md"]
  gem.test_file  = 'test/sqlanywhere_test.rb'

  gem.add_development_dependency "rake-compiler"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "byebug"

  gem.extensions = %w[ext/sqlanywhere/extconf.rb]
end
