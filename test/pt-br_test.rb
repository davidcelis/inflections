# encoding: utf-8

require 'test_helper'
require 'inflections/pt-BR'

class TestSpanishInflections < Minitest::Test
  def test_plurales_regulares
    assert_equal 'livros', 'livro'.pluralize(:pt_br)
    assert_equal 'livro', 'livros'.singularize(:pt_br)

    assert_equal 'radios', 'radio'.pluralize(:pt_br)
    assert_equal 'radio', 'radios'.singularize(:pt_br)

    assert_equal 'senhores', 'senhor'.pluralize(:pt_br)
    assert_equal 'senhor', 'senhores'.singularize(:pt_br)

    assert_equal 'leis', 'lei'.pluralize(:pt_br)
    assert_equal 'lei', 'leis'.singularize(:pt_br)
    assert_equal 'rei', 'reis'.singularize(:pt_br)
  end

  def test_plurales_que_terminam_en_z
    assert_equal 'luzes', 'luz'.pluralize(:pt_br)
    assert_equal 'juizes', 'juiz'.pluralize(:pt_br)
  end

  def test_plurais_que_terminam_en_n_o_s_con_acentos
    assert_equal 'aviões', 'avião'.pluralize(:pt_br)
    assert_equal 'cães', 'cão'.pluralize(:pt_br)
    assert_equal 'interesses', 'interesse'.pluralize(:pt_br)
    assert_equal 'ases', 'ás'.pluralize(:pt_br)
    assert_equal 'mãos',  'mão' .pluralize(:pt_br)
    assert_equal 'peões', 'peão'.pluralize(:pt_br)
  end

  def test_singulares_regulares
    assert_equal 'casa', 'casas'.singularize(:pt_br)
    assert_equal 'cão', 'cães'.singularize(:pt_br)
    assert_equal 'mão', 'mãos'.singularize(:pt_br)
    assert_equal 'peão', 'peões'.singularize(:pt_br)

    assert_equal 'árvore', 'árvores'.singularize(:pt_br)
    assert_equal 'cor', 'cores'.singularize(:pt_br)
    assert_equal 'álbum', 'álbums'.singularize(:pt_br)
    assert_equal 'mulher', 'mulheres'.singularize(:pt_br)
  end

  def test_singulares_especiales
    assert_equal 'nação', 'nações'.singularize(:pt_br)
    assert_equal 'país', 'paises'.singularize(:pt_br)
    assert_equal 'paises', 'país'.pluralize(:pt_br)
  end
end
