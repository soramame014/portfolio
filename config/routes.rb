Rails.application.routes.draw do

root to: "public/homes#top"


# 顧客用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
namespace :admin do
  
  resources :customers, only: [:index, :show, :edit, :update]
end

scope module: 'public' do

  resources :lists, only: [:new, :create, :index, :show, :destroy, :edit, :update]

end

end
