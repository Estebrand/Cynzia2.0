Rails.application.routes.draw do

  resources :groups
# Series

 

# USERS / ADMIN
  get 'all_users'=> 'admin#all_users'

  get 'edit_user' => 'admin#edit_user'

  post 'edit_user' => 'admin#edit_user'

  get 'show_user'=>'admin#show_user'

  get 'delete_user'=> 'admin#delete_user'

  devise_scope :user do

  get 'login' => 'devise/sessions#create'

  post 'login' => 'devise/sessions#create'

  end

 # CART
  post 'add_to_cart'=> 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  get 'edit_item' => 'cart#edit_line_item'

  post 'order_complete' => 'cart#order_complete'

  get 'edit_line_item' => 'cart#edit_line_item'

  post 'edit_line_item' => 'cart#edit_line_item'

  post 'delete_line_item' => 'cart#delete_line_item'
  
  get 'delete_line_item' => 'cart#delete_line_item'

# MAIN NAVIGATIONS 
  root 'portfolio#index'

  get 'store'=> 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'about' => 'portfolio#about'

  # get 'login' => 'users#edit'

# Portfolio

  get 'index' => 'portfolio#index'

  get 'previous_work' => 'portfolio#previous_work'

  get 'fine_art'=> 'portfolio#fineart'

  get 'pets'=> 'portfolio#pet'

  get 'people'=> 'portfolio#people'

  get 'fineart' => 'portfolio#portfolio'

# Series / Groups

  get 'groups_all' => 'groups#all_groups'

  get 'groups_fineart' => 'groups#fineart_groups'

   get 'groups_index' => 'groups#index'

  devise_for :users
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
