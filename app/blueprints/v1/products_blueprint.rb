module V1
  class ProductsBlueprint < Blueprinter::Base
    identifier :id

    fields :id, :name, :type_of, :length, :width, :height, :weight

  end
end