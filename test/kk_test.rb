# encoding: utf-8

require 'test_helper'
require 'inflections/kk'

class TestKazakhInflections < MiniTest::Unit::TestCase
  def test_voiceless
    assert_equal 'сабақтар', 'сабақ'.pluralize
    assert_equal 'сабақ', 'сабақтар'.singularize

    assert_equal 'мектептер', 'мектеп'.pluralize
    assert_equal 'мектеп', 'мектептер'.singularize
  end

  def test_voiced
    assert_equal 'қағаздар', 'қағаз'.pluralize
    assert_equal 'қағаз', 'қағаздар'.singularize

    assert_equal 'кілемдер', 'кілем'.pluralize
    assert_equal 'кілем', 'кілемдер'.singularize

    assert_equal 'гүлдер', 'гүл'.pluralize
    assert_equal 'гүл', 'гүлдер'.singularize
  end

  def test_sonor
    assert_equal 'балалар', 'бала'.pluralize
    assert_equal 'бала', 'балалар'.singularize

    assert_equal 'дәрігерлер', 'дәрігер'.pluralize
    assert_equal 'дәрігер', 'дәрігерлер'.singularize

    assert_equal 'үйлер', 'үй'.pluralize
    assert_equal 'үй', 'үйлер'.singularize

    assert_equal 'ескертулер', 'ескерту'.pluralize
    assert_equal 'ескерту', 'ескертулер'.singularize

    assert_equal 'аурулар', 'ауру'.pluralize
    assert_equal 'ауру', 'аурулар'.singularize
  end

  def test_looks_like_plural
    assert_equal 'дәптерлер', 'дәптер'.pluralize
    assert_equal 'дәптер', 'дәптерлер'.singularize
  end
end
