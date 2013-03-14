# encoding: utf-8

require 'test_helper'
require 'inflections/fr'

class TestFrenchInflections < MiniTest::Unit::TestCase
  def test_regular_plurals
    assert_equal 'amis', 'ami'.pluralize
    assert_equal 'ami', 'amis'.singularize

    assert_equal 'fidèles', 'fidèle'.pluralize
    assert_equal 'fidèle', 'fidèles'.singularize

    assert_equal 'rapports', 'rapport'.pluralize
    assert_equal 'rapport', 'rapports'.singularize
  end

  def test_appending_x
    # -au
    assert_equal 'tuyaux', 'tuyau'.pluralize
    assert_equal 'tuyau', 'tuyaux'.singularize

    # -ou
    assert_equal 'genoux', 'genou'.pluralize
    assert_equal 'genou', 'genoux'.singularize

    # -eu
    assert_equal 'aveux', 'aveu'.pluralize
    assert_equal 'aveu', 'aveux'.singularize

    # -eau
    assert_equal 'nouveaux', 'nouveau'.pluralize
    assert_equal 'nouveau', 'nouveaux'.singularize
  end

  def test_exceptions_to_appending_x
    assert_equal 'bleus', 'bleu'.pluralize
    assert_equal 'bleu', 'bleus'.singularize

    assert_equal 'landaus', 'landau'.pluralize
    assert_equal 'landau', 'landaus'.singularize

    assert_equal 'genoux', 'genou'.pluralize
    assert_equal 'genou', 'genoux'.singularize
  end

  def test_ending_in_al
    assert_equal 'journaux', 'journal'.pluralize
    assert_equal 'journal', 'journaux'.singularize
  end

  def test_ending_in_ail
    assert_equal 'détails', 'détail'.pluralize
    assert_equal 'détail', 'détails'.singularize
  end

  def test_exceptions_to_ending_in_ail
    assert_equal 'travaux', 'travail'.pluralize
    assert_equal 'travail', 'travaux'.singularize
    
    assert_equal 'baux', 'bail'.pluralize
    assert_equal 'bail', 'baux'.singularize

    assert_equal 'émaux', 'émail'.pluralize
    assert_equal 'émail', 'émaux'.singularize
  end
end
