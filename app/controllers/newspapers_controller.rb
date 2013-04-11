class NewspapersController < ApplicationController
  def index
    @newspapers = Newspaper.all
  end

  def new
    @newspaper = Newspaper.new
    3.times { @newspaper.subscription_plans.build }
  end

  def create
    @newspaper = Newspaper.new(params[:newspaper]) params[:newspaper][:subscription_plans_attributes]

    if @newspaper.save
      redirect_to @newspaper
    else
      render :new
    end
  end

  def show
    @newspaper = Newspaper.find(params[:id])
  end


end
