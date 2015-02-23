class Genetic < ActiveRecord::Base
  validates :strain, :native_location, :thc_content, presence: true
  validates :strain, uniqueness: true
end
