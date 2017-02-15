require 'test_helper'

class AdgroupsControllerTest < ActionDispatch::IntegrationTest
  Campaign.destroy_all
  Adgroup.destroy_all

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

  campaigns.each do |x|
    Campaign.create(x)
  end

  ad_groups = [
    {
      :name => "Earth to Mars Cruises #%d" % (Time.new.to_f * 1000).to_i,
      :status => 'ENABLED',
      :campaign_id => Campaign.all.last.id,
      :bid_amount => '8'
    },
    {
      :name => 'Earth to Pluto Cruises #%d' % (Time.new.to_f * 1000).to_i,
      :status => 'ENABLED',
      :campaign_id => Campaign.all.last.id,
      :bid_amount => '4'
    }
  ]

  # setup do
  #   @adgroup = adgroups(:one)
  # end

  test "should get index" do
    get adgroups_url, as: :json
    assert_response :success
  end

  test "should create adgroup" do
    assert_difference 'Adgroup.count', 2 do
      ad_groups.each do |x|
        post adgroups_url, params: { adgroup: x}, as: :json
        # binding.pry
      end
    end

    assert_response 201
  end

  test "should show adgroup" do
    Adgroup.all.each do |x|
      get adgroup_url(x), as: :json
      assert_response :success
    end
  end
end
