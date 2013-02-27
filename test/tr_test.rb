# -*- encoding: utf-8 -*-

require 'test_helper'
require 'inflections/tr'

class TestTurkishInflections < MiniTest::Unit::TestCase
  def test_regular_plurals
    assert_equal 'günler', 'gün'.pluralize
    assert_equal 'gün', 'günler'.singularize

    assert_equal 'kirazlar', 'kiraz'.pluralize
    assert_equal 'kiraz', 'kirazlar'.singularize

    assert_equal 'kitaplar', 'kitap'.pluralize
    assert_equal 'kitap', 'kitaplar'.singularize

    assert_equal 'köpekler', 'köpek'.pluralize
    assert_equal 'köpek', 'köpekler'.singularize
    
    assert_equal 'testler', 'test'.pluralize
    assert_equal 'test', 'testler'.singularize

    assert_equal 'üçgenler', 'üçgen'.pluralize
    assert_equal 'üçgen', 'üçgenler'.singularize
  end

  def test_irregulars
    assert_equal 'biz', 'ben'.pluralize
    assert_equal 'ben', 'biz'.singularize

    assert_equal 'siz', 'sen'.pluralize
    assert_equal 'sen', 'siz'.singularize

    assert_equal 'o', 'onlar'.singularize
    assert_equal 'onlar', 'o'.pluralize
  end
end
