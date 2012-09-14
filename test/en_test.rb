require 'test_helper'
require 'inflections/en'

class TestEnglishInflections < MiniTest::Unit::TestCase
  def test_regular_plurals
    assert_equal 'dogs', 'dog'.pluralize(:en)
    assert_equal 'dog', 'dogs'.singularize(:en)

    assert_equal 'days', 'day'.pluralize(:en)
    assert_equal 'day', 'days'.singularize(:en)

    assert_equal 'tests', 'test'.pluralize(:en)
    assert_equal 'test', 'tests'.singularize(:en)
  end

  def test_sibilant_sounds
    assert_equal 'addresses', 'address'.pluralize(:en)
    assert_equal 'address', 'addresses'.singularize(:en)

    assert_equal 'phases', 'phase'.pluralize(:en)

    assert_equal 'buzzes', 'buzz'.pluralize(:en)
    assert_equal 'buzz', 'buzzes'.singularize(:en)

    assert_equal 'boxes', 'box'.pluralize(:en)
    assert_equal 'box', 'boxes'.singularize(:en)

    assert_equal 'benches', 'bench'.pluralize(:en)
    assert_equal 'bench', 'benches'.singularize(:en)

    assert_equal 'dishes', 'dish'.pluralize(:en)
    assert_equal 'dish', 'dishes'.singularize(:en)
  end

  def test_oes_rule
    assert_equal 'heroes', 'hero'.pluralize(:en)
    assert_equal 'hero', 'heroes'.singularize(:en)

    assert_equal 'igloos', 'igloo'.pluralize(:en)
    assert_equal 'igloo', 'igloos'.singularize(:en)
  end

  def test_ies_rule
    assert_equal 'berries', 'berry'.pluralize(:en)
    assert_equal 'berry', 'berries'.singularize(:en)

    assert_equal 'days', 'day'.pluralize(:en)
    assert_equal 'day', 'days'.singularize(:en)
  end

  def test_irregulars
    assert_equal 'children', 'child'.pluralize(:en)
    assert_equal 'child', 'children'.singularize(:en)

    assert_equal 'people', 'person'.pluralize(:en)
    assert_equal 'person', 'people'.singularize(:en)

    assert_equal 'selves', 'self'.pluralize(:en)
    assert_equal 'self', 'selves'.singularize(:en)
  end

  def test_uncountables
    assert_equal 'series', 'series'.pluralize(:en)
    assert_equal 'series', 'series'.singularize(:en)
  end

  def test_stupid_inflections_removed
    assert_equal 'cows', 'cow'.pluralize(:en)
  end
end
