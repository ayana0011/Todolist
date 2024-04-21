class LikesController < ApplicationController
    # before_actionに「:authenticate_user」を追加してください
    before_action :authenticate_user
    
    # createアクションを追加してください
    def create
     # 変数@likeを定義してください
   
     @like = Like.new(user_id: @current_user.id, post_id: params[:post_id])
     @like.save
     redirect_to("/posts/index")
    
    end
     def fcreate
     @like = Like.new(user_id: @current_user.id, food_id: params[:food_id])
     @like.save
     redirect_to("/posts/index")
     end
    def screate
     @like = Like.new(user_id: @current_user.id, sanitary_id: params[:sanitary_id])
     @like.save 
     redirect_to("/posts/index")
    
     end
   def hcreate
     @like = Like.new(user_id: @current_user.id, household_id: params[:household_id])
    
     # 変数@likeを保存してください
     @like.save
     redirect_to("/posts/index")
     
     # 投稿詳細ページにリダイレクトしてください
   
   end

    def destroy
        @like = Like.find_by(user_id: @current_user.id, post_id: params[:post_id])
        @like.destroy
        redirect_to("/posts/index")
        end

       def fdestroy
        @like = Like.find_by(user_id: @current_user.id, food_id: params[:food_id])
        @like.destroy
        redirect_to("/posts/index")
        end
       
        def sdestroy
        @like = Like.find_by(user_id: @current_user.id, sanitary_id: params[:sanitary_id])
        @like.destroy
        redirect_to("/posts/index")
        end
       def hdestroy
        @like = Like.find_by(user_id: @current_user.id, household_id: params[:household_id])
        @like.destroy 
        redirect_to("/posts/index")
      end
    
  end
  