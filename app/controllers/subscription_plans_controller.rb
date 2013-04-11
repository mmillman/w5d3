class SubscriptionPlansController < ApplicationController
  def new
    @subscription_plan = SubscriptionPlan.new
    @subscription_plan.newspaper_id = params[:newspaper_id]
  end

  def create
    @subscription_plan = SubscriptionPlan.new(params[:subscription_plan])
    # if params[:newspaper_id]
    #   @subscription_plan.newspaper_id = params[:newspaper_id]
    # end

    if @subscription_plan.save
      redirect_to newspapers_url
    else
      # flash[:error] = "Invalid data"
      render :new
    end
  end

  def show
  end
end
