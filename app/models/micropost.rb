class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :likes
  has_many :user_name, through: :likes, class_name: 'User', source: :user

end
