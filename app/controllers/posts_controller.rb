class PostsController < ApplicationController
  before_action :authenticate_user

  def index
    @post = Post.where(user_id: @current_user.id).order(created_at: :desc)
    @food = Food.all
    @sanitary = Sanitary.all
    @household = Household.all
   
  end
  
  def show
    @post = Post.find_by(id: params[:id])
    @user = @post.user
  end

  
    def new 
      @post = Post.new
    end

  def create
    @post = Post.new(
      food: params[:food],
      rice: params[:rice],
      water: params[:water],
      can: params[:can],
      seasonal: params[:seasonal],
      ramen: params[:ramen],
      snack: params[:snack],
      wettissue: params[:wettissue],
      spray: params[:spray],
      mask: params[:mask],
      box: params[:box],
      medicine: params[:medicine],
      toilet: params[:toilet],
      period: params[:period],
      wrappingfilm: params[:wrappingfilm],
      plasticbags: params[:plasticbags],
      alumi: params[:alumi],
      plasticgloves: params[:plasticgloves],
      toiletpaper: params[:toiletpaper],
      tissue: params[:tissue],
      light: params[:light],
      battery: params[:battery],
      tape: params[:tape],
      waterbag: params[:waterbag],
      user_id: @current_user.id
    )

    
    if @post.save
      flash[:notice] = "自分の備蓄を振り返ろう！"
      @post.content = @post.water/3+(@post.rice/3)+(@post.food)+(@post.can)+(@post.seasonal*2)+(@post.ramen)+(@post.snack*2)+@post.wettissue/10+(@post.spray)+@post.mask+@post.medicine*2+@post.box*2+@post.toilet/5+@post.period/3+@post.wrappingfilm*2+@post.plasticbags*2+@post.alumi*2+@post.plasticgloves*2+@post.toiletpaper+@post.tissue+@post.light*2+@post.battery+@post.tape+@post.waterbag*2
      @post.save
      redirect_to("/posts/#{@post.id}")
    else
      render("posts/new")
    end
    
  end

    def edit
      @post = Post.find_by(id: params[:id])
    end

    def update
      @post = Post.find_by(id: params[:id])
      @post = Post.new(
      food: params[:food],
      rice: params[:rice],
      water: params[:water],
      can: params[:can],
      seasonal: params[:seasonal],
      ramen: params[:ramen],
      snack: params[:snack],
      wettissue: params[:wettissue],
      spray: params[:spray],
      mask: params[:mask],
      box: params[:box],
      medicine: params[:medicine],
      toilet: params[:toilet],
      period: params[:period],
      wrappingfilm: params[:wrappingfilm],
      plasticbags: params[:plasticbags],
      alumi: params[:alumi],
      plasticgloves: params[:plasticgloves],
      toiletpaper: params[:toiletpaper],
      tissue: params[:tissue],
      light: params[:light],
      battery: params[:battery],
      tape: params[:tape],
      waterbag: params[:waterbag],
      user_id: @current_user.id
    )
    if @post.save
      flash[:notice] = "自分の備蓄を振り返ろう！"
      @post.content = (@post.water/3)+(@post.rice/3)+(@post.food)+(@post.can)+(@post.seasonal*2)+(@post.ramen)+(@post.snack*2)+@post.wettissue/10+(@post.spray)+@post.mask+@post.medicine*2+@post.box*2+@post.toilet/5+@post.period/3+@post.wrappingfilm*2+@post.plasticbags*2+@post.alumi*2+@post.plasticgloves*2+@post.toiletpaper+@post.tissue+@post.light*2+@post.battery+@post.tape+@post.waterbag*2
      @post.save
      redirect_to("/posts/#{@post.id}")
      else
        render("posts/edit")
      end
    end
    
    def destroy
      @post = Post.find_by(id: params[:id])
      @post.destroy
      flash[:notice] = "投稿を削除しました"
      redirect_to("/posts/index")
    end

    def checkbox
        @post.check_box = value
        @post.save
      end


    
  end
