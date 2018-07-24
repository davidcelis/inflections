# -*- encoding: utf-8 -*-

require 'test_helper'
require 'inflections/az'

class TestAzerbaijaniInflections < Minitest::Test
  def test_regular_plurals
    assert_equal 'zürafələr', 'zürafə'.pluralize(:az)
    assert_equal 'zürafə', 'zürafələr'.singularize(:az)

    assert_equal 'insanlar', 'insan'.pluralize(:az)
    assert_equal 'insan', 'insanlar'.singularize(:az)

    assert_equal 'kitablar', 'kitab'.pluralize(:az)
    assert_equal 'kitab', 'kitablar'.singularize(:az)

    assert_equal 'pişiklər', 'pişik'.pluralize(:az)
    assert_equal 'pişik', 'pişiklər'.singularize(:az)

    assert_equal 'inqilabçılar', 'inqilabçı'.pluralize(:az)
    assert_equal 'inqilabçı', 'inqilabçılar'.singularize(:az)

    assert_equal 'kommunistlər', 'kommunist'.pluralize(:az)
    assert_equal 'kommunist', 'kommunistlər'.singularize(:az)

    assert_equal 'kişilər', 'kişi'.pluralize(:az)
    assert_equal 'kişi', 'kişilər'.singularize(:az)

    assert_equal 'qadınlar', 'qadın'.pluralize(:az)
    assert_equal 'qadın', 'qadınlar'.singularize(:az)
  end

  def test_irregulars
    assert_equal 'biz', 'mən'.pluralize(:az)
    assert_equal 'mən', 'biz'.singularize(:az)

    assert_equal 'siz', 'sən'.pluralize(:az)
    assert_equal 'sən', 'siz'.singularize(:az)

    assert_equal 'o', 'onlar'.singularize(:az)
    assert_equal 'onlar', 'o'.pluralize(:az)
  end

  def test_uncountables
    assert_equal 'əhali', 'əhali'.pluralize(:az)
    assert_equal 'əhali', 'əhali'.singularize(:az)

    assert_equal 'camaat', 'camaat'.pluralize(:az)
    assert_equal 'camaat', 'camaat'.singularize(:az)
  end
end
