# encoding: utf-8

require 'test_helper'
require 'inflections/nb'

class TestNorwegianBokmalInflections < MiniTest::Unit::TestCase
  def test_svake_substantiv_er
    assert_equal 'hunder', 'hund'.pluralize
    assert_equal 'hund', 'hunder'.singularize

    assert_equal 'dager', 'dag'.pluralize
    assert_equal 'dag', 'dager'.singularize

    assert_equal 'tester', 'test'.pluralize
    assert_equal 'test', 'tester'.singularize
  end

  def test_svake_substantiv_r
    assert_equal 'lærere', 'lærer'.pluralize
    assert_equal 'lærer', 'lærere'.singularize

    assert_equal 'kalendere', 'kalender'.pluralize
    assert_equal 'kalender', 'kalendere'.singularize
  end

  def test_svake_substantiv_e
    assert_equal 'bakker', 'bakke'.pluralize
    # TODO: Fix this. How do we keep this form apart from "hunder"?
    # assert_equal 'bakke', 'bakker'.singularize

    assert_equal 'epler', 'eple'.pluralize
    # assert_equal 'eple', 'epler'.singularize
  end

  def test_sterke_verb
    assert_equal 'konti', 'konto'.pluralize
    assert_equal 'konto', 'konti'.singularize
  end
end
