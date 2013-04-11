class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :remember_token, :subscription_plan_ids

  has_many :subscriptions
  has_many :subscription_plans, :through => :subscriptions
end
