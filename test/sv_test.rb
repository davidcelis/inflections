# encoding: utf-8

require 'test_helper'
require 'inflections/sv'

class TestSwedishInflections < Minitest::Test

  def test_plural
    assert_equal 'produkter', 'produkt'.pluralize(:sv)
    assert_equal 'muskler', 'muskel'.pluralize(:sv)
    assert_equal 'flickor', 'flicka'.pluralize(:sv)
    assert_equal 'pojkar', 'pojke'.pluralize(:sv)
    assert_equal 'fåglar', 'fågel'.pluralize(:sv)
    assert_equal 'bilar', 'bil'.pluralize(:sv)
    assert_equal 'titlar', 'titel'.pluralize(:sv)
    assert_equal 'fiender', 'fiende'.pluralize(:sv)
    assert_equal 'muskler', 'muskel'.pluralize(:sv)
    assert_equal 'frön', 'frö'.pluralize(:sv)
    assert_equal 'böcker', 'bok'.pluralize(:sv)
    assert_equal 'fakta', 'faktum'.pluralize(:sv)
    assert_equal 'skor', 'sko'.pluralize(:sv)
    assert_equal 'händer', 'hand'.pluralize(:sv)
    assert_equal 'rosor', 'ros'.pluralize(:sv)
    assert_equal 'män', 'man'.pluralize(:sv)
    assert_equal 'möss', 'mus'.pluralize(:sv)
    assert_equal 'huvuden', 'huvud'.pluralize(:sv)
    assert_equal 'vittnen', 'vittne'.pluralize(:sv)
    assert_equal 'kategorier', 'kategori'.pluralize(:sv)
    assert_equal 'äpplen', 'äpple'.pluralize(:sv)
    assert_equal 'suddgummin', 'suddgummi'.pluralize(:sv)

    # Time units
    assert_equal 'minuter', 'minut'.pluralize(:sv)
    assert_equal 'timmar', 'timme'.pluralize(:sv)
    assert_equal 'dagar', 'dag'.pluralize(:sv)
    assert_equal 'veckor', 'vecka'.pluralize(:sv)
    assert_equal 'månader', 'månad'.pluralize(:sv)
  end

  def test_singular
    assert_equal 'flicka', 'flickor'.singularize(:sv)
    assert_equal 'pojke', 'pojkar'.singularize(:sv)
    assert_equal 'fågel', 'fåglar'.singularize(:sv)
    assert_equal 'bil', 'bilar'.singularize(:sv)
    assert_equal 'dag', 'dagar'.singularize(:sv)
    assert_equal 'produkt', 'produkter'.singularize(:sv)
    assert_equal 'muskel', 'muskler'.singularize(:sv)
    assert_equal 'fiende', 'fiender'.singularize(:sv)
    assert_equal 'muskel', 'muskler'.singularize(:sv)
    assert_equal 'titel', 'titlar'.singularize(:sv)
    assert_equal 'vittne', 'vittnen'.singularize(:sv)
    assert_equal 'frö', 'frön'.singularize(:sv)
    assert_equal 'bok', 'böcker'.singularize(:sv)
    assert_equal 'faktum', 'fakta'.singularize(:sv)
    assert_equal 'man', 'män'.singularize(:sv)
    assert_equal 'mus', 'möss'.singularize(:sv)
    assert_equal 'huvud', 'huvuden'.singularize(:sv)
    assert_equal 'sko', 'skor'.singularize(:sv)
    assert_equal 'hand', 'händer'.singularize(:sv)
    assert_equal 'ros', 'rosor'.singularize(:sv)
    assert_equal 'kategori', 'kategorier'.singularize(:sv)
    assert_equal 'äpple', 'äpplen'.singularize(:sv)
    assert_equal 'suddgummi', 'suddgummin'.singularize(:sv)

    # Time units
    assert_equal 'minut', 'minuter'.singularize(:sv)
    assert_equal 'timme', 'timmar'.singularize(:sv)
    assert_equal 'dag', 'dagar'.singularize(:sv)
    assert_equal 'vecka', 'veckor'.singularize(:sv)
    assert_equal 'månad', 'månader'.singularize(:sv)
  end

end
