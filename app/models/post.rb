class Post < ActiveRecord::Base
	has_attachment :image
	belongs_to     :user
	paginates_per 4
end
#http://ilarge.listal.com/image/768795/968full-amber-heard.jpg