3.2.12.20130314 (Current release)
=================================
* Support for French (thanks to [Olivier Laviale](https://github.com/olvlvl) of [ICanBoogie](https://github.com/ICanBoogie/Inflector))

3.2.12.20130305
===============
* Fix #9 - a bug that was causing all strings to pluralize and singularize in Turkish.

3.2.12
======
* Support for Turkish (thanks to [Ferhat Elmas](https://github.com/ferhatelmas))

3.2.9.20121206
==============
* Support for Kazakh (thanks to [Galymzhan Kozhayev](https://github.com/galymzhan))

3.2.9
=====
* Support for Norwegian Bokmål (thanks to [Henrik Hodne](https://github.com/henrikhodne))

3.2.8
=====
* Support for British English (thanks to [creativetags](https://github.com/creativetags))
* Now versioning alongside ActiveSupport

0.0.5
=====
* Rails users no longer need to specify a locale to load; inflections are automagically loaded depending on `I18n.default_locale`

0.0.4
=====
* Support for Spanish (es)

0.0.3
=====
* Code reorganization. Inflections will now be located under `lib/inflections/` and will be named as according to their I18n abbreviation.
* Tests have also been reorganized. They live in the `test/` directory (big surprise) and, like the inflection files, should be named as according to their I18n abbreviation (`en_test.rb`, `es_test.rb`, `de_test.rb`, etc.)

0.0.2
=====
* Travis CI support

0.0.1
=====
* Initial version: support for English (en)
