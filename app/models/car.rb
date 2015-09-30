class Car < ActiveRecord::Base

  belongs_to :user, foreign_key: "user_id"
  self.inheritance_column = nil

  scope :by_license, ->(license_number) { where('license = ?', license_number) }
end
