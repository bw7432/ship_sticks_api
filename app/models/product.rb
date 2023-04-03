class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :type_of, type: String
  field :length, type: Integer
  field :width, type: Integer
  field :height, type: Integer
  field :weight, type: Integer

end
