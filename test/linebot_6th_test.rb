# coding: utf-8
require 'minitest/autorun'
require_relative '../lib/linebot_6th'

class Linebot6thTest < Minitest::Test
  def test_extract_where_and_when_from_met_day1
    area, day = Linebot6th.extract_where_and_when_from('埼玉初日')
    assert_equal Linebot6th::Area::METLIFE, area
    assert_equal Linebot6th::Day::ONE, day
  end

  def test_extract_where_and_when_from_met_day2
    area, day = Linebot6th.extract_where_and_when_from('メラド2日目')
    assert_equal Linebot6th::Area::METLIFE, area
    assert_equal Linebot6th::Day::TWO, day
  end

  def test_extract_where_and_when_from_nagoya_day1
    area, day = Linebot6th.extract_where_and_when_from('名古屋1日目')
    assert_equal Linebot6th::Area::NAGOYA, area
    assert_equal Linebot6th::Day::ONE, day
  end

  def test_extract_where_and_when_from_nagoya_day2
    area, day = Linebot6th.extract_where_and_when_from('ナゴヤ最終日')
    assert_equal Linebot6th::Area::NAGOYA, area
    assert_equal Linebot6th::Day::TWO, day
  end

  def test_make_messages_from
    area = Linebot6th::Area::METLIFE
    day  = Linebot6th::Day::ONE

    result = Linebot6th.make_messages_from(area, day)

    assert_equal "もしかして #{area} #{day} の話してる？", result[0]
    assert_match /前川みく/, result[1]
    assert_match /川島瑞樹/, result[2]
    assert_match /姫川友紀/, result[3]
  end
end
