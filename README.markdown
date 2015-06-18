# Inflections [![Build Status](https://secure.travis-ci.org/davidcelis/inflections.png)](http://travis-ci.org/davidcelis/inflections)

Inflections is a repository containing non-English singularization and pluralization rules for Rails.

## Languages Currently Supported

* English (en)
* British English (en-GB)
* Spanish (es)
* French (fr)
* Kazakh (kk)
* Norwegian Bokmål (nb)
* Turkish (tr)

If you are fluent in a language not yet included in this gem, _please_ consider creating a list of inflections and submitting a pull request.

## Installation

Add the following to your application's Gemfile:

```ruby
gem 'inflections', '~> 3.2'
```

And then execute:

```bash
$ bundle
```

## Usage

### Ruby on Rails

If you're using Rails, you're done. The default inflections defined in ActiveSupport will be overwritten, and you can continue to define your own special cases in `config/intializers/inflections.rb`. I18n's default locale (set in `config/application.rb`) will determine which inflections are loaded. If you do not wish to use your default locale, you can require a locale manually in your Gemfile:

```ruby
gem 'inflections', require: 'inflections/es'
```

Note that this will override the default set of English rules that come with Rails. You should do this only if you plan on your constants and code itself not being in English. If you wish for your code itself to remain in English, it's recommended that you do not include this gem.

### Otherwise

Wherever you need 'em:

```ruby
require 'inflections/es' # Replace 'es' with your preferred locale.
```

Define your own defaults as such:

```ruby
ActiveSupport::Inflector.inflections do |inflect|
  inflect.singular /(phase)s$/i, '\1'
  inflect.plural /(shel|kni)fe/, '\1ves'
  inflect.irregular 'foot', 'feet'
  inflect.uncountable %w( money )
end
```

## Contributing

Please note that pull requests for already supported languages will only be accepted for rules that are in error or a potentially missed rule. If your change is an exception to an existing rule, that exception must occur _frequently_ and must involve words used more frequently than the regular plurals. If your change is an irregularity, it must be a word that is arguably _frequently_ encountered in applications that would use ActiveSupport. The default list of inflections is meant to be short.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`) with tests
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
