FactoryGirl.define do
  factory :url, :class => Url do |url|
    url.user_uuid '00000000000000000000000000000000'
    url.tab_id '0'
    url.client_created_at '0'
    url.request_type 'main_frame'
    url.url 'https://historyse.com/faq.html'
    url.referer 'https://historyse.com'
  end
end
