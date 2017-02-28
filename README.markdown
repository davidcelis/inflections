# Inflections [![Build Status](https://secure.travis-ci.org/davidcelis/inflections.png)](http://travis-ci.org/davidcelis/inflections)

Inflections is a repository containing non-English singularization and pluralization rules for Rails, supporting the multilingual ActiveSupport::Inflector in Rails 4.

## Languages Currently Supported

* Spanish (es)
* French (fr)
* Kazakh (kk)
* Norwegian Bokmål (nb)
* Brazilian Portugues (pt-BR)
* Turkish (tr)
* Italian (it)

If you are fluent in a language not yet included in this gem, _please_ consider creating a list of inflections and submitting a pull request.

## Installation

Add the following to your application's Gemfile:

```ruby
gem 'inflections'
```

And then execute:

```bash
$ bundle
```

## Usage

To inflect strings in a different locale:

```ruby
'persona'.pluralize(:es)
# => "personas"
'madame'.pluralize(:fr)
# => "mesdames"
```

Define your own additional rules as such:

```ruby
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.singular /(phase)s$/i, '\1'
  inflect.plural /(shel|kni)fe/, '\1ves'
  inflect.irregular 'foot', 'feet'
  inflect.uncountable %w[money fish]
end
```

# Rails < 4.0.0

If you're not using ActiveSupport 4, the [multilingual Inflector](http://davidcel.is/posts/edge-rails-a-multilingual-inflector/) won't be supported. You should install inflections 3.2.x and you'll have to choose which locale you use by requiring a specific file:

```ruby
gem 'inflections', '~> 3.2', require: 'inflections/es'
```

Note that this will override the default set of English rules that come with Rails. You should do this only if you plan on your constants and code itself not being in English.

## Contributing

Please note that pull requests for already supported languages will only be accepted for rules that are in error or a potentially missed rule. If your change is an exception to an existing rule, that exception must occur _frequently_ and must involve words used more frequently than the regular plurals. If your change is an irregularity, it must be a word that is arguably _frequently_ encountered in applications that would use ActiveSupport. The default list of inflections is meant to be short.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`) with tests
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
