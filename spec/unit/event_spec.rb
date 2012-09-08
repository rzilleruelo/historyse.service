require 'spec_helper'

describe "Event", ActiveSupport::TestCase do

  context 'creation' do

    it 'should be successfull' do
      event = Event.create(FactoryGirl.attributes_for(:event_click))
      event.valid?.should == true
    end

    it 'should fail, due passing unexpected parameters' do
      lambda do
        Event.create(FactoryGirl.attributes_for(:event_click, :id => 0, :created_at => 0))
      end.should raise_error(
        ActiveModel::MassAssignmentSecurity::Error,
        "Can't mass-assign protected attributes: id, created_at"
      )
    end

    it 'should fail, due missing parameters' do
      event = Event.create({})
      event.valid?.should == false
      event.errors.messages.should == {
        :user_uuid => ["can't be blank"],
        :tab_id => ["can't be blank"],
        :source => ["is not included in the list"]
      }
    end
    
    it 'should fail, due passing wrong source' do
      event = Event.create(FactoryGirl.attributes_for(:event_click, :source => 'unexpected_source'))
      event.valid?.should == false
      event.errors.messages.should == {
        :source => ["is not included in the list"]
      }
    end

  end

end
