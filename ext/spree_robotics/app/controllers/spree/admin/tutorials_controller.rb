class Spree::Admin::TutorialsController < Spree::Admin::ResourceController
  before_filter :remove_image, :only => [:edit]

  def index
    @tutorials = Spree::Tutorial.all
  end

  def show
    @tutorial = Spree::Tutorial.find(params[:id])
  end

  def new
    @tutorial = Spree::Tutorial.new()
  end

  def create
    @tutorial = Spree::Tutorial.new(params[:tutorial])
    if @tutorial.save
      redirect_to admin_tutorials_path
    end
  end

  def edit
    @tutorial = Spree::Tutorial.find(params[:id])
  end

  def update
    @tutorial = Spree::Tutorial.find(params[:id])
    @tutorial.update_attributes(params[:tutorial])
    if @tutorial.save
      redirect_to edit_admin_tutorial_path(@tutorial)
    end
  end

  def destroy
    @tutorial = Spree::Tutorial.find(params[:id])
    @tutorial.destroy
    redirect_to admin_tutorials_path
  end

  def remove_image
    @tutorial = Spree::Tutorial.find(params[:id])
    if @tutorial.remove_image?
      begin
        @tutorial.image.destroy
      rescue
      end
      @tutorial.remove_image = false
      @tutorial.save
    end
  end
end
