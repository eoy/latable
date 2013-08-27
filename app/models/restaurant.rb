class Restaurant < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged
	has_many :reservations
	has_and_belongs_to_many :users
end
