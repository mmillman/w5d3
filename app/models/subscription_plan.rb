class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :newspaper_id, :daily, :price

  validates :newspaper, :price, :presence => true
  validates_inclusion_of :daily, :in => [true, false]

  belongs_to :newspaper, :inverse_of => :subscription_plans
  has_many :subscriptions
  # has_many :users, :through => :subscriptions

  def daily?
    daily
  end

  def weekly?
    not daily
  end

  def frequency_type
    daily? ? "Daily" : "Weekly"
  end
end
