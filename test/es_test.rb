# encoding: utf-8

require 'test_helper'
require 'inflections/es'

class TestSpanishInflections < MiniTest::Unit::TestCase
  def test_plurales_regulares
    assert_equal 'libros', 'libro'.pluralize
    assert_equal 'libro', 'libros'.singularize

    assert_equal 'radios', 'radio'.pluralize
    assert_equal 'radio', 'radios'.singularize

    assert_equal 'señores', 'señor'.pluralize
    assert_equal 'señor', 'señores'.singularize

    assert_equal 'leyes', 'ley'.pluralize
    assert_equal 'ley', 'leyes'.singularize
  end

  def test_plurales_que_terminar_en_z
    assert_equal 'meces', 'mez'.pluralize
    assert_equal 'luces', 'luz'.pluralize
  end

  def test_plurales_que_terminar_en_n_o_s_con_acentos
    assert_equal 'aviones', 'avión'.pluralize
    assert_equal 'intereses', 'interés'.pluralize
  end

  def test_plurales_irregulares
    assert_equal 'los', 'el'.pluralize
    assert_equal 'el', 'los'.singularize
  end
end
