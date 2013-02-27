# -*- encoding: utf-8 -*-

module Inflections
  ActiveSupport::Inflector.inflections(:tr) do |inflect|
    inflect.clear

    inflect.plural(/([aoıu][^aoıueöiü]{,6})$/, '\1lar')
    inflect.plural(/([eöiü][^aoıueöiü]{,6})$/, '\1ler')

    inflect.singular(/l[ae]r$/i, '')

    inflect.irregular('ben', 'biz')
    inflect.irregular('sen', 'siz')
    inflect.irregular('o', 'onlar')
  end
end
