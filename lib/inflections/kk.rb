# encoding: utf-8

module Inflections
  ActiveSupport::Inflector.inflections(:kk) do |inflect|
    inflect.clear

    vowels = 'оұаыөүәіе'

    inflect.plural(/[кқпстфхчцшщбвгд]$/i, '\0тар')
    inflect.plural(/[өүәіе][^#{vowels}]*[кқпстфхчцшщбвгд]$/i, '\0тер')

    inflect.plural(/[лмнңжз]$/i, '\0дар')
    inflect.plural(/[өүәіе][^#{vowels}]*[лмнңжз]$/i, '\0дер')

    inflect.plural(/[#{vowels}руй]$/i, '\0лар')
    inflect.plural(/[өүәіе][^#{vowels}]*[#{vowels}руй]$/i, '\0лер')

    inflect.singular(/[тдл][ае]р$/i, '')
  end
end
