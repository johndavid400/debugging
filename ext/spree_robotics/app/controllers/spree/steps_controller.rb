class Spree::StepsController < ApplicationController

  def index
    @steps = Spree::Step.all
  end

  def show
    @step = Spree::Step.find(params[:id])
  end

end
