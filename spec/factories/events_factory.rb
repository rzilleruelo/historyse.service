FactoryGirl.define do

  factory :event_click, :class => Event do |event|
    event.user_uuid '00000000000000000000000000000000'
    event.tab_id '0'
    event.source 'click'
  end

  factory :event_scroll, :class => Event do |event|
    event.user_uuid '00000000000000000000000000000000'
    event.tab_id '0'
    event.source 'scroll'
  end

  factory :event_focus, :class => Event do |event|
    event.user_uuid '00000000000000000000000000000000'
    event.tab_id '0'
    event.source 'focus'
  end

  factory :event_blur, :class => Event do |event|
    event.user_uuid '00000000000000000000000000000000'
    event.tab_id '0'
    event.source 'blur'
  end

end
