# encoding: utf-8

require 'test_helper'
require 'inflections/kk'

class TestKazakhInflections < MiniTest::Unit::TestCase
  def test_voiceless
    assert_equal 'сабақтар', 'сабақ'.pluralize(:kk)
    assert_equal 'сабақ', 'сабақтар'.singularize(:kk)

    assert_equal 'мектептер', 'мектеп'.pluralize(:kk)
    assert_equal 'мектеп', 'мектептер'.singularize(:kk)
  end

  def test_voiced
    assert_equal 'қағаздар', 'қағаз'.pluralize(:kk)
    assert_equal 'қағаз', 'қағаздар'.singularize(:kk)

    assert_equal 'кілемдер', 'кілем'.pluralize(:kk)
    assert_equal 'кілем', 'кілемдер'.singularize(:kk)

    assert_equal 'гүлдер', 'гүл'.pluralize(:kk)
    assert_equal 'гүл', 'гүлдер'.singularize(:kk)
  end

  def test_sonor
    assert_equal 'балалар', 'бала'.pluralize(:kk)
    assert_equal 'бала', 'балалар'.singularize(:kk)

    assert_equal 'дәрігерлер', 'дәрігер'.pluralize(:kk)
    assert_equal 'дәрігер', 'дәрігерлер'.singularize(:kk)

    assert_equal 'үйлер', 'үй'.pluralize(:kk)
    assert_equal 'үй', 'үйлер'.singularize(:kk)

    assert_equal 'ескертулер', 'ескерту'.pluralize(:kk)
    assert_equal 'ескерту', 'ескертулер'.singularize(:kk)

    assert_equal 'аурулар', 'ауру'.pluralize(:kk)
    assert_equal 'ауру', 'аурулар'.singularize(:kk)
  end

  def test_looks_like_plural
    assert_equal 'дәптерлер', 'дәптер'.pluralize(:kk)
    assert_equal 'дәптер', 'дәптерлер'.singularize(:kk)
  end
end
