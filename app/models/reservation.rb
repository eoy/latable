class Reservation < ActiveRecord::Base
	has_paper_trail
	belongs_to :restaurant
	belongs_to :user, :foreign_key => :added_by

	delegate :name, to: :user, prefix: true
end
