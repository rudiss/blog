class SessionsController <ApplicationController


  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Bem-vindo ao blog #{user.username}!" #tirar o @ para pegar o nome do usuario
      redirect_to user_path(user)
    else
      flash.now[:danger]= "Erro ao tentar logar!"
      render 'new'
    end
  end

  def destroy
    session[:user_id]= nil
    flash[:success] = "Usuário desconectado com sucesso!"
    redirect_to root_path
  end
end