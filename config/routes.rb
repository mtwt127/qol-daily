Rails.application.routes.draw do
  get '/', to: "posts#index"#rootでgetリクエストが来ると、postsコントローラーのindexが実行

  get '/daily', to: "posts#index"

  get '/daily/add', to: "posts#add"
  post '/daily/add', to: "posts#addDaily"

  delete '/daily/:id', to: "posts#deleteDaily"
end
