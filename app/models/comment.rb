class Comment < ActiveRecord::Base  
  belongs_to :post
  belongs_to :user
  validates :text, presence: true, allow_blank: false
  has_many :comments  
end  