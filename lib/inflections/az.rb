# -*- encoding: utf-8 -*-

module Inflections
  ActiveSupport::Inflector.inflections(:az) do |inflect|
    inflect.clear

    inflect.plural(/([aıou][^aeəıiouöü]{,6})$/, '\1lar')
    inflect.plural(/([eəiöü][^aeəıiouöü]{,6})$/, '\1lər')

    inflect.singular(/l[aə]r$/i, '')

    inflect.irregular('mən', 'biz')
    inflect.irregular('sən', 'siz')
    inflect.irregular('o', 'onlar')

    inflect.uncountable %w[camaat əhali]
  end
end
