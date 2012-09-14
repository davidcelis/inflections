require 'test_helper'
require 'inflections/en-GB'

class TestEnglishInflections < MiniTest::Unit::TestCase
  def test_regular_plurals
    assert_equal 'dogs', 'dog'.pluralize(:'en-GB')
    assert_equal 'dog', 'dogs'.singularize(:'en-GB')

    assert_equal 'days', 'day'.pluralize(:'en-GB')
    assert_equal 'day', 'days'.singularize(:'en-GB')

    assert_equal 'tests', 'test'.pluralize(:'en-GB')
    assert_equal 'test', 'tests'.singularize(:'en-GB')
  end

  def test_sibilant_sounds
    assert_equal 'addresses', 'address'.pluralize(:'en-GB')
    assert_equal 'address', 'addresses'.singularize(:'en-GB')

    assert_equal 'phases', 'phase'.pluralize(:'en-GB')

    assert_equal 'buzzes', 'buzz'.pluralize(:'en-GB')
    assert_equal 'buzz', 'buzzes'.singularize(:'en-GB')

    assert_equal 'boxes', 'box'.pluralize(:'en-GB')
    assert_equal 'box', 'boxes'.singularize(:'en-GB')

    assert_equal 'benches', 'bench'.pluralize(:'en-GB')
    assert_equal 'bench', 'benches'.singularize(:'en-GB')

    assert_equal 'dishes', 'dish'.pluralize(:'en-GB')
    assert_equal 'dish', 'dishes'.singularize(:'en-GB')
  end

  def test_oes_rule
    assert_equal 'heroes', 'hero'.pluralize(:'en-GB')
    assert_equal 'hero', 'heroes'.singularize(:'en-GB')

    assert_equal 'igloos', 'igloo'.pluralize(:'en-GB')
    assert_equal 'igloo', 'igloos'.singularize(:'en-GB')
  end

  def test_ies_rule
    assert_equal 'berries', 'berry'.pluralize(:'en-GB')
    assert_equal 'berry', 'berries'.singularize(:'en-GB')

    assert_equal 'days', 'day'.pluralize(:'en-GB')
    assert_equal 'day', 'days'.singularize(:'en-GB')
  end

  def test_irregulars
    assert_equal 'children', 'child'.pluralize(:'en-GB')
    assert_equal 'child', 'children'.singularize(:'en-GB')

    assert_equal 'people', 'person'.pluralize(:'en-GB')
    assert_equal 'person', 'people'.singularize(:'en-GB')

    assert_equal 'selves', 'self'.pluralize(:'en-GB')
    assert_equal 'self', 'selves'.singularize(:'en-GB')
  end

  def test_uncountables
    assert_equal 'series', 'series'.pluralize(:'en-GB')
    assert_equal 'series', 'series'.singularize(:'en-GB')
  end

  def test_stupid_inflections_removed
    assert_equal 'cows', 'cow'.pluralize(:'en-GB')
  end
end
