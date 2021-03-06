require 'test_helper'

class Links::Misc::PonHitsTest < ActiveSupport::TestCase

  test "#site_name" do
    assert_equal "Puck on Net", Links::Misc::PonHits.new.site_name
  end

  test "#description" do
    assert_equal "Hits", Links::Misc::PonHits.new.description
  end

  test "#url" do
    season = seasons(:fourteen)
    team = teams(:caps)
    game_type = "regular"

    url = "http://www.fenwick-stats.com/hits.php?s=2014-10-01&e=2015-07-1&f=0&ld=1&l=82"

    link = Links::Misc::PonHits.new(team: team, season: season, game_type: game_type)
    assert_equal url, link.url
  end

  test "#group" do
    assert_equal 4, Links::Misc::PonHits.new.group
  end

  test "#position" do
    assert_equal 3, Links::Misc::PonHits.new.position
  end

end
