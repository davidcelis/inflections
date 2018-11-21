# encoding: UTF-8
module Inflections
  ActiveSupport::Inflector.inflections(:la) do |inflect|
    inflect.clear

    # First declension
    inflect.plural(/a$/, 'ae')

    # Second
    inflect.plural(/us$/, 'i')
    inflect.plural(/(.*)([^aeiou])e(r)/, '\1\2\3es')
    inflect.plural(/(.*)([aeiou])er$/, '\1\2eri')
    inflect.plural(/um$/, 'a')

    # Fourth
    inflect.plural(/u$/, 'ua')
    inflect.plural(/(curs)(us)/, '\1ūs')

    # Fifth
    inflect.plural(/es$/, 'es')

    # Third declension is a catch-all given irregularity in
    # nominative case
    #
    # TODO:  How to handle something that requires knowledge
    # about the genitive to work?
    inflect.plural(/nomen/, 'nomina')
  end
end
