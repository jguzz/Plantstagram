class Plant < ApplicationRecord
	has_many :owns 
	has_many :users, through: :owns

	validates :name, presence: true
	validates :plant_pic_url, presence: true
	validates :name, uniqueness: true
end