# Inflections

This gem is to remove the cruft from ActiveSupport's inflections and provide a more sane set of defaults for Ruby/Rails applications. 

At the time of this gem's publication, the list of inflections in ActiveSupport is a mess. It is riddled with special cases such as a special pluralization rule for "octopus" and "virus", even though they follow a regular rule (as octopi and viri are disputed terms). Similar pluralization rules exist for "ox", "quiz", "mouse", "louse", etc.

Many of the special cases that ActiveSupport defines will not see the light of day in an application. Other rules exist that are actually gramatical exceptions, such as changing "f" to a "v" when encountered at the end of the word (which then requires even more rules to fix special words such as "drive", "safe", "hive", etc.). And, of course, who can forget the special pluralization of "cow" to the archaic term of Scottish origin, "kine" (the plural of "kye")?

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'inflections'
```

And then execute:

```bash
$ bundle
```

## Usage

If you're using Rails, you're done. The default inflections defined in ActiveSupport will be overwritten, and you can continue to define your own special cases in `config/intializers/inflections.rb`.

Otherwise, wherever you need 'em:

```ruby
require 'inflections'
```

## Contributing

Please note that pull requests will only be accepted for rules that are in error or a potentially missed rule. If your change is an exception to an existing rule, that exception must occur _frequently_ and must involved words used more frequently than the regular plurals. If your change is an irregularity, it must be a word that is arguably _frequently_ encountered in applications that would use ActiveSupport. 

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`) with tests
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
