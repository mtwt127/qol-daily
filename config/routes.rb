Rails.application.routes.draw do
  get '/', to: "posts#index"#rootでgetリクエストが来ると、postsコントローラーのindexが実行
end
