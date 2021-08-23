module Inflections
  ActiveSupport::Inflector.inflections(:nb) do |inflect|
    inflect.clear

    inflect.plural(/$/, 'er')
    inflect.plural(/r$/i, 're')
    inflect.plural(/e$/i, 'er')
    inflect.plural(/ør$/i, 'ører')

    inflect.singular(/er$/i, '')
    inflect.singular(/re$/i, 'r')

    inflect.irregular('konto', 'konti')
    inflect.irregular 'mann', 'menn'
  end
end
