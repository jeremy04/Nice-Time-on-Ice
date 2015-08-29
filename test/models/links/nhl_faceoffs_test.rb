require 'test_helper'

class Links::NhlFaceoffsTest < ActiveSupport::TestCase

  test "#site_name" do
    assert_equal "NHL.com", Links::NhlFaceoffs.new.site_name
  end

  test "#description" do
    assert_equal "Faceoffs", Links::NhlFaceoffs.new.description
  end

  test "#url" do
    season = seasons(:fourteen)
    team = teams(:caps)
    game_type = "regular"

    url = "http://www.nhl.com/ice/playerstats.htm?gameType=2&position=S&season=20142015&sort=totalFaceOffs&status=A&team=WSH&viewName=faceOffPercentageAll"

    link = Links::NhlFaceoffs.new(team: team, season: season, game_type: game_type)
    assert_equal url, link.url
  end

  test "#group" do
    assert_equal 0, Links::NhlFaceoffs.new.group
  end

  test "#position" do
    assert_equal 6, Links::NhlFaceoffs.new.position
  end

end
