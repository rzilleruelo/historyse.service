FactoryGirl.define do
  factory :event_click, :class => Event do |event|
    event.user_uuid '00000000000000000000000000000000'
    event.tab_id '0'
    event.source 'click'
  end
end