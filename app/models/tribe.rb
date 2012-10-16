class Tribe < ActiveRecord::Base
  attr_accessible :content, :user_id, :name
  
  has_many :memberships
  has_many :users, :through => :memberships
  
  def feed
    Post.scoped(:joins => {:user => :memberships}, :conditions => { :memberships => { :tribe_id => id } })
  end
    
end
