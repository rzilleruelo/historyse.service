Service::Application.routes.draw do

  scope 'v1' do
    match 'users/(:user_uuid)/history/events' => 'events#create', :via => :post
    match 'users/(:user_uuid)/history/urls' => 'urls#create', :via => :post
  end

  match '*path' => 'exceptions#not_found'

end
