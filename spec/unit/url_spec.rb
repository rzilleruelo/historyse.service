require 'spec_helper'

describe "Url", ActiveSupport::TestCase do
  
  context 'creation' do

    it 'should be successfull' do
      url = Url.create(FactoryGirl.attributes_for(:url))
      url.valid?.should == true
    end

    it 'should fail, due passing unexpected parameters' do
      lambda do
        Url.create(FactoryGirl.attributes_for(:url, :id => 0, :created_at => 0))
      end.should raise_error(
        ActiveModel::MassAssignmentSecurity::Error,
        "Can't mass-assign protected attributes: id, created_at"
      )
    end

    it 'should fail, due missing parameters' do
      url = Url.create({})
      url.valid?.should == false
      url.errors.messages.should == {
        :user_uuid => ["can't be blank"],
        :client_created_at => ["can't be blank"],
        :request_type => ["can't be blank"],
        :tab_id => ["can't be blank"],
        :url=>["can't be blank"]
      }
    end
  end

end
