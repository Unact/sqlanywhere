Gem::Specification.new do |gem|
  gem.authors = ["Eric Farrar"]
  gem.email = 'eric.farrar@ianywhere.com'
  gem.name = 'sqlanywhere'
  gem.summary = 'SQL Anywhere library for Ruby'
  gem.description = <<-EOF
    SQL Anywhere  Driver for Ruby
  EOF
  gem.version = '0.2.2'
  gem.required_ruby_version = '>= 2.2'
  gem.files = Dir["lib/**/*", "ext/**/*", "LICENSE", "Rakefile", "README.md"]
  gem.test_file  = 'test/sqlanywhere_test.rb'

  gem.add_development_dependency "rake-compiler"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "byebug"

  gem.extensions = %w[ext/sqlanywhere/extconf.rb]
end
