class User < ApplicationRecord
  # Direct associations

  has_many   :votes,
             :dependent => :destroy

  # Indirect associations

  has_many   :drinks,
             :through => :votes,
             :source => :drink

  # Validations

  validates :username, :uniqueness => true

  validates :username, :presence => true

  validates :username, :length => { :minimum => 6, :maximum => 12 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
