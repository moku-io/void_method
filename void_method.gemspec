require_relative 'lib/void_method/version'

Gem::Specification.new do |spec|
  spec.name = 'void_method'
  spec.version = VoidMethod::VERSION
  spec.authors = ['Riccardo Agatea']
  spec.email = ['riccardo@moku.io']

  spec.summary = 'A simple gem for a method that always returns void.'
  spec.description = 'A simple gem for a method that always returns void.'
  spec.homepage = 'https://github.com/moku-io/void_method'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/moku-io/void_method'
  spec.metadata['changelog_uri'] = 'https://github.com/moku-io/void_method/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename __FILE__
  spec.files = IO.popen(['git', 'ls-files', '-z'], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?('bin/', 'test/', 'spec/', 'features/', '.git', 'appveyor', 'Gemfile')
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
