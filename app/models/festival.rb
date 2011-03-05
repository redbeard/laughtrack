class Festival < ActiveRecord::Base
  has_many :shows
  
  validates :name,      :presence => true
  validates :year,      :presence => true
  validates :starts_on, :presence => true
  validates :ends_on,   :presence => true
  
  scope :latest, order('ends_on DESC')
end
