class AdminPage < ApplicationRecord
	validates :headder, presence: true
	validates :headder, length: { maximum: 50 }
	validates :content, presence: true

end
