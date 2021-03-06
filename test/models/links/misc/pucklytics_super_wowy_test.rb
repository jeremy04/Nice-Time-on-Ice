require 'test_helper'

class Links::Misc::PucklyticsSuperWowyTest < ActiveSupport::TestCase

  test "#site_name" do
    assert_equal "Pucklytics", Links::Misc::PucklyticsSuperWowy.new.site_name
  end

  test "#description" do
    assert_equal "Super WOWY", Links::Misc::PucklyticsSuperWowy.new.description
  end

  test "#url" do
    season = seasons(:fourteen)
    team = teams(:caps)
    game_type = "regular"

    url = "http://puckalytics.com/superwowy.html"

    link = Links::Misc::PucklyticsSuperWowy.new(team: team, season: season, game_type: game_type)
    assert_equal url, link.url
  end

  test "#group" do
    assert_equal 0, Links::Misc::PucklyticsSuperWowy.new.group
  end

  test "#position" do
    assert_equal 6, Links::Misc::PucklyticsSuperWowy.new.position
  end

end
