class ApplicationController < ActionController::Base
  def forem_user
    current_user
  end
  helper_method :forem_user

  protect_from_forgery

  def login_required
    redirect_to(spree.new_user_session_path) if current_user.blank?
  end

  def admin_required
    if current_user
      if !current_user.has_role?("admin")
        redirect_to '/'
        flash[:error] = "You must be an Admin to do that!"
      end
    else
      redirect_to "/"
      flash[:error] = "You must be logged in to do that!"
    end
  end

  def current_user_required
    if params["controller"] == "projects"
      object_owner = Spree::Project.find(params[:id]).spree_user_id
    elsif params["controller"] == "articles"
      object_owner = Spree::Article.find(params[:id]).spree_user_id
    end

    if current_user
      unless current_user.id == object_owner
        redirect_to '/'
        flash[:error] = "You must be an Admin to do that!"
      end
    else
      redirect_to "/"
      flash[:error] = "You must be logged in to do that!"
    end
  end

end
