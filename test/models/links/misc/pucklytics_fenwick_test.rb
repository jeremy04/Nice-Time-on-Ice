require 'test_helper'

class Links::Misc::PucklyticsFenwickTest < ActiveSupport::TestCase

  test "#site_name" do
    assert_equal "Pucklytics", Links::Misc::PucklyticsFenwick.new.site_name
  end

  test "#description" do
    assert_equal "Fenwick", Links::Misc::PucklyticsFenwick.new.description
  end

  test "#url" do
    season = seasons(:fourteen)
    team = teams(:caps)
    game_type = "regular"

    url = "http://puckalytics.com/skaterfenwickstats.html"

    link = Links::Misc::PucklyticsFenwick.new(team: team, season: season, game_type: game_type)
    assert_equal url, link.url
  end

  test "#group" do
    assert_equal 0, Links::Misc::PucklyticsFenwick.new.group
  end

  test "#position" do
    assert_equal 1, Links::Misc::PucklyticsFenwick.new.position
  end

end
