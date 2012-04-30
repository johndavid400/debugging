class Spree::ProjectsController < ApplicationController

  def index
    @projects = Spree::Project.all
  end

  def show
    @project = Spree::Project.find(params[:id])
  end

  def search_projects
    @projects = Spree::Project.all.select{|p| p.category == params[:category]}
    render "index"
  end

end
