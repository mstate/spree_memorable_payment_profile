Spree::Core::Engine.routes.draw do
  resource :account, :controller => 'users' do
  	delete 'forget_credit_card'
  end
end
