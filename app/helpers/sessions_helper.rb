module SessionsHelper

    def login(admin)
      session[:admin_id] = admin.id
      @current_admin = admin
    end

    def logged_in?
      if current_admin == nil
        redirect_to login_path
      end
    end

    def current_admin
      @current_admin ||= Admin.find_by_id(session[:admin_id])
    end

    def logout
      @current_admin = session[:admin_id] = nil
      flash[:success] = "Successfully logged out."
      redirect_to root_path
    end

end
