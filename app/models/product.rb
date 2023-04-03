class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :type_of, type: String
  field :length, type: Integer
  field :width, type: Integer
  field :height, type: Integer
  field :weight, type: Integer

  validates :name, presence: true
  validates :type_of, presence: true
  validates :length, presence: true
  validates :width, presence: true
  validates :height, presence: true
  validates :weight, presence: true

end
