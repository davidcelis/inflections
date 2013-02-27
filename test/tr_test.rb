# -*- encoding: utf-8 -*-

require 'test_helper'
require 'inflections/tr'

class TestTurkishInflections < MiniTest::Unit::TestCase
  def test_regular_plurals
    assert_equal 'günler', 'gün'.pluralize(:tr)
    assert_equal 'gün', 'günler'.singularize(:tr)

    assert_equal 'kirazlar', 'kiraz'.pluralize(:tr)
    assert_equal 'kiraz', 'kirazlar'.singularize(:tr)

    assert_equal 'kitaplar', 'kitap'.pluralize(:tr)
    assert_equal 'kitap', 'kitaplar'.singularize(:tr)

    assert_equal 'köpekler', 'köpek'.pluralize(:tr)
    assert_equal 'köpek', 'köpekler'.singularize(:tr)
    
    assert_equal 'testler', 'test'.pluralize(:tr)
    assert_equal 'test', 'testler'.singularize(:tr)

    assert_equal 'üçgenler', 'üçgen'.pluralize(:tr)
    assert_equal 'üçgen', 'üçgenler'.singularize(:tr)
  end

  def test_irregulars
    assert_equal 'biz', 'ben'.pluralize(:tr)
    assert_equal 'ben', 'biz'.singularize(:tr)

    assert_equal 'siz', 'sen'.pluralize(:tr)
    assert_equal 'sen', 'siz'.singularize(:tr)

    assert_equal 'o', 'onlar'.singularize(:tr)
    assert_equal 'onlar', 'o'.pluralize(:tr)
  end
end
