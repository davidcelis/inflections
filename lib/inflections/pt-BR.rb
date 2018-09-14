# encoding: utf-8
# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
module Inflections
  ActiveSupport::Inflector.inflections(:'pt_BR') do |inflect|
    inflect.clear

    inflect.plural(/$/,  's')
    inflect.plural(/(s)$/i,  '\1')
    inflect.plural(/(z|r)$/i, '\1es')
    inflect.plural(/al$/i,  'ais')
    inflect.plural(/el$/i,  'eis')
    inflect.plural(/ol$/i,  'ois')
    inflect.plural(/ul$/i,  'uis')
    inflect.plural(/([^aeou])il$/i,  '\1is')
    inflect.plural(/m$/i,   'ns')
    inflect.plural(/^(japon|escoc|ingl|dinamarqu|fregu|portugu)ês$/i,  '\1eses')
    inflect.plural(/^(|g)ás$/i,  '\1ases')
    inflect.plural(/ão$/i,  'ões')
    inflect.plural(/^(irm|m)ão$/i,  '\1ãos')
    inflect.plural(/^(alem|c|p)ão$/i,  '\1ães')

    # Sem acentos...
    inflect.plural(/ao$/i,  'oes')
    inflect.plural(/^(irm|m)ao$/i,  '\1aos')
    inflect.plural(/^(alem|c|p)ao$/i,  '\1aes')

    inflect.singular(/([^ê])s$/i, '\1')
    inflect.singular(/^(á|gá)s$/i, '\1s')
    inflect.singular(/(r|z)es$/i, '\1')
    inflect.singular(/([^p])ais$/i, '\1al')
    inflect.singular(/éis$/i, 'el')
    inflect.singular(/eis$/i, 'ei')
    inflect.singular(/ois$/i, 'ol')
    inflect.singular(/uis$/i, 'ul')
    inflect.singular(/(r|t|f|v)is$/i, '\1il')
    inflect.singular(/ns$/i, 'm')
    inflect.singular(/sses$/i, 'sse')
    inflect.singular(/^(.*[^s]s)es$/i, '\1')
    inflect.singular(/(ãe|ão|õe)s$/, 'ão')
    inflect.singular(/(ae|ao|oe)s$/, 'ao')
    inflect.singular(/(japon|escoc|ingl|dinamarqu|fregu|portugu)eses$/i, '\1ês')
    inflect.singular(/^(g|)ases$/i,  '\1ás')

    # Incontáveis
    inflect.uncountable %w( tórax tênis ônibus lápis fênix )

    # Irregulares
    inflect.irregular "país", "paises"
    inflect.irregular "árvore", "árvores"
    inflect.irregular "cadáver", "cadáveres"
  end
end
