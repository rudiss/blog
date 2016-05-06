class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protecao ao usuario , controle de sessao.

  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] #importante  @current_user ||=  varifica se tem usuario ja logado na database

  end

  def logged_in?
    !!current_user #verifica se usuario esta logado
  end

  def require_user # protecao
    if !logged_in?
      flash[:danger] = "Você precisa estar logado para realizar essa ação!"
      redirect_to root_path
    end
  end
end
