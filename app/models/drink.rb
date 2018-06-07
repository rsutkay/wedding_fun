class Drink < ApplicationRecord
  # Direct associations

  belongs_to :category,
             :counter_cache => true

  belongs_to :brand,
             :counter_cache => true

  has_many   :votes,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :votes,
             :source => :user

  # Validations

  validates :brand_id, :presence => true

  validates :category_id, :presence => true

  validates :name, :uniqueness => { :scope => [:brand_id, :category_id] }

  validates :name, :presence => true

end
