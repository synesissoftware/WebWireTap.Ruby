# gemspec for WebWireTap.Ruby

$:.unshift File.join(File.dirname(__FILE__), 'lib')

require 'webwiretap/version'

require 'date'

Gem::Specification.new do |spec|

	spec.name			=	'webwiretap'
	spec.version		=	WebWireTap::VERSION
	spec.date			=	Date.today.to_s
	spec.summary		=	'webwiretap'
	spec.description	=	<<END_DESC
An implementation of the Wire Tap enterprise integration
pattern for capturing HTTP, for Ruby
END_DESC
	spec.authors		=	[ 'Matt Wilson' ]
	spec.email			=	'matthew@synesis.com.au'
	spec.homepage		=	'http://github.com/synesissoftware/WebWireTap.Ruby'
	spec.license		=	'BSD-3-Clause'

	spec.required_ruby_version = '~> 2.2'

	spec.add_runtime_dependency 'clasp-ruby', [ '~> 0.21' ]
	spec.add_runtime_dependency 'libclimate-ruby', [ '~> 0.15' ]
	spec.add_runtime_dependency 'pantheios-ruby', [ '~> 0.20' ]
	spec.add_runtime_dependency 'xqsr3', [ '~> 0.34' ]

	spec.files		=	Dir[ 'Rakefile', '{bin,examples,lib,man,spec,test}/**/*', 'README*', 'LICENSE*' ] & `git ls-files -z`.split("\0")
end

