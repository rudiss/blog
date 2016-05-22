class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]
<<<<<<< HEAD
  before_action :require_user, except: [:idex, :show] #antes de começar  requer um usuario
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
=======

  def index
    @articles = Article.all
>>>>>>> 491a24b1fe80297020f4ff1c15f01387fb7f2b88
  end

  def new
    @article = Article.new
  end

  def edit

  end

  def create
    @article = Article.new(article_params)
<<<<<<< HEAD
    @article.user = current_user
    if @article.save
      flash[:success] = "Publicação foi criada com sucesso!"
=======
    if @article.save
      flash[:success] = "Article was successfully created"
>>>>>>> 491a24b1fe80297020f4ff1c15f01387fb7f2b88
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
<<<<<<< HEAD
      flash[:success] = "Publicação foi editada com sucesso!"
=======
      flash[:success] = "Article was successfully updated"
>>>>>>> 491a24b1fe80297020f4ff1c15f01387fb7f2b88
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def show

  end

  def destroy

    @article.destroy
<<<<<<< HEAD
    flash[:danger] = "Publicação foi deletada com sucesso"
=======
    flash[:danger] = "Article was successfully deleted"
>>>>>>> 491a24b1fe80297020f4ff1c15f01387fb7f2b88
    redirect_to articles_path #pasta articles
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)

  end
<<<<<<< HEAD

  def require_same_user
    if current_user != @article.user and !current_user.admin?
      flash[:danger] = "Você so pode editar ou delatar suas próprias publicações"
      redirect_to root_path
    end
  end
=======
>>>>>>> 491a24b1fe80297020f4ff1c15f01387fb7f2b88
end