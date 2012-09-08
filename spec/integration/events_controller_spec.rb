require 'spec_helper'

describe 'EventsController' do

  before do
    @user_id = '00000000000000000000000000000000'
  end

  context 'creation' do

    it 'should be sucessfull' do
      post("v1/users/#{@user_id}/history/events", FactoryGirl.attributes_for(:event_click))
      assert_response 201
    end

    it 'should fail, due missing parameters' do
      post("v1/users/#{@user_id}/history/events")
      assert_response 400
      expected_json = {
        'tab_id' => ["can't be blank"],
        'source' => ["is not included in the list"]
      }
      JSON.parse(response.body).should == expected_json
    end

  end

end
