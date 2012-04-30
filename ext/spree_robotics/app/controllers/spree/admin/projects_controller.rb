class Spree::Admin::ProjectsController < Spree::Admin::ResourceController
  before_filter :remove_image, :only => [:edit]

  def index
    @projects = Spree::Project.all
  end

  def show
    @project = Spree::Project.find(params[:id])
  end

  def new
    @project = Spree::Project.new
  end

  def edit
    @project = Spree::Project.find(params[:id])
  end

  def create
    @project = Spree::Project.new(params[:project])
    if @project.save
      redirect_to admin_projects_path, notice: 'Project was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @project = Spree::Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to edit_admin_project_path(project), notice: 'Project was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @project = Spree::Project.find(params[:id])
    @project.destroy
    redirect_to admin_projects_path
  end

  def remove_image
    @project = Spree::Project.find(params[:id])
    if @project.remove_image?
      begin
        @project.image.destroy
      rescue
      end
      @project.remove_image = false
      @project.save
    end
  end

end
