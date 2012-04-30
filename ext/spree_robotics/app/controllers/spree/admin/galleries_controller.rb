class Spree::Admin::GalleriesController < Spree::Admin::ResourceController
#  before_filter :remove_image, :only => [:edit]
  #

  def new
    if params[:type] == "article"
      @article = Spree::Article.find(params[:article])
      @gallery = @article.galleries.build
      @gallery.gallery_type = "article"
    elsif params[:type] == "project"
      @project = Spree::Project.find(params[:project])
      @gallery = @project.galleries.build
      @gallery.gallery_type = "project"
    elsif params[:type] == "step"
      @step = Spree::Step.find(params[:step])
      @gallery = @step.galleries.build
      @gallery.gallery_type = "step"
    elsif params[:type] == "tutorial"
      @tutorial = Spree::Tutorial.find(params[:tutorial])
      @gallery = @tutorial.galleries.build
      @gallery.gallery_type = "tutorial"
    else
    end
    @gallery_image = @gallery.images.build
  end

  def edit
    @gallery = Spree::Gallery.find(params[:id])
    @gallery_image = @gallery.images.build
  end

  def create
    @gallery = Spree::Gallery.new(params[:gallery])
    if @gallery.save
      redirect_to edit_admin_gallery_path(@gallery), notice: 'Gallery was successfully created. You may now start adding images.'
    else
      render action: "new"
    end
  end

  def update
    @gallery = Spree::Gallery.find(params[:id])
    if @gallery.update_attributes(params[:gallery])
      redirect_to edit_admin_gallery_path(@gallery), notice: 'Gallery was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @gallery = Spree::Gallery.find(params[:id])
    @gallery.destroy
    redirect_to :back
  end

  def remove_image
    @image = Spree::Image.find(params[:image_id])
    @image.destroy
    redirect_to :back, notice: "Image removed successfully"
  end
end
