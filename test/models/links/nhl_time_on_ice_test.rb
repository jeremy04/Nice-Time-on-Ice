require 'test_helper'

class Links::NhlTimeOnIceTest < ActiveSupport::TestCase

  test "#site_name" do
    assert_equal "NHL.com", Links::NhlTimeOnIce.new.site_name
  end

  test "#description" do
    assert_equal "Time on Ice", Links::NhlTimeOnIce.new.description
  end

  test "#url" do
    season = seasons(:fourteen)
    team = teams(:caps)
    game_type = "regular"

    url = "http://www.nhl.com/ice/playerstats.htm?gameType=2&position=S&season=20142015&sort=timeOnIce&status=A&team=WSH&viewName=timeOnIce"

    link = Links::NhlTimeOnIce.new(team: team, season: season, game_type: game_type)
    assert_equal url, link.url
  end

  test "#group" do
    assert_equal 0, Links::NhlTimeOnIce.new.group
  end

  test "#position" do
    assert_equal 7, Links::NhlTimeOnIce.new.position
  end

end