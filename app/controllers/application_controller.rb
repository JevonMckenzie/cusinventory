class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :authenticate_user!


  def admin_required
    redirect_to('/') if current_user.cmisuser != "YES"
  end

   def clear_session(*args)
    args.each do |session_key|
      session[session_key] = nil
    end
  end

  
end
