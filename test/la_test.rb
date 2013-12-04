# encoding: UTF-8
require 'test_helper'
require 'inflections/la'

class TestLatinInflections < MiniTest::Unit::TestCase
  def test_first_declension
    assert_equal 'poetae', 'poeta'.pluralize(:la)
  end

  def test_second_declension_masculine
    assert_equal 'somni', 'somnus'.pluralize(:la)
  end

  def test_second_declension_neuter
    assert_equal 'dona', 'donum'.pluralize(:la)
  end

  def test_third_declension_gendered
    assert_equal 'patres', 'pater'.pluralize(:la)
    assert_equal 'pueri', 'puer'.pluralize(:la)
  end

  def test_third_declension_neuter
    assert_equal 'nomina', 'nomen'.pluralize(:la)
  end

  def test_fourth_declension_gendered
    assert_equal 'cursūs', 'cursus'.pluralize(:la)
  end

  def test_fourth_declension_neuter
    assert_equal 'cornua', 'cornu'.pluralize(:la)
  end

  def test_fifth_declension
    assert_equal 'res', 'res'.pluralize(:la)
  end
end
