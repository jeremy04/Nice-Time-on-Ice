require 'test_helper'

class Links::NhlSummaryTest < ActiveSupport::TestCase

  test "#site_name" do
    assert_equal "NHL.com", Links::NhlSummary.new.site_name
  end

  test "#description" do
    assert_equal "Summary", Links::NhlSummary.new.description
  end

  test "#url" do
    season = seasons(:fourteen)
    team = teams(:caps)
    game_type = "regular"

    url = "http://www.nhl.com/ice/playerstats.htm?season=20142015&gameType=2&team=WSH&position=S&country=&status=&viewName=summary"

    link = Links::NhlSummary.new(team: team, season: season, game_type: game_type)
    assert_equal url, link.url
  end

  test "#group" do
    assert_equal 0, Links::NhlSummary.new.group
  end

  test "#position" do
    assert_equal 1, Links::NhlSummary.new.position
  end

end
