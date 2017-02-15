require 'test_helper'

class AdsControllerTest < ActionDispatch::IntegrationTest
  expanded_text_ad = [
    {
      :xsi_type => 'ExpandedTextAd',
      :ad_group_id => Adgroup.all.last,
      :headline_part1 => 'Cruise to Mars #%d' % (Time.new.to_f * 1000).to_i,
      :headline_part2 => 'Best Space Cruise Line',
      :description => 'Buy your tickets now!',
      :final_urls => ['http://www.example.com/%d' ],
      :path1 => 'all-inclusive',
      :path2 => 'deals'
    },
    {
      :xsi_type => 'ExpandedTextAd',
      :ad_group_id => Adgroup.all.last,
      :headline_part1 => 'Cruise to Mars #%d' % (Time.new.to_f * 1000).to_i,
      :headline_part2 => 'Best in the galaxy',
      :description => 'Buy your tickets now!',
      :final_urls => ['http://www.example.com/%d' ],
      :path1 => 'all-inclusive',
      :path2 => 'deals'
    }
  ]

  # setup do
  #   @ad = ads(:one)
  # end

  test "should get index" do
    get ads_url, as: :json
    assert_response :success
  end

  test "should create ad" do
    assert_difference 'Ad.count', 2 do
      expanded_text_ad.each do |x|
        post ads_url, params: { ad: x}, as: :json
      end
    end

    assert_response 201
  end

  test "should show ad" do
    Ad.all.each do |x|
      get ad_url(x), as: :json
      assert_response :success
    end
  end

end
