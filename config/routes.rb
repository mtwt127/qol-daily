Rails.application.routes.draw do
  get '/', to: "posts#index"#rootでgetリクエストが来ると、postsコントローラーのindexが実行
  post '/', to: "posts#addDaily"

  get '/daily', to: "posts#index"
  post '/daily', to: "posts#addDaily"

  delete '/daily/:id', to: "posts#deleteDaily"
end
