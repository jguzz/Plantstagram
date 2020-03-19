class User < ApplicationRecord
	has_many :owns 
	has_many :plants, through: :owns

	validates :name, presence: true
end