class Tag < ApplicationRecord
	has_many :textbooks

    validates :name, presence: true
end
