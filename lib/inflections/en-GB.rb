module Inflections
  ActiveSupport::Inflector.inflections(:'en-GB') do |inflect|
    inflect.clear

    inflect.plural(/$/, 's')
    inflect.plural(/([sxz]|[cs]h)$/i, '\1es')
    inflect.plural(/([^aeiouy]o)$/i, '\1es')
    inflect.plural(/([^aeiouy])y$/i, '\1ies')

    inflect.singular(/s$/i, '')
    inflect.singular(/(ss)$/i, '\1')
    inflect.singular(/([sxz]|[cs]h)es$/, '\1')
    inflect.singular(/([^aeiouy]o)es$/, '\1')
    inflect.singular(/([^aeiouy])ies$/i, '\1y')

    inflect.irregular('child', 'children')
    inflect.irregular('person', 'people')
    inflect.irregular('self', 'selves')

    inflect.uncountable(%w(series))
  end
end
