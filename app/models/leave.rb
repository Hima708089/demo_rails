class Leave < ApplicationRecord
  belongs_to :user, class_name: 'User'
  validates :date,:reason, presence: true
end
