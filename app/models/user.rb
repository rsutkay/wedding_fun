class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :username, :length => { :minimum => 6, :maximum => 12 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
