# encoding: utf-8
#
# Swedish inflections
#
# Original rules by olabini - https://olabini.com/blog/2006/08/announcing-swedish-rails
# Adapted by richardjohansson - for https://github.com/mynewsdesk/swedish_pluralize
#
module Inflections
  ActiveSupport::Inflector.inflections(:sv) do |inflect|
    inflect.clear

    # --- Plural ---

    # -er
    inflect.plural(/([tmnslpr])$/i, '\1er') # produkt, produkter

    # -or
    inflect.plural(/a$/i, 'or') # flicka, flickor

    # -ar
    inflect.plural(/e$/i, 'ar') # pojke, pojkar
    inflect.plural(/g$/i, 'gar')
    inflect.plural(/l$/i, 'lar') # bil, bilar
    inflect.plural(/el$/i, 'lar') # fågel, fåglar

    # -er
    inflect.plural(/kel$/i, 'kler') # muskel, muskler
    inflect.plural(/tel$/i, 'tlar') # titel, titlar

    # -r
    inflect.plural(/de$/i, 'der') # fiende, fiender

    # -n
    inflect.plural(/le$/i, 'len') # äpple, äpplen

    inflect.plural(/ö$/i, 'ön') # frö, frön
    inflect.plural(/ok$/i, 'öcker') # bok, böcker
    inflect.plural(/um$/i, 'a') # faktum, fakta
    inflect.plural(/o$/i, 'or') # sko, skor
    inflect.plural(/s$/i, 'sor') # ros, rosor
    inflect.plural(/man$/i, 'män') # man, män
    inflect.plural(/mus$/i, 'möss') # mus, möss
    inflect.plural(/d$/i, 'den') # huvud, huvuden
    inflect.plural(/ad$/i, 'ader')
    inflect.plural(/ne$/i, 'nen') # vittne, vittnen
    inflect.plural(/and$/i, 'änder') # hand, händer
    inflect.plural(/i$/i, 'ier') # kategori, kategorier
    inflect.plural(/mi$/i, 'min')

    # --- Singular ---

    # -er
    inflect.singular(/([tmnslpr])er$/i, '\1') # produkt, produkter

    # -or
    inflect.singular(/or$/i, 'a') # flicka, flickor

    # -ar
    inflect.singular(/mar$/i, 'me')
    inflect.singular(/kar$/i, 'ke') # pojke, pojkar
    inflect.singular(/gar$/i, 'g')
    inflect.singular(/lar$/i, 'l') # bil, bilar
    inflect.singular(/glar$/i, 'gel') # fågel, fåglar

    # -er
    inflect.singular(/ler$/i, 'el') # muskel, muskler

    # -r
    inflect.singular(/der$/i, 'de') # fiende, fiender
    inflect.singular(/ader$/i, 'ad')

    # -n
    inflect.singular(/en$/i, 'e') # vittne, vittnen

    inflect.singular(/tlar$/i, 'tel') # titel, titlar
    inflect.singular(/ön$/i, 'ö') # frö, frön
    inflect.singular(/öcker$/i, 'ok') # bok, böcker
    inflect.singular(/a$/i, 'um') # faktum, fakta
    inflect.singular(/män$/i, 'man') # man, män
    inflect.singular(/möss$/i, 'mus') # mus, möss
    inflect.singular(/den$/i, 'd') # huvud, huvuden
    inflect.singular(/skor$/i, 'sko') # sko, skor
    inflect.singular(/änder$/i, 'and') # hand, händer
    inflect.singular(/sor$/i, 's') # ros, rosor
    inflect.singular(/rier$/i, 'ri')
    inflect.singular(/min$/i, 'mi')

    # --- Uncountable ---

    inflect.uncountable %w(hus kar träd får brev namn nummer kön)

  end
end
