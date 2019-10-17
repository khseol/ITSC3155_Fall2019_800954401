class ApplicationRecord < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5 }
  #pressence: true -- Title cannot be empty
  #length {minimum: 5} -- Title must be AT LEAST 5 characters long
end
