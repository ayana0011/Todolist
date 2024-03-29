class UsersController < ApplicationController
  before_action :authenticate_user, {only: [:index,:show,:update,:edit]}
  before_action :forbid_login_user,{only: [:new,:create,:login_form,:login]}
  before_action :ensure_correct_user, {only: [:edit,:update]
  }
    def index
      @users = User.all
    end
    
    def show
      @user = User.find_by(id: params[:id])
      @post = Post.where(user_id: @current_user.id).order(created_at: :desc)
      @like = Like.new(user_id: @current_user.id, post_id: params[:post_id])
     @like.save

     
    
    end
    
    def new
      @user = User.new
    end

    def create
    @user = User.new(name: params[:name], email: params[:email],password: params[:password])
    if @user.save
      session[:user_id]= @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/")
    else render ("users/new")
    end  
    end

    def edit
      @user = User.find_by(id: params[:id])
    end

    def update
      @user = User.find_by(id: params[:id])
      @user.name = params[:name]
      @user.email = params[:email]
      @user.password = params[:password]
      
     if @user.save
       flash[:notice] = "ユーザー情報を編集しました"
       redirect_to("/users/#{@user.id}")
     else
       render("users/edit")
     end
      
    end

    def login
      # 入力内容と一致するユーザーを取得し、変数@userに代入してください
      @user = User.find_by(email: params[:email], password: params[:password])
      # @userが存在するかどうかを判定するif文を作成してください
      if @user
        session[:user_id]=@user.id
        flash[:notice] = "ログインしました"
        redirect_to("/posts/index")
    else
      @error_message ="メールアドレスまたはパスワードが間違っています"
      
      # @emailと@passwordを定義してください
      @email = params[:email]
      @password = params[:password]
      render("users/login_form")
    end
    end

    def logout
      session[:user_id] = nil
      flash[:notice] = "ログアウトしました"
      redirect_to("/login")
    end

    def ensure_correct_user
      if @current_user.id != params[:id].to_i
        flash[:notice]="権限がありません"
        redirect_to("/posts/index")
      end
    end
  end
  