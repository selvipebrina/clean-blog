Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#main'
  resources :pages
  # resources :blog_posts
  resources :users

  get '/blog_posts', to: 'blog_posts#index', as: 'blog_posts'
  get '/blog_posts/new', to: 'blog_posts#new', as: 'new_blog_post'
  post '/blog_posts/', to: 'blog_posts#create'
  get '/blog_posts/:id/edit', to: 'blog_posts#edit', as: 'edit_blog_post'
  get '/blog_posts/:id', to: 'blog_posts#show', as: 'blog_post'
  patch '/blog_posts', to: 'blog_posts#update'
  put '/blog_posts', to: 'blog_posts#update'
  post '/blog_posts/:id', to: 'blog_posts#destroy'
end
