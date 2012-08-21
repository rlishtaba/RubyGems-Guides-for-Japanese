# coding: utf-8
require "sinatra"

error 400..510 do
  erb "エラーが発生しました。"
end

get "/" do
  erb :index
end

get "/:page_name/" do
  # ページの存在チェック（後で書く）
  # raise error if page.nil?
  
  erb :"#{params[:page_name]}"
end

