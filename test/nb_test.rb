# encoding: utf-8

require 'test_helper'
require 'inflections/nb'

class TestNorwegianBokmalInflections < MiniTest::Unit::TestCase
  def test_svake_substantiv_er
    assert_equal 'hunder', 'hund'.pluralize(:nb)
    assert_equal 'hund', 'hunder'.singularize(:nb)

    assert_equal 'dager', 'dag'.pluralize(:nb)
    assert_equal 'dag', 'dager'.singularize(:nb)

    assert_equal 'tester', 'test'.pluralize(:nb)
    assert_equal 'test', 'tester'.singularize(:nb)
  end

  def test_svake_substantiv_r
    assert_equal 'lærere', 'lærer'.pluralize(:nb)
    assert_equal 'lærer', 'lærere'.singularize(:nb)

    assert_equal 'kalendere', 'kalender'.pluralize(:nb)
    assert_equal 'kalender', 'kalendere'.singularize(:nb)
  end

  def test_svake_substantiv_e
    assert_equal 'bakker', 'bakke'.pluralize(:nb)
    # TODO: Fix this. How do we keep this form apart from "hunder"?
    # assert_equal 'bakke', 'bakker'.singularize(:nb)

    assert_equal 'epler', 'eple'.pluralize(:nb)
    # assert_equal 'eple', 'epler'.singularize(:nb)
  end

  def test_sterke_verb
    assert_equal 'konti', 'konto'.pluralize(:nb)
    assert_equal 'konto', 'konti'.singularize(:nb)
  end
end
