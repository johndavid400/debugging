class Spree::TutorialsController < ApplicationController

  def index
    @tutorials = Spree::Tutorial.all
  end

  def show
    @tutorial = Spree::Tutorial.find(params[:id])
  end

end
