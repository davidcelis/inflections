# encoding: utf-8

module Inflections
  ActiveSupport::Inflector.inflections(:it) do |inflect|
    inflect.clear

    inflect.plural(/[oei]$/i, 'i')
    inflect.plural(/[àèìòù]$/i, '\0')
    inflect.plural(/^.{2,3}$/, '\0')
    inflect.plural(/go$/i, 'ghi')

    inflect.singular(/i$/i, 'o')
    inflect.singular(/^.{2,3}$/, '\0')
    inflect.singular(/ghi$/i, 'go')

    inflect.irregular('uomo', 'uomini')
  end
end
