# encoding: utf-8

require 'test_helper'
require 'inflections/it'

class TestItalianInflections < Minitest::Test
  def test_plurales_regulares
    assert_equal 'gelati', 'gelato'.pluralize(:it)
    assert_equal 'gelato', 'gelati'.singularize(:it)

    assert_equal 'donna', 'donne'.singularize(:it)

    assert_equal 'mari', 'mare'.pluralize(:it)

    assert_equal 'oasi', 'oasi'.pluralize(:it)
  end

  def test_plurales_ending_with_accent_letter
    assert_equal 'città', 'città'.pluralize(:it)
    assert_equal 'città', 'città'.singularize(:it)

    assert_equal 'caffè', 'caffè'.pluralize(:it)
    assert_equal 'caffè', 'caffè'.singularize(:it)
  end

  def test_plurales_ending_in_go
    assert_equal 'aghi', 'ago'.pluralize(:it)
    assert_equal 'ago', 'aghi'.singularize(:it)
  end

  def test_plurales_single_sillabe
    assert_equal 're', 're'.pluralize(:it)
    assert_equal 're', 're'.singularize(:it)

    assert_equal 'gru', 'gru'.pluralize(:it)
    assert_equal 'gru', 'gru'.singularize(:it)
  end

  def test_plurales_irregulares
    assert_equal 'uomini', 'uomo'.pluralize(:it)
    assert_equal 'uomo', 'uomini'.singularize(:it)
  end
end
