class Spree::Admin::StepsController < Spree::Admin::ResourceController
  before_filter :remove_image, :only => [:edit]

  def index
    @steps = Spree::Step.all
  end

  def show
    @step = Spree::Step.find(params[:id])
  end

  def new
    @tutorial = Spree::Tutorial.find(params[:tutorial])
    @step = @tutorial.steps.build
  end

  def create
    @step = Spree::Step.new(params[:step])
    if @step.save
      @tutorial = @step.tutorial
      @step.step_number = "Step " + "#{@tutorial.steps.count}"
      @step.save
      redirect_to edit_admin_tutorial_path(@tutorial)
    end
  end

  def edit
    @step = Spree::Step.find(params[:id])
    @tutorial = @step.tutorial
  end

  def update
    @step = Spree::Step.find(params[:id])
    @step.update_attributes(params[:step])
    redirect_to edit_admin_step_path(@step)
  end

  def destroy
    @step = Spree::Step.find(params[:id])
    @step.destroy
    redirect_to admin_tutorials_path
  end

  def remove_image
    @step = Spree::Step.find(params[:id])
    if @step.remove_image?
      begin
        @step.image.destroy
      rescue
      end
      @step.remove_image = false
      @step.save
    end
  end

end
