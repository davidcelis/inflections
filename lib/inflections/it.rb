# encoding: utf-8

module Inflections
  ActiveSupport::Inflector.inflections(:it) do |inflect|
    inflect.clear

    inflect.plural(/[oei]$/i, 'i')
    inflect.plural(/[àèìòù]$/i, '\0')
    inflect.plural(/^.{2,3}$/, '\0')
    inflect.plural(/go$/i, 'ghi')

    inflect.singular(/i$/i, 'o')
    inflect.singular(/e$/i, 'a')
    inflect.singular(/^.{2,3}$/, '\0')
    inflect.singular(/ghi$/i, 'go')

    inflect.irregular('uomo', 'uomini')
    inflect.irregular('bue', 'buoi')
    inflect.irregular('dio', 'dèi')
    inflect.irregular('ampio', 'ampi')
    inflect.irregular('tempio', 'templi')
    inflect.irregular('mio', 'miei')
    inflect.irregular('tuo', 'tuoi')
    inflect.irregular('suo', 'suoi')
    inflect.irregular('belga', 'belgi')
    inflect.irregular('euripiga', 'euripigi')
    inflect.irregular('bello', 'belli')
    inflect.irregular('mano', 'mani')
    inflect.irregular('ala', 'ali')
    inflect.irregular('arma', 'armi')
    inflect.irregular('eco', 'echi')
    inflect.irregular('sinodo', 'sinodi')
    inflect.irregular('centinaio', 'centinaia')
    inflect.irregular('migliaio', 'migliaia')
    inflect.irregular('paio', 'paia')
    inflect.irregular('prelio', 'prelia')
    inflect.irregular('riso', 'risa')
    inflect.irregular('uovo', 'uova')
    inflect.irregular('dito', 'dita')
    inflect.irregular('carcere', 'carceri')
  end
end
