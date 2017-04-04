# Rack::App circular dependency bug while testing

Sample app as proof of bug.

The bug concerns a circular dependency while testing app. Here is the stack trace:

```
▶ rake test
/home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55: warning: loading in progress, circular require considered harmful - /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app.rb
	from /home/user/.rvm/gems/ruby-2.4.0@global/gems/rake-12.0.0/lib/rake/rake_test_loader.rb:4:in  `<main>'
	from /home/user/.rvm/gems/ruby-2.4.0@global/gems/rake-12.0.0/lib/rake/rake_test_loader.rb:4:in  `select'
	from /home/user/.rvm/gems/ruby-2.4.0@global/gems/rake-12.0.0/lib/rake/rake_test_loader.rb:15:in  `block in <main>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/development/tests/rack_app_tests_circular_dependency/test/bug_test.rb:1:in  `<top (required)>'
	from /home/user/development/tests/rack_app_tests_circular_dependency/test/bug_test.rb:1:in  `require_relative'
	from /home/user/development/tests/rack_app_tests_circular_dependency/test/test_helper.rb:8:in  `<top (required)>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:40:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:133:in  `rescue in require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:133:in  `require'
	from /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app.rb:5:in  `<top (required)>'
	from /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app.rb:7:in  `<class:App>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app/version.rb:1:in  `<top (required)>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
/home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55: warning: loading in progress, circular require considered harmful - /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app.rb
	from /home/user/.rvm/gems/ruby-2.4.0@global/gems/rake-12.0.0/lib/rake/rake_test_loader.rb:4:in  `<main>'
	from /home/user/.rvm/gems/ruby-2.4.0@global/gems/rake-12.0.0/lib/rake/rake_test_loader.rb:4:in  `select'
	from /home/user/.rvm/gems/ruby-2.4.0@global/gems/rake-12.0.0/lib/rake/rake_test_loader.rb:15:in  `block in <main>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/development/tests/rack_app_tests_circular_dependency/test/bug_test.rb:1:in  `<top (required)>'
	from /home/user/development/tests/rack_app_tests_circular_dependency/test/bug_test.rb:1:in  `require_relative'
	from /home/user/development/tests/rack_app_tests_circular_dependency/test/test_helper.rb:8:in  `<top (required)>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:40:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:133:in  `rescue in require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:133:in  `require'
	from /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app.rb:5:in  `<top (required)>'
	from /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app.rb:10:in  `<class:App>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app/cli.rb:1:in  `<top (required)>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
/home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55: warning: loading in progress, circular require considered harmful - /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app.rb
	from /home/user/.rvm/gems/ruby-2.4.0@global/gems/rake-12.0.0/lib/rake/rake_test_loader.rb:4:in  `<main>'
	from /home/user/.rvm/gems/ruby-2.4.0@global/gems/rake-12.0.0/lib/rake/rake_test_loader.rb:4:in  `select'
	from /home/user/.rvm/gems/ruby-2.4.0@global/gems/rake-12.0.0/lib/rake/rake_test_loader.rb:15:in  `block in <main>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/development/tests/rack_app_tests_circular_dependency/test/bug_test.rb:1:in  `<top (required)>'
	from /home/user/development/tests/rack_app_tests_circular_dependency/test/bug_test.rb:1:in  `require_relative'
	from /home/user/development/tests/rack_app_tests_circular_dependency/test/test_helper.rb:8:in  `<top (required)>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:40:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:133:in  `rescue in require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:133:in  `require'
	from /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app.rb:5:in  `<top (required)>'
	from /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app.rb:11:in  `<class:App>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app/test.rb:2:in  `<top (required)>'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
	from /home/user/.rvm/rubies/ruby-2.4.0/lib/ruby/2.4.0/rubygems/core_ext/kernel_require.rb:55:in  `require'
/home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app/streamer/scheduler/null.rb:7: warning: mismatched indentations at 'end' with 'def' at 5
/home/user/.rvm/gems/ruby-2.4.0@rack_app_tests_circular_dependency/gems/rack-app-5.12.0/lib/rack/app/singleton_methods/route_handling.rb:34: warning: instance variable @namespaces not initialized
```

## Technical environment

This has been tested with:

* Ubuntu 16.04 LTS
* RVM
* Ruby 2.4.0
* rack-app 5.12.0
* rack-test 0.6.3


## Installation

Clone the repo:

```
git clone git@github.com:JoWilfrid/rack-app-tests-circular-dependency-bug.git rack-app-tests-circular-dependency-bug && cd $_
```

Install bundler & required gems

```
gem install bundler --no-ri --no-rdoc
bundle install
```

## Usage

```
rake test
```
