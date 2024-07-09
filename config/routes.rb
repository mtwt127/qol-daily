Rails.application.routes.draw do
  get '/', to: "posts#index"#rootでgetリクエストが来ると、postsコントローラーのindexが実行

  get '/daily', to: "posts#index"

  get '/daily/add', to: "posts#add"
  post '/daily/add', to: "posts#addDaily"

  get '/daily/:id', to: "posts#edit"
  patch '/daily/:id', to: "posts#editDaily"
  delete '/daily/:id', to: "posts#deleteDaily"
end
