Service::Application.routes.draw do

  scope 'v1' do
    match 'users/(:user_uuid)/history' => 'urls#create', :via => :post
    match 'users/(:user_uuid)/tabs/history' => 'tabs#create', :via => :post
  end

  match '*path' => 'exceptions#not_found'

end
