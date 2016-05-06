class PagesController <ApplicationController
  def home
      redirect_to articles_path if logged_in? # se tiver logado vai redirecionar
  end

  def about

  end

end