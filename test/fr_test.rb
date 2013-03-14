# encoding: utf-8

require 'test_helper'
require 'inflections/fr'

class TestFrenchInflections < MiniTest::Unit::TestCase
  def test_regular_plurals
    assert_equal 'amis', 'ami'.pluralize(:fr)
    assert_equal 'ami', 'amis'.singularize(:fr)

    assert_equal 'fidèles', 'fidèle'.pluralize(:fr)
    assert_equal 'fidèle', 'fidèles'.singularize(:fr)

    assert_equal 'rapports', 'rapport'.pluralize(:fr)
    assert_equal 'rapport', 'rapports'.singularize(:fr)
  end

  def test_appending_x
    # -au
    assert_equal 'tuyaux', 'tuyau'.pluralize(:fr)
    assert_equal 'tuyau', 'tuyaux'.singularize(:fr)

    # -ou
    assert_equal 'genoux', 'genou'.pluralize(:fr)
    assert_equal 'genou', 'genoux'.singularize(:fr)

    # -eu
    assert_equal 'aveux', 'aveu'.pluralize(:fr)
    assert_equal 'aveu', 'aveux'.singularize(:fr)

    # -eau
    assert_equal 'nouveaux', 'nouveau'.pluralize(:fr)
    assert_equal 'nouveau', 'nouveaux'.singularize(:fr)
  end

  def test_exceptions_to_appending_x
    assert_equal 'bleus', 'bleu'.pluralize(:fr)
    assert_equal 'bleu', 'bleus'.singularize(:fr)

    assert_equal 'landaus', 'landau'.pluralize(:fr)
    assert_equal 'landau', 'landaus'.singularize(:fr)

    assert_equal 'genoux', 'genou'.pluralize(:fr)
    assert_equal 'genou', 'genoux'.singularize(:fr)
  end

  def test_ending_in_al
    assert_equal 'journaux', 'journal'.pluralize(:fr)
    assert_equal 'journal', 'journaux'.singularize(:fr)
  end

  def test_ending_in_ail
    assert_equal 'détails', 'détail'.pluralize(:fr)
    assert_equal 'détail', 'détails'.singularize(:fr)
  end

  def test_exceptions_to_ending_in_ail
    assert_equal 'travaux', 'travail'.pluralize(:fr)
    assert_equal 'travail', 'travaux'.singularize(:fr)
    
    assert_equal 'baux', 'bail'.pluralize(:fr)
    assert_equal 'bail', 'baux'.singularize(:fr)

    assert_equal 'émaux', 'émail'.pluralize(:fr)
    assert_equal 'émail', 'émaux'.singularize(:fr)
  end
end
