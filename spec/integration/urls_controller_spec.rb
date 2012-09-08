require 'spec_helper'

describe 'UrlsController' do

  before do
    @user_id = '00000000000000000000000000000000'
  end

  context 'creation' do

    it 'should be sucessfull' do
      post("v1/users/#{@user_id}/history/urls", FactoryGirl.attributes_for(:url))
      assert_response 201
    end

    it 'should fail, due missing parameters' do
      post("v1/users/#{@user_id}/history/urls")
      assert_response 400
      expected_json = {
        'client_created_at' => ["can't be blank"],
        'tab_id' => ["can't be blank"],
        'request_type' => ["can't be blank"],
        'url' => ["can't be blank"]
      }
      JSON.parse(response.body).should == expected_json
    end

  end

end
