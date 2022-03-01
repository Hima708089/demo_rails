class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :leaves, class_name: 'Leave'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name,:last_name, presence: true

  def is_subordinate?
    type == 'Subordinate'
  end

  def is_manager?
    type == 'Manager'
  end
  
end
