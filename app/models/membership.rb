class Membership < ActiveRecord::Base
   attr_accessible :user_id, :tribe_id
   belongs_to :user
   belongs_to :tribe
   

end
