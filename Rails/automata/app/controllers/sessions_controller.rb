class SessionsController <ApplicationController 
    def new 
        redirect_to users_path if logged_in?
    end 
    
    def create 
      user = User.find_by(email: params[:session][:email].downcase)    
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success] = "Bienvenido"
            redirect_to user_path(user)
        else
            flash.now[:danger] = "El correo o la contraseña no son correctos"
            render 'new'
        end 
        
    end 
    
    def destroy 
        session[:user_id] = nil
        flash[:success] = "Se ha cerrado la sesión"
        redirect_to root_path
    end 
end 