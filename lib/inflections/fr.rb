# encoding: utf-8
#
# These rules come from a port of ActiveSupport's Inflector to PHP:
# https://github.com/ICanBoogie/Inflector/blob/master/lib/inflections/fr.php

module Inflections
  ActiveSupport::Inflector.inflections(:fr) do |inflect|
    inflect.clear

    inflect.plural(/$/, 's')
    inflect.singular(/s$/, '')

    inflect.plural(/(bijou|caillou|chou|genou|hibou|joujou|pou|au|eu|eau)$/, '\1x')
    inflect.singular(/(bijou|caillou|chou|genou|hibou|joujou|pou|au|eu|eau)x$/, '\1')

    inflect.plural(/(bleu|émeu|landau|lieu|pneu|sarrau)$/, '\1s')
    inflect.plural(/al$/, 'aux')
    inflect.plural(/ail$/, 'ails')
    inflect.singular(/(journ|chev)aux$/, '\1al')
    inflect.singular(/ails$/, 'ail')

    inflect.plural(/(b|cor|ém|gemm|soupir|trav|vant|vitr)ail$/, '\1aux')
    inflect.singular(/(b|cor|ém|gemm|soupir|trav|vant|vitr)aux$/, '\1ail')

    inflect.plural(/(s|x|z)$/, '\1')

    inflect.irregular('monsieur', 'messieurs')
    inflect.irregular('madame', 'mesdames')
    inflect.irregular('mademoiselle', 'mesdemoiselles')
  end
end
