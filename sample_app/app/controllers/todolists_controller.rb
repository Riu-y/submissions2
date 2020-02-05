class TodolistsController < ApplicationController
  def new
  	@list = List.new
 end

 def create
    #ストロングパラメーターを使用
 	list = List.new(list_params)
# 　　DBへ保存する
 	list.save
# 　　　リダイレクトの設定
 	redirect_to'/top'
end

 private

 def list_params
   params.require(:list).permit(:title,:body)
 end

end