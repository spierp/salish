class Post < ActiveRecord::Base
  attr_accessible :content, :image
  belongs_to :user
  mount_uploader :image, ImageUploader
  
  validates :user_id, presence: true
  validates :content, length: { maximum: 1000 }
  
  default_scope order: 'posts.created_at DESC'
end
