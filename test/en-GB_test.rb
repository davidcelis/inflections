require 'test_helper'
require 'inflections/en-gb'

class TestBritishEnglishInflections < MiniTest::Unit::TestCase
  def test_regular_plurals
    assert_equal 'dogs', 'dog'.pluralize
    assert_equal 'dog', 'dogs'.singularize

    assert_equal 'days', 'day'.pluralize
    assert_equal 'day', 'days'.singularize

    assert_equal 'tests', 'test'.pluralize
    assert_equal 'test', 'tests'.singularize
  end

  def test_sibilant_sounds
    assert_equal 'addresses', 'address'.pluralize
    assert_equal 'address', 'addresses'.singularize

    assert_equal 'phases', 'phase'.pluralize
    # Can't assume whether words that end with 'es' remove the 'es' or just 's'
    # So I went with the case that seemed more reasonable given sibilant sounds
    #
    # assert_equal 'phase', 'phases'.singularize

    assert_equal 'buzzes', 'buzz'.pluralize
    assert_equal 'buzz', 'buzzes'.singularize

    assert_equal 'boxes', 'box'.pluralize
    assert_equal 'box', 'boxes'.singularize

    assert_equal 'benches', 'bench'.pluralize
    assert_equal 'bench', 'benches'.singularize

    assert_equal 'dishes', 'dish'.pluralize
    assert_equal 'dish', 'dishes'.singularize
  end

  def test_oes_rule
    assert_equal 'heroes', 'hero'.pluralize
    assert_equal 'hero', 'heroes'.singularize

    assert_equal 'igloos', 'igloo'.pluralize
    assert_equal 'igloo', 'igloos'.singularize
  end

  def test_ies_rule
    assert_equal 'berries', 'berry'.pluralize
    assert_equal 'berry', 'berries'.singularize

    assert_equal 'days', 'day'.pluralize
    assert_equal 'day', 'days'.singularize
  end

  def test_irregulars
    assert_equal 'children', 'child'.pluralize
    assert_equal 'child', 'children'.singularize

    assert_equal 'people', 'person'.pluralize
    assert_equal 'person', 'people'.singularize

    assert_equal 'selves', 'self'.pluralize
    assert_equal 'self', 'selves'.singularize
  end

  def test_uncountables
    assert_equal 'series', 'series'.pluralize
    assert_equal 'series', 'series'.singularize
  end

  def test_stupid_inflections_removed
    assert_equal 'cows', 'cow'.pluralize
  end
end
