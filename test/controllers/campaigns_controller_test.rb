require 'test_helper'

class CampaignsControllerTest < ActionDispatch::IntegrationTest
  Campaign.destroy_all
  campaigns = [
    {
      :name => "Interplanetary Cruise #%d" % (Time.new.to_f * 1000).to_i,
      :status => 'PAUSED',
      :budget => 44,
      :advertising_channel_type => 'SEARCH'
    },
    {
      :name => "Interplanetary Cruise banner #%d" % (Time.new.to_f * 1000).to_i,
      :status => 'PAUSED',
      :budget => 23,
      :advertising_channel_type => 'DISPLAY'
    }
  ]

      # campaigns.each do |x|
      #   post campaigns_url, params: { campaign: x}, as: :json
      # end
 # setup do
  #   campaigns.each do |x|
  #     Campaign.create(x)
  #   end
  # end

  test "should get index" do
    get campaigns_url, as: :json
    assert_response :success
  end

  test "should create campaign" do
    assert_difference 'Campaign.count', 2 do
    # binding.pry
      campaigns.each do |x|
        post campaigns_url, params: { campaign: x}, as: :json
      end
    end

    assert_response 201
  end

  test "should show campaign" do
    Campaign.all.each do |x|
      get campaign_url(x), as: :json
      assert_response :success
    end
  end

end


