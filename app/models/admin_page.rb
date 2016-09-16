class AdminPage < ApplicationRecord
  belongs_to :subjects
	validates :headder, presence: true
	validates :headder, length: { maximum: 50 }
	validates :content, presence: true

end
