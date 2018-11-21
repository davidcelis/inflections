# encoding: utf-8

module Inflections
  ActiveSupport::Inflector.inflections(:es) do |inflect|
    inflect.clear

    ############# Reglas generales
    #
    # De acuerdo a http://lema.rae.es/dpd/srv/search?id=Iwao8PGQ8D6QkHPn4i
    #
    #
    # El orden de estas reglas importa, toma prescedencia la de más abajo
    #
    ##############


    # Voces extranjeras terminadas en -y precedida de consonante. Deben adaptarse gráficamente al español
    # sustituyendo la -y por -i: dandi (del ingl. dandy); panti (del ingl. panty); ferri (del ingl. ferry).
    # Su plural se forma, como el de las palabras españolas con esta terminación (→ a), añadiendo una -s:
    # dandis, pantis, ferris. No son admisibles, por tanto, los plurales que conservan la -y del singular
    # etimológico: dandys, pantys, ferrys.
    #
    inflect.singular /^(.+[bcdfghjklmnpqrstvwxyz]i)s$/i, '\1'
    inflect.plural /^(.+[bcdfghjklmnpqrstvwxyz]i)$/i, '\1s'


    # Sustantivos y adjetivos terminados en grupo consonántico. Procedentes todos ellos de otras lenguas,
    # forman el plural con -s (salvo aquellos que terminan ya en -s, que siguen la regla general; → f): gong, pl. gongs;
    # iceberg, pl. icebergs; récord, pl. récords. Se exceptúan de esta norma las voces compost, karst, test, trust y kibutz,
    # que permanecen invariables en plural, pues la adición de una -s en estos casos daría lugar a una secuencia de difícil
    # articulación en español. También son excepción los anglicismos lord y milord, cuyo plural asentado en español es lores y
    # milores, respectivamente.
    inflect.singular /^(.+[bdfghjklmnpqrtvwxyz][bcdfghjklmnpqrtvwxyz])s$/i, '\1'
    inflect.plural /^(.+[bdfghjklmnpqrtvwxyz][bcdfghjklmnpqrtvwxyz])$/i, '\1s'


    # Sustantivos y adjetivos terminados en vocal átona o en -e tónica. Forman el plural con -s:
    # casas, estudiantes, taxis, planos, tribus, comités.
    #
    inflect.singular /^(.+[aeéiou])s$/i, '\1'
    inflect.plural /^(.+[aeéiou])$/i, '\1s'

    # Sustantivos y adjetivos terminados en -i o en -u tónicas. Admiten generalmente dos formas de plural,
    # una con -es y otra con -s, aunque en la lengua culta suele preferirse la primera: bisturíes o bisturís,
    # carmesíes o carmesís, tisúes o tisús, tabúes o tabús. En los gentilicios, aunque no se consideran
    # incorrectos los plurales en -s, se utilizan casi exclusivamente en la lengua culta los plurales en -es:
    # israelíes, marroquíes, hindúes, bantúes.
    # Excepciones, o cuando la puerca tuerce el rabo:
    #   Por otra parte, hay voces, generalmente las procedentes de otras
    #   lenguas o las que pertenecen a registros coloquiales o populares, que solo forman el plural con -s:
    #   gachís, pirulís, popurrís, champús, menús, tutús, vermús. El plural del adverbio sí, cuando funciona
    #   como sustantivo, es síes, a diferencia de lo que ocurre con la nota musical si, cuyo plural es sis
    #
    inflect.singular /^(.+[íú])es$/i, '\1'
    inflect.plural /^(.+[íú])$/i, '\1es'


    # Sustantivos y adjetivos terminados en -a o en -o tónicas. Aunque durante algún tiempo vacilaron
    # entre el plural en -s y el plural en -es, en la actualidad forman el plural únicamente con -s:
    # papás, sofás, bajás, burós, rococós, dominós.
    #
    inflect.singular /^(.+[áó])s$/i, '\1'
    inflect.plural /^(.+[áó])$/i, '\1s'


    # Sustantivos y adjetivos terminados en -s o en -x. Si son monosílabos o polisílabos agudos,
    # forman el plural añadiendo -es: tos, pl. toses; vals, pl. valses, fax, pl. faxes; compás, pl. compases;
    # francés, pl. franceses.
    # Excepciones, o cuando la puerca tuerce el rabo:
    #   En el resto de los casos, permanecen invariables: crisis, pl. crisis; tórax,
    #   pl. tórax; fórceps, pl. fórceps.
    #   Es excepción a esta regla la palabra dux, que, aun siendo monosílaba, es invariable en plural: los dux.
    #   También permanecen invariables los polisílabos agudos cuando se trata de voces compuestas cuyo segundo
    #   elemento es ya un plural: ciempiés, pl. ciempiés (no ciempieses); buscapiés, pl. buscapiés (no buscapieses),
    #   pasapurés, pl. pasapurés (no pasapureses).
    #
    inflect.singular /^(.+[xs])es$/i, '\1'
    inflect.plural /^(.+[xs])$/i, '\1es'


    # Sustantivos y adjetivos terminados en consonantes distintas de -l, -r, -n, -d, -z, -j, -s, -x, -ch.
    # Se trate de onomatopeyas o de voces procedentes de otras lenguas, hacen el plural en -s: crac,
    # pl. cracs; zigzag, pl. zigzags; esnob, pl. esnobs; chip, pl. chips; mamut, pl. mamuts; cómic,
    # pl. cómics. Se exceptúa de esta regla la palabra club, que admite dos plurales, clubs y clubes (→ club).
    # También son excepciones el arabismo imam (→ imán), cuyo plural asentado es imames, y el latinismo
    # álbum (→ álbum), cuyo plural asentado es álbumes.
    #
    inflect.singular /^(.+[^c][bcfghkmpqtvwy])s$/i, '\1'
    inflect.plural /^(.+[^c][bcfghkmpqtvwy])$/i, '\1s'


    # Sustantivos y adjetivos terminados en -y precedida de vocal. Forman tradicionalmente su plural con -es: rey, pl. reyes;
    # ley, pl. leyes; buey, pl. bueyes; ay, pl. ayes; convoy, pl. convoyes; bocoy, pl. bocoyes.
    # Excepciones, o cuando la puerca tuerce el rabo:
    #   Sin embargo, los sustantivos y adjetivos con esta misma configuración que se han incorporado al uso más recientemente
    #   —en su mayoría palabras tomadas de otras lenguas— hacen su plural en -s. En ese caso, la y del singular mantiene en plural
    #   su carácter vocálico y, por lo tanto, debe pasar a escribirse i (→ i, 5b): gay, pl. gais; jersey, pl. jerséis; espray, pl.
    #   espráis; yóquey, pl. yoqueis. Pertenecen a la etapa de transición entre ambas normas y admiten, por ello, ambos plurales
    #   las palabras coy, pl. coyes o cois; estay, pl. estayes o estáis; noray, pl. norayes o noráis; guirigay,
    #   pl. guirigayes o guirigáis, con preferencia hoy por las formas con -s.
    #
    inflect.singular /^(.+[aáeéiíoóuú]y)es$/i, '\1'
    inflect.plural /^(.+[aáeéiíoóuú]y)$/i, '\1es'


    # Sustantivos y adjetivos terminados en -ch. Procedentes todos ellos de otras lenguas, o bien se mantienen
    # invariables en plural: (los) crómlech, (los) zarévich, (los) pech, o bien hacen el plural en -es:
    # sándwich, pl. sándwiches; maquech, pl. maqueches.
    #
    inflect.singular /^(.+ch)es$/i, '\1'
    inflect.plural /^(.+ch)$/i, '\1es'


    # Sustantivos y adjetivos terminados en -l, -r, -n, -d, -z, -j. Si no van precedidas de otra consonante (→ j),
    # forman el plural con -es: dócil, pl. dóciles; color, pl. colores; pan, pl. panes; césped, pl. céspedes;
    # cáliz, pl. cálices; reloj, pl. relojes. Los extranjerismos que terminen en estas consonantes deben seguir
    # esta misma regla: píxel, pl. píxeles; máster, pl. másteres; pin, pl. pines; interfaz, pl. interfaces; sij,
    # pl. sijes. Son excepción las palabras esdrújulas, que permanecen invariables en plural: polisíndeton,
    # pl. (los) polisíndeton; trávelin, pl. (los) trávelin; cáterin, pl. (los) cáterin.
    # Excepcionalmente, el plural de hipérbaton es hipérbatos.
    #
    inflect.singular /^(.+[aáeéiíoóuú])ces$/i, '\1z'
    inflect.plural /^(.+[aáeéiíoóuú])z$/i, '\1ces'
    inflect.singular /^(.+[aáeéiíoóuú][lrndj])es$/i, '\1'
    inflect.plural /^(.+[aáeéiíoóuú][lrndj])$/i, '\1es'

    #
    #
    ############# Fin casos generales

    inflect.irregular('el', 'los')
  end
end

