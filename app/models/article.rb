class Article < ActiveRecord::Base
	acts_as_commentable
	view = 0
	validates :body, presence: true, allow_blank: false
	validates :title, presence: true, allow_blank: false
	
	has_many :comments
	def self.search(search)
		if search
			where(['title LIKE  ?', "%#{search}%"])
		else
			where('1=1')
		end
	end		
end
