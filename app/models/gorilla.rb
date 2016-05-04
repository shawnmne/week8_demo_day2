class Gorilla < ActiveRecord::Base

	validates :name, presence: true, uniqueness: {case_sensitive: false}
	validates :description, presence: true
	validates :anger_level, presence: true

end
